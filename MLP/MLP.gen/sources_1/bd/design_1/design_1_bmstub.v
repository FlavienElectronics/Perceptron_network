// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  CLK,
  Output_Value,
  RST,
  Enable,
  Valid,
  Input_Value
);

  (* X_INTERFACE_IGNORE = "true" *)
  input CLK;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]Output_Value;
  (* X_INTERFACE_IGNORE = "true" *)
  input RST;
  (* X_INTERFACE_IGNORE = "true" *)
  input Enable;
  (* X_INTERFACE_IGNORE = "true" *)
  output Valid;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]Input_Value;

  // stub module has no contents

endmodule
