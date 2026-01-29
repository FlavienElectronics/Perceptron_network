//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Thu Jan 29 14:30:42 2026
//Host        : fixe_flavien running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
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

  wire CLK;
  wire Enable;
  wire [31:0]Input_Value;
  wire [31:0]Output_Value;
  wire RST;
  wire Valid;

  design_1_Perceptron_BRAM_0_0 Perceptron_BRAM_0
       (.Clock(CLK),
        .Enable(Enable),
        .Input_Value(Input_Value),
        .Output_Value(Output_Value),
        .Reset(RST),
        .Valid(Valid),
        .w_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule
