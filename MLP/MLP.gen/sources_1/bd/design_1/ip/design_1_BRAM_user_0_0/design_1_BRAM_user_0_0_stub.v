// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Jan 29 13:31:33 2026
// Host        : fixe_flavien running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/flavi/Desktop/Perceptron_network/MLP/MLP.gen/sources_1/bd/design_1/ip/design_1_BRAM_user_0_0/design_1_BRAM_user_0_0_stub.v
// Design      : design_1_BRAM_user_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_BRAM_user_0_0,BRAM_user,{}" *) (* CORE_GENERATION_INFO = "design_1_BRAM_user_0_0,BRAM_user,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BRAM_user,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,w0=0x30000000,w1=0x10000000,w2=0xA0000000,w3=0x40000000,w4=0xBE000000,w5=0xD1EB851E,w6=0x3BD70A3D}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "BRAM_user,Vivado 2025.2" *) 
module design_1_BRAM_user_0_0(addr, CLK, data_out)
/* synthesis syn_black_box black_box_pad_pin="addr[7:0],data_out[31:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input [7:0]addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK /* synthesis syn_isclock = 1 */;
  output [31:0]data_out;
endmodule
