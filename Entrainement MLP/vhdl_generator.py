import numpy as np

def convertion_float_hex32(valeur_float, size_integral=2, dead_bit=0):
    try:
        valeur_float = float(valeur_float)
    except ValueError:
        return "00000000"

    size_word = 32
    size_integral = int(size_integral)
    dead_bit = int(dead_bit)
    size_decimal = size_word - size_integral - dead_bit - 1
    max_value_integral = 0
    
    # Calcul de la valeur initiale (bit de signe)
    if valeur_float < 0:
        integral = int(valeur_float)
        decimal = - (valeur_float - integral)
        absolute_integral = -integral
        final_value = 1 << (size_word - 1)
    else:
        integral = int(valeur_float)
        decimal = (valeur_float - integral)
        absolute_integral = integral
        final_value = 0

    for i in range(size_integral):
        max_value_integral |= 1 << i
        
    for i in range(size_decimal):
        current_bit = 2**-(i+1)
        if decimal >= current_bit:
            decimal -= current_bit
            final_value |= 0x1 << (size_decimal-1 - i)

    final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)
    return hex(final_value)[2:].upper().rjust(8, '0')

def write_test_input_coe(npz_path, input_name="test_input", integral=2):
    data = np.load(npz_path)
    input_data = data["input"]
    n_samples, n_features = input_data.shape
    
    if n_samples > 1: 
        raise ValueError("Seul un échantillon unique est supporté pour l'export COE.")

    coe_filename = f"{input_name}.coe"
    with open(coe_filename, "w") as f:
        f.write("memory_initialization_radix = 16;\n") # On passe en base 16 pour l'hexa
        f.write("memory_initialization_vector =\n")
        
        hex_values = []
        for feature_idx in range(n_features):
            val = input_data[0, feature_idx]
            # Utilisation de TA fonction
            hex_values.append(convertion_float_hex32(val, size_integral=integral))
        
        f.write(", ".join(hex_values) + ";\n")
    print(f"[OK] COE généré : {coe_filename}")

def write_layer_weights_mem(npz_path, layer_name="test", integral=2, test_input_path=None):
    entity_name = f"{layer_name}_weights"
    data = np.load(npz_path)
    weights = data['W'] # (N_neurons, N_inputs)
    n_neurons, n_inputs = weights.shape
    addr_width = int(np.ceil(np.log2(n_inputs)))
    data_width = 32

    file_lines = []
    file_lines.append(f"-- VHDL Memory pour : {entity_name}")
    file_lines.append(f"-- Format: Signe-Magnitude Q{integral}.{31-integral}")
    file_lines.append("library ieee;")
    file_lines.append("use ieee.std_logic_1164.all;")
    file_lines.append("use ieee.numeric_std.all;")
    file_lines.append("")

    file_lines.append(f"entity {entity_name} is")
    file_lines.append("    port(")
    file_lines.append("        clk   : in  std_logic;")
    file_lines.append(f"        addr  : in  std_logic_vector({addr_width-1} downto 0);")
    file_lines.append(f"        dout  : out std_logic_vector({data_width*n_neurons}-1 downto 0)")
    file_lines.append("    );")
    file_lines.append(f"end {entity_name};")
    file_lines.append("")

    file_lines.append(f"architecture rtl of {entity_name} is")
    file_lines.append(f"    type weight_array is array (0 to {n_inputs-1}) of std_logic_vector(31 downto 0);")

    # Génération des constantes de poids
    for neuron_idx in range(n_neurons):
        file_lines.append(f"    constant weights_n{neuron_idx} : weight_array := (")
        
        hex_strings = []
        for input_idx in range(n_inputs):
            w_val = weights[neuron_idx, input_idx]
            # Utilisation de TA fonction
            hex_strings.append(f"x\"{convertion_float_hex32(w_val, size_integral=integral)}\"")
        
        # On regroupe par lignes de 8 pour la lisibilité
        for i in range(0, len(hex_strings), 8):
            chunk = ", ".join(hex_strings[i:i+8])
            if i + 8 < len(hex_strings):
                file_lines.append(f"        {chunk},")
            else:
                file_lines.append(f"        {chunk}")
        
        file_lines.append("    );")
        file_lines.append("")

    file_lines.append("begin")
    file_lines.append("")

    # Processus de lecture
    for neuron_idx in range(n_neurons):
        file_lines.append(f"    read_n{neuron_idx} : process(clk) is")
        file_lines.append("    begin")
        file_lines.append("        if rising_edge(clk) then")
        file_lines.append(f"            dout({(neuron_idx+1)*32-1} downto {neuron_idx*32}) <= weights_n{neuron_idx}(to_integer(unsigned(addr)));")
        file_lines.append("        end if;")
        file_lines.append(f"    end process read_n{neuron_idx};")
        file_lines.append("")

    file_lines.append("end rtl;")

    vhd_file_path = f"{entity_name}.vhd"
    with open(vhd_file_path, "w") as f:
        f.write("\n".join(file_lines))
    print(f"[OK] VHDL généré : {vhd_file_path}")

# Exemple d'appel
write_layer_weights_mem("mnist_lone_layer_weights.npz", layer_name="L1", integral=2)
write_test_input_coe("mnist_sample_input.npz", integral=2)