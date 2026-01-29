import numpy as np
from quantization_functions import *


def write_test_input_coe(npz_path, input_name="input", data_width=32, data_encoding="fixed_point", integral=2):
    data = np.load(npz_path)
    input_data = data["input"]  # Assuming input data is stored under 'input'
    n_samples, n_features = input_data.shape
    if n_samples > 1 : 
        raise ValueError("Only single sample input is supported for COE export.")

    coe_filename = f"{input_name}_test_input.coe"
    with open(coe_filename, "w") as f:
        f.write("memory_initialization_radix = 32;\n")
        memory_line = "memory_initialization_vector ="

        for feature_idx in range(n_features):
            value = input_data[0, feature_idx]
            if data_encoding == "integer":
                int_value = int(np.round(value * (2**(data_width-1) - 1)))
            if data_encoding == "fixed_point":
                int_value = int(np.round(value * (2**(data_width - 1 - integral))))  # Assuming 2 bits for integral part
            else:
                raise ValueError("Unsupported data encoding")
            hex_value = int_to_vhdl_hex(int_value, data_width)
            memory_line += f" {hex_value}"
        f.write(memory_line + ";\n")
    print(f"[OK] Test input COE exported to {coe_filename}")

def write_layer_weights_mem(npz_path, layer_name="L1", data_width=8, data_encoding="integer", test_value=1, test_input_path=None, integral=2):
    entity_name = f"{layer_name}_weights"
    file_lines = []

    # --------- LOAD WEIGHTS ---------
    data = np.load(npz_path)
    weights = data['W'] 
    if weights.max() > 1 or weights.min() < -1:
        raise ValueError("Weights should be normalized between -1 and 1 for fixed-point representation.")
    n_neurons, n_inputs = weights.shape
    addr_width = int(np.ceil(np.log2(n_inputs)))

    # compute the test value 
    if data_encoding == "integer":
        conversion_ratio = (2**(data_width-1))-1
        # Convert weights
        converted_weights = (weights.copy() * conversion_ratio).astype(np.int8)
        test_value_converted = int((test_value * conversion_ratio))
    # ADD FIXED POINT HERE 
    elif data_encoding == "fixed_point":
        conversion_ratio = (2**(data_width - integral -1))
        converted_weights = (weights.copy() * conversion_ratio).astype(np.int32)
        test_value_converted = int((test_value * conversion_ratio))
    else:
        raise ValueError("Unsupported data encoding")
    
    test_result = np.zeros((n_neurons,), dtype=np.int32)
    # If a real data is provided for testing, load it
    if test_input_path is not None:
        test_results_from_input_file = np.zeros((n_neurons,), dtype=np.int32)
        test_input_data = np.load(test_input_path)
        test_hex_result = []
        test_input = test_input_data["input"]
        if data_encoding == "integer" or data_encoding == "fixed_point":
            test_input_converted = np.round(test_input[0, :] * conversion_ratio).astype(np.int32)
            print(f"Test input converted: {test_input_converted}, type: {type(test_input_converted)}")
        else:
            raise ValueError("Unsupported data encoding")
    hex_test_result = []

    # COmpute MAC for test values 
    for neuron_idx in range(n_neurons):
        test_result[neuron_idx] = (np.sum(converted_weights[neuron_idx, :]) * test_value_converted).astype(np.int32)
        if test_input_path is not None:
            if data_encoding == "integer" or data_encoding == "fixed_point":
                test_results_from_input_file[neuron_idx] = (np.sum((test_input_converted)*(converted_weights[neuron_idx, :]))).astype(np.int32)
                val = (test_results_from_input_file[neuron_idx])
                print(val)

                test_hex_result.append(int_to_vhdl_hex(int(test_results_from_input_file[neuron_idx]), data_width*2))

                hex_val = int_to_vhdl_hex(int(test_result[neuron_idx]), data_width*2)

                hex_test_result.append(f"{hex_val}")
                print(f"hex_test_result: {hex_test_result}")

            else : 
                raise ValueError("Unsupported data encoding")

    # --------- WRITE HEADER ---------
    file_lines.append(f"-- VHDL Memory Module for Layer Weights: {entity_name}")
    file_lines.append(f"-- Number of Neurons: {n_neurons}")
    file_lines.append(f"-- Number of Inputs per Neuron: {n_inputs}")
    file_lines.append(f"-- Data Width: {data_width} bits")
    file_lines.append(f"-- Address Width: {addr_width} bits")
    file_lines.append(f"-- Expected Data Encoding: {data_encoding}")
    file_lines.append(f"-- Res for 0x{int_to_vhdl_hex(test_value_converted, data_width)} : {hex_test_result}")
    if test_input_path is not None:
        file_lines.append(f"-- Res from input file {test_input_path} with label {test_input_data['label']}: 0x{test_hex_result}")
    file_lines.append("library ieee;")
    file_lines.append("use ieee.std_logic_1164.all;")
    file_lines.append("use ieee.numeric_std.all;")
    file_lines.append("")

    # --------- ENTITY DECLARATION ---------
    file_lines.append(f"entity {entity_name} is")
    file_lines.append("    port(")
    file_lines.append("        clk   : in  std_logic;")
    file_lines.append(f"        addr  : in  std_logic_vector({addr_width-1} downto 0); -- Same addr for all neurons within a layer")
    file_lines.append(f"        dout  : out std_logic_vector({data_width}*{n_neurons}-1 downto 0) -- DATA_WIDTH * N_NEURONS -> {data_width*n_neurons} bits")
    file_lines.append("    );")
    file_lines.append(f"end {entity_name};")
    file_lines.append("")


    # --------- ARCHITECTURE DECLARATION ---------
    file_lines.append(f"architecture rtl of {entity_name} is")
    file_lines.append(f"    constant DATA_WIDTH : integer := {data_width};")
    # file_lines.append(f"    constant N_NEURONS : integer := {n_neurons};")
    file_lines.append(f"    constant N_INPUTS  : integer := {n_inputs};")
    # file_lines.append(f"    constant ADDR_WIDTH : integer := {addr_width}; -- log2(N_INPUTS) -> {addr_width} bits")
    file_lines.append(f"   type weight_array is array (0 to N_INPUTS-1) of std_logic_vector(DATA_WIDTH-1 downto 0);")

    # --------- WEIGHTS DEFINITION ---------
    for neuron_idx in range(n_neurons):
        file_lines.append(f"    constant weights_n{neuron_idx} : weight_array := (")
        weight_line = ""
        hex_weights = np.zeros((n_inputs,), dtype=np.int32)
        comment_line = ""
        for input_idx in range(n_inputs):
            weight_value = weights[neuron_idx, input_idx]
            if data_encoding == "integer" or data_encoding == "fixed_point":
                weight_value_converted = converted_weights[neuron_idx, input_idx]
                # hex_val = int_to_vhdl_hex(int(weight_value_converted.astype(np.int32)), data_width)
                hex_weights[input_idx] = weight_value_converted.astype(np.int32)
                hex_val = convertion_float_hex32(weight_value, integral)
            else:
                raise ValueError("Unsupported data encoding")
            comma = "," if input_idx < n_inputs - 1 else ""
            weight_line += f" x\"{hex_val}\"{comma}"
            comment_line += f"{weight_value:2f}, "
        
        file_lines.append(f"    {weight_line}")
        file_lines.append(f"--  {comment_line[:-2]}")  # Remove last comma and space
        file_lines.append(f"--  Sum of weights (converted): {int_to_vhdl_hex(int(np.sum(hex_weights)), data_width*2)}")
        file_lines.append("    );")
        file_lines.append("")
    
    # --------- ATTRIBUTES FOR BRAM ---------
    file_lines.append("    attribute rom_style : string;")
    for neuron_idx in range(n_neurons):
        file_lines.append(f"    attribute rom_style of weights_n{neuron_idx} : constant is \"block\";")
    file_lines.append("")
    file_lines.append("begin")
    file_lines.append("")

    # ---------- READ PROCESSES ---------
    for neuron_idx in range(n_neurons):
        file_lines.append(f"    read_n{neuron_idx} : process(clk) is")
        file_lines.append("    begin")
        file_lines.append("        if rising_edge(clk) then")
        file_lines.append(f"            dout(({neuron_idx+1}*DATA_WIDTH-1) downto ({neuron_idx}*DATA_WIDTH)) <= weights_n{neuron_idx}(to_integer(unsigned(addr)));")
        file_lines.append("        end if;")
        file_lines.append(f"    end process read_n{neuron_idx};")
        file_lines.append("")
    file_lines.append("end rtl;")

    # --------- WRITE TO FILE ---------
    vhd_file_path = f"{entity_name}.vhd"
    with open(vhd_file_path, "w") as vhd_file:
        vhd_file.write("\n".join(file_lines))
    print(f"VHDL file written to: {vhd_file_path}")

write_layer_weights_mem(r"mnist_lone_layer_weights.npz", layer_name="test", data_width=32, data_encoding="fixed_point", integral=2, test_value=0.0625, test_input_path="mnist_sample_input.npz")
write_test_input_coe("mnist_sample_input.npz", input_name="test_input", data_width=32, data_encoding="fixed_point", integral=2)