//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Jan 15 12:10:41 2026
//Host        : insa-21101 running 64-bit Linux Mint 22
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
