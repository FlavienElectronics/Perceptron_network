//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Thu Jan 29 14:30:42 2026
//Host        : fixe_flavien running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  design_1 design_1_i
       (.CLK(CLK),
        .Enable(Enable),
        .Input_Value(Input_Value),
        .Output_Value(Output_Value),
        .RST(RST),
        .Valid(Valid));
endmodule
