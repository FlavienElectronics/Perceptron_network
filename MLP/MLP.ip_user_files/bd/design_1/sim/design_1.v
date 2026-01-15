//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Jan 15 11:22:45 2026
//Host        : insa-21101 running 64-bit Linux Mint 22
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK,
    Enable,
    Input_Value,
    Output_Value,
    RST,
    Valid);
  input CLK;
  input Enable;
  input [31:0]Input_Value;
  output [31:0]Output_Value;
  input RST;
  output Valid;

  wire [31:0]BRAM_user_0_data_out;
  wire CLK;
  wire Enable;
  wire [31:0]Input_Value;
  wire [31:0]Output_Value;
  wire [7:0]Perceptron_BRAM_0_addr;
  wire RST;
  wire Valid;

  design_1_BRAM_user_0_0 BRAM_user_0
       (.CLK(CLK),
        .addr(Perceptron_BRAM_0_addr),
        .data_out(BRAM_user_0_data_out));
  design_1_Perceptron_BRAM_0_0 Perceptron_BRAM_0
       (.Clock(CLK),
        .Enable(Enable),
        .Input_Value(Input_Value),
        .Output_Value(Output_Value),
        .Reset(RST),
        .Valid(Valid),
        .addr(Perceptron_BRAM_0_addr),
        .w_in(BRAM_user_0_data_out));
endmodule
