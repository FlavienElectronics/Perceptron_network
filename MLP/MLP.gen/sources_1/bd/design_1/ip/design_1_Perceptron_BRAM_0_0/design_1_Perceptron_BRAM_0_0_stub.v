// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Jan 29 14:31:31 2026
// Host        : fixe_flavien running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/flavi/Desktop/Perceptron_network/MLP/MLP.gen/sources_1/bd/design_1/ip/design_1_Perceptron_BRAM_0_0/design_1_Perceptron_BRAM_0_0_stub.v
// Design      : design_1_Perceptron_BRAM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_Perceptron_BRAM_0_0,Perceptron_BRAM,{}" *) (* CORE_GENERATION_INFO = "design_1_Perceptron_BRAM_0_0,Perceptron_BRAM,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Perceptron_BRAM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,weight_array_size=10,size_integral_32bit=2}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "Perceptron_BRAM,Vivado 2025.2" *) 
module design_1_Perceptron_BRAM_0_0(Enable, Input_Value, Clock, Reset, w_in, Valid, 
  Output_Value, addr)
/* synthesis syn_black_box black_box_pad_pin="Enable,Input_Value[31:0],Reset,w_in[31:0],Valid,Output_Value[31:0],addr[9:0]" */
/* synthesis syn_force_seq_prim="Clock" */;
  input Enable;
  input [31:0]Input_Value;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clock, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input Clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input [31:0]w_in;
  output Valid;
  output [31:0]Output_Value;
  output [9:0]addr;
endmodule
