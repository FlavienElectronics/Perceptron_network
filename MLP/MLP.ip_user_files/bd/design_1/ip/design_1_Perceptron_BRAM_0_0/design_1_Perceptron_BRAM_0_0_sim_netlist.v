// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Jan 29 13:31:35 2026
// Host        : fixe_flavien running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/flavi/Desktop/Perceptron_network/MLP/MLP.gen/sources_1/bd/design_1/ip/design_1_Perceptron_BRAM_0_0/design_1_Perceptron_BRAM_0_0_sim_netlist.v
// Design      : design_1_Perceptron_BRAM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Perceptron_BRAM_0_0,Perceptron_BRAM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Perceptron_BRAM,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_Perceptron_BRAM_0_0
   (Enable,
    Input_Value,
    Clock,
    Reset,
    w_in,
    Valid,
    Output_Value,
    addr);
  input Enable;
  input [31:0]Input_Value;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clock, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input Clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset;
  input [31:0]w_in;
  output Valid;
  output [31:0]Output_Value;
  output [7:0]addr;

  wire \<const0> ;
  wire Clock;
  wire Enable;
  wire [31:0]Input_Value;
  wire [30:0]\^Output_Value ;
  wire Reset;
  wire Valid;
  wire [2:0]\^addr ;
  wire [31:0]w_in;

  assign Output_Value[31] = \<const0> ;
  assign Output_Value[30:0] = \^Output_Value [30:0];
  assign addr[7] = \<const0> ;
  assign addr[6] = \<const0> ;
  assign addr[5] = \<const0> ;
  assign addr[4] = \<const0> ;
  assign addr[3] = \<const0> ;
  assign addr[2:0] = \^addr [2:0];
  GND GND
       (.G(\<const0> ));
  design_1_Perceptron_BRAM_0_0_Perceptron_BRAM inst
       (.Clock(Clock),
        .Enable(Enable),
        .Input_Value(Input_Value),
        .Output_Value(\^Output_Value ),
        .Reset(Reset),
        .Valid_reg_0(Valid),
        .\index_reg[0]_0 (\^addr [0]),
        .\index_reg[1]_0 (\^addr [1]),
        .\index_reg[2]_0 (\^addr [2]),
        .w_in(w_in));
endmodule

(* ORIG_REF_NAME = "Perceptron_BRAM" *) 
module design_1_Perceptron_BRAM_0_0_Perceptron_BRAM
   (\index_reg[2]_0 ,
    \index_reg[1]_0 ,
    \index_reg[0]_0 ,
    Valid_reg_0,
    Output_Value,
    Clock,
    w_in,
    Input_Value,
    Enable,
    Reset);
  output \index_reg[2]_0 ;
  output \index_reg[1]_0 ;
  output \index_reg[0]_0 ;
  output Valid_reg_0;
  output [30:0]Output_Value;
  input Clock;
  input [31:0]w_in;
  input [31:0]Input_Value;
  input Enable;
  input Reset;

  wire Clock;
  wire Enable;
  wire [31:0]Input_Value;
  wire [30:0]Output_Value;
  wire [31:0]R;
  wire Reset;
  wire Valid_i_1_n_0;
  wire Valid_reg_0;
  wire clock_wait;
  wire clock_wait_i_1_n_0;
  wire [30:0]data1;
  wire eqOp;
  wire eqOp_carry__0_i_1_n_0;
  wire eqOp_carry__0_i_2_n_0;
  wire eqOp_carry__0_i_3_n_0;
  wire eqOp_carry__0_i_4_n_0;
  wire eqOp_carry__0_n_0;
  wire eqOp_carry__0_n_1;
  wire eqOp_carry__0_n_2;
  wire eqOp_carry__0_n_3;
  wire eqOp_carry__1_i_1_n_0;
  wire eqOp_carry__1_i_2_n_0;
  wire eqOp_carry__1_i_3_n_0;
  wire eqOp_carry__1_n_2;
  wire eqOp_carry__1_n_3;
  wire eqOp_carry_i_1_n_0;
  wire eqOp_carry_i_2_n_0;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_i_4_n_0;
  wire eqOp_carry_n_0;
  wire eqOp_carry_n_1;
  wire eqOp_carry_n_2;
  wire eqOp_carry_n_3;
  wire gtOp;
  wire gtOp_carry__0_i_1_n_0;
  wire gtOp_carry__0_i_2_n_0;
  wire gtOp_carry__0_i_3_n_0;
  wire gtOp_carry__0_i_4_n_0;
  wire gtOp_carry__0_i_5_n_0;
  wire gtOp_carry__0_i_6_n_0;
  wire gtOp_carry__0_i_7_n_0;
  wire gtOp_carry__0_i_8_n_0;
  wire gtOp_carry__0_n_0;
  wire gtOp_carry__0_n_1;
  wire gtOp_carry__0_n_2;
  wire gtOp_carry__0_n_3;
  wire gtOp_carry__1_i_1_n_0;
  wire gtOp_carry__1_i_2_n_0;
  wire gtOp_carry__1_i_3_n_0;
  wire gtOp_carry__1_i_4_n_0;
  wire gtOp_carry__1_i_5_n_0;
  wire gtOp_carry__1_i_6_n_0;
  wire gtOp_carry__1_i_7_n_0;
  wire gtOp_carry__1_i_8_n_0;
  wire gtOp_carry__1_n_0;
  wire gtOp_carry__1_n_1;
  wire gtOp_carry__1_n_2;
  wire gtOp_carry__1_n_3;
  wire gtOp_carry__2_i_1_n_0;
  wire gtOp_carry__2_i_2_n_0;
  wire gtOp_carry__2_i_3_n_0;
  wire gtOp_carry__2_i_4_n_0;
  wire gtOp_carry__2_i_5_n_0;
  wire gtOp_carry__2_i_6_n_0;
  wire gtOp_carry__2_i_7_n_0;
  wire gtOp_carry__2_i_8_n_0;
  wire gtOp_carry__2_n_1;
  wire gtOp_carry__2_n_2;
  wire gtOp_carry__2_n_3;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_2_n_0 ;
  wire \index_reg[0]_0 ;
  wire \index_reg[1]_0 ;
  wire \index_reg[2]_0 ;
  wire ltOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_4;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__3_n_4;
  wire minusOp_carry__3_n_5;
  wire minusOp_carry__3_n_6;
  wire minusOp_carry__3_n_7;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__4_n_4;
  wire minusOp_carry__4_n_5;
  wire minusOp_carry__4_n_6;
  wire minusOp_carry__4_n_7;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_i_4_n_0;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__5_n_4;
  wire minusOp_carry__5_n_5;
  wire minusOp_carry__5_n_6;
  wire minusOp_carry__5_n_7;
  wire minusOp_carry__6_i_1_n_0;
  wire minusOp_carry__6_i_2_n_0;
  wire minusOp_carry__6_i_3_n_0;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry__6_n_5;
  wire minusOp_carry__6_n_6;
  wire minusOp_carry__6_n_7;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__0_n_4 ;
  wire \minusOp_inferred__0/i__carry__0_n_5 ;
  wire \minusOp_inferred__0/i__carry__0_n_6 ;
  wire \minusOp_inferred__0/i__carry__0_n_7 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_4 ;
  wire \minusOp_inferred__0/i__carry__1_n_5 ;
  wire \minusOp_inferred__0/i__carry__1_n_6 ;
  wire \minusOp_inferred__0/i__carry__1_n_7 ;
  wire \minusOp_inferred__0/i__carry__2_n_0 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_4 ;
  wire \minusOp_inferred__0/i__carry__2_n_5 ;
  wire \minusOp_inferred__0/i__carry__2_n_6 ;
  wire \minusOp_inferred__0/i__carry__2_n_7 ;
  wire \minusOp_inferred__0/i__carry__3_n_0 ;
  wire \minusOp_inferred__0/i__carry__3_n_1 ;
  wire \minusOp_inferred__0/i__carry__3_n_2 ;
  wire \minusOp_inferred__0/i__carry__3_n_3 ;
  wire \minusOp_inferred__0/i__carry__3_n_4 ;
  wire \minusOp_inferred__0/i__carry__3_n_5 ;
  wire \minusOp_inferred__0/i__carry__3_n_6 ;
  wire \minusOp_inferred__0/i__carry__3_n_7 ;
  wire \minusOp_inferred__0/i__carry__4_n_0 ;
  wire \minusOp_inferred__0/i__carry__4_n_1 ;
  wire \minusOp_inferred__0/i__carry__4_n_2 ;
  wire \minusOp_inferred__0/i__carry__4_n_3 ;
  wire \minusOp_inferred__0/i__carry__4_n_4 ;
  wire \minusOp_inferred__0/i__carry__4_n_5 ;
  wire \minusOp_inferred__0/i__carry__4_n_6 ;
  wire \minusOp_inferred__0/i__carry__4_n_7 ;
  wire \minusOp_inferred__0/i__carry__5_n_0 ;
  wire \minusOp_inferred__0/i__carry__5_n_1 ;
  wire \minusOp_inferred__0/i__carry__5_n_2 ;
  wire \minusOp_inferred__0/i__carry__5_n_3 ;
  wire \minusOp_inferred__0/i__carry__5_n_4 ;
  wire \minusOp_inferred__0/i__carry__5_n_5 ;
  wire \minusOp_inferred__0/i__carry__5_n_6 ;
  wire \minusOp_inferred__0/i__carry__5_n_7 ;
  wire \minusOp_inferred__0/i__carry__6_n_2 ;
  wire \minusOp_inferred__0/i__carry__6_n_3 ;
  wire \minusOp_inferred__0/i__carry__6_n_5 ;
  wire \minusOp_inferred__0/i__carry__6_n_6 ;
  wire \minusOp_inferred__0/i__carry__6_n_7 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_4 ;
  wire \minusOp_inferred__0/i__carry_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_6 ;
  wire \minusOp_inferred__0/i__carry_n_7 ;
  wire mul_sign;
  wire multOp__0_n_100;
  wire multOp__0_n_101;
  wire multOp__0_n_102;
  wire multOp__0_n_103;
  wire multOp__0_n_104;
  wire multOp__0_n_105;
  wire multOp__0_n_58;
  wire multOp__0_n_59;
  wire multOp__0_n_60;
  wire multOp__0_n_61;
  wire multOp__0_n_62;
  wire multOp__0_n_63;
  wire multOp__0_n_64;
  wire multOp__0_n_65;
  wire multOp__0_n_66;
  wire multOp__0_n_67;
  wire multOp__0_n_68;
  wire multOp__0_n_69;
  wire multOp__0_n_70;
  wire multOp__0_n_71;
  wire multOp__0_n_72;
  wire multOp__0_n_73;
  wire multOp__0_n_74;
  wire multOp__0_n_75;
  wire multOp__0_n_76;
  wire multOp__0_n_77;
  wire multOp__0_n_78;
  wire multOp__0_n_79;
  wire multOp__0_n_80;
  wire multOp__0_n_81;
  wire multOp__0_n_82;
  wire multOp__0_n_83;
  wire multOp__0_n_84;
  wire multOp__0_n_85;
  wire multOp__0_n_86;
  wire multOp__0_n_87;
  wire multOp__0_n_88;
  wire multOp__0_n_89;
  wire multOp__0_n_90;
  wire multOp__0_n_91;
  wire multOp__0_n_92;
  wire multOp__0_n_93;
  wire multOp__0_n_94;
  wire multOp__0_n_95;
  wire multOp__0_n_96;
  wire multOp__0_n_97;
  wire multOp__0_n_98;
  wire multOp__0_n_99;
  wire multOp__1_n_100;
  wire multOp__1_n_101;
  wire multOp__1_n_102;
  wire multOp__1_n_103;
  wire multOp__1_n_104;
  wire multOp__1_n_105;
  wire multOp__1_n_106;
  wire multOp__1_n_107;
  wire multOp__1_n_108;
  wire multOp__1_n_109;
  wire multOp__1_n_110;
  wire multOp__1_n_111;
  wire multOp__1_n_112;
  wire multOp__1_n_113;
  wire multOp__1_n_114;
  wire multOp__1_n_115;
  wire multOp__1_n_116;
  wire multOp__1_n_117;
  wire multOp__1_n_118;
  wire multOp__1_n_119;
  wire multOp__1_n_120;
  wire multOp__1_n_121;
  wire multOp__1_n_122;
  wire multOp__1_n_123;
  wire multOp__1_n_124;
  wire multOp__1_n_125;
  wire multOp__1_n_126;
  wire multOp__1_n_127;
  wire multOp__1_n_128;
  wire multOp__1_n_129;
  wire multOp__1_n_130;
  wire multOp__1_n_131;
  wire multOp__1_n_132;
  wire multOp__1_n_133;
  wire multOp__1_n_134;
  wire multOp__1_n_135;
  wire multOp__1_n_136;
  wire multOp__1_n_137;
  wire multOp__1_n_138;
  wire multOp__1_n_139;
  wire multOp__1_n_140;
  wire multOp__1_n_141;
  wire multOp__1_n_142;
  wire multOp__1_n_143;
  wire multOp__1_n_144;
  wire multOp__1_n_145;
  wire multOp__1_n_146;
  wire multOp__1_n_147;
  wire multOp__1_n_148;
  wire multOp__1_n_149;
  wire multOp__1_n_150;
  wire multOp__1_n_151;
  wire multOp__1_n_152;
  wire multOp__1_n_153;
  wire multOp__1_n_24;
  wire multOp__1_n_25;
  wire multOp__1_n_26;
  wire multOp__1_n_27;
  wire multOp__1_n_28;
  wire multOp__1_n_29;
  wire multOp__1_n_30;
  wire multOp__1_n_31;
  wire multOp__1_n_32;
  wire multOp__1_n_33;
  wire multOp__1_n_34;
  wire multOp__1_n_35;
  wire multOp__1_n_36;
  wire multOp__1_n_37;
  wire multOp__1_n_38;
  wire multOp__1_n_39;
  wire multOp__1_n_40;
  wire multOp__1_n_41;
  wire multOp__1_n_42;
  wire multOp__1_n_43;
  wire multOp__1_n_44;
  wire multOp__1_n_45;
  wire multOp__1_n_46;
  wire multOp__1_n_47;
  wire multOp__1_n_48;
  wire multOp__1_n_49;
  wire multOp__1_n_50;
  wire multOp__1_n_51;
  wire multOp__1_n_52;
  wire multOp__1_n_53;
  wire multOp__1_n_58;
  wire multOp__1_n_59;
  wire multOp__1_n_60;
  wire multOp__1_n_61;
  wire multOp__1_n_62;
  wire multOp__1_n_63;
  wire multOp__1_n_64;
  wire multOp__1_n_65;
  wire multOp__1_n_66;
  wire multOp__1_n_67;
  wire multOp__1_n_68;
  wire multOp__1_n_69;
  wire multOp__1_n_70;
  wire multOp__1_n_71;
  wire multOp__1_n_72;
  wire multOp__1_n_73;
  wire multOp__1_n_74;
  wire multOp__1_n_75;
  wire multOp__1_n_76;
  wire multOp__1_n_77;
  wire multOp__1_n_78;
  wire multOp__1_n_79;
  wire multOp__1_n_80;
  wire multOp__1_n_81;
  wire multOp__1_n_82;
  wire multOp__1_n_83;
  wire multOp__1_n_84;
  wire multOp__1_n_85;
  wire multOp__1_n_86;
  wire multOp__1_n_87;
  wire multOp__1_n_88;
  wire multOp__1_n_89;
  wire multOp__1_n_90;
  wire multOp__1_n_91;
  wire multOp__1_n_92;
  wire multOp__1_n_93;
  wire multOp__1_n_94;
  wire multOp__1_n_95;
  wire multOp__1_n_96;
  wire multOp__1_n_97;
  wire multOp__1_n_98;
  wire multOp__1_n_99;
  wire multOp__2_n_100;
  wire multOp__2_n_101;
  wire multOp__2_n_102;
  wire multOp__2_n_103;
  wire multOp__2_n_104;
  wire multOp__2_n_105;
  wire multOp__2_n_58;
  wire multOp__2_n_59;
  wire multOp__2_n_60;
  wire multOp__2_n_61;
  wire multOp__2_n_62;
  wire multOp__2_n_63;
  wire multOp__2_n_64;
  wire multOp__2_n_65;
  wire multOp__2_n_66;
  wire multOp__2_n_67;
  wire multOp__2_n_68;
  wire multOp__2_n_69;
  wire multOp__2_n_70;
  wire multOp__2_n_71;
  wire multOp__2_n_72;
  wire multOp__2_n_73;
  wire multOp__2_n_74;
  wire multOp__2_n_75;
  wire multOp__2_n_76;
  wire multOp__2_n_77;
  wire multOp__2_n_78;
  wire multOp__2_n_79;
  wire multOp__2_n_80;
  wire multOp__2_n_81;
  wire multOp__2_n_82;
  wire multOp__2_n_83;
  wire multOp__2_n_84;
  wire multOp__2_n_85;
  wire multOp__2_n_86;
  wire multOp__2_n_87;
  wire multOp__2_n_88;
  wire multOp__2_n_89;
  wire multOp__2_n_90;
  wire multOp__2_n_91;
  wire multOp__2_n_92;
  wire multOp__2_n_93;
  wire multOp__2_n_94;
  wire multOp__2_n_95;
  wire multOp__2_n_96;
  wire multOp__2_n_97;
  wire multOp__2_n_98;
  wire multOp__2_n_99;
  wire [59:29]multOp__3;
  wire multOp_n_100;
  wire multOp_n_101;
  wire multOp_n_102;
  wire multOp_n_103;
  wire multOp_n_104;
  wire multOp_n_105;
  wire multOp_n_106;
  wire multOp_n_107;
  wire multOp_n_108;
  wire multOp_n_109;
  wire multOp_n_110;
  wire multOp_n_111;
  wire multOp_n_112;
  wire multOp_n_113;
  wire multOp_n_114;
  wire multOp_n_115;
  wire multOp_n_116;
  wire multOp_n_117;
  wire multOp_n_118;
  wire multOp_n_119;
  wire multOp_n_120;
  wire multOp_n_121;
  wire multOp_n_122;
  wire multOp_n_123;
  wire multOp_n_124;
  wire multOp_n_125;
  wire multOp_n_126;
  wire multOp_n_127;
  wire multOp_n_128;
  wire multOp_n_129;
  wire multOp_n_130;
  wire multOp_n_131;
  wire multOp_n_132;
  wire multOp_n_133;
  wire multOp_n_134;
  wire multOp_n_135;
  wire multOp_n_136;
  wire multOp_n_137;
  wire multOp_n_138;
  wire multOp_n_139;
  wire multOp_n_140;
  wire multOp_n_141;
  wire multOp_n_142;
  wire multOp_n_143;
  wire multOp_n_144;
  wire multOp_n_145;
  wire multOp_n_146;
  wire multOp_n_147;
  wire multOp_n_148;
  wire multOp_n_149;
  wire multOp_n_150;
  wire multOp_n_151;
  wire multOp_n_152;
  wire multOp_n_153;
  wire multOp_n_58;
  wire multOp_n_59;
  wire multOp_n_60;
  wire multOp_n_61;
  wire multOp_n_62;
  wire multOp_n_63;
  wire multOp_n_64;
  wire multOp_n_65;
  wire multOp_n_66;
  wire multOp_n_67;
  wire multOp_n_68;
  wire multOp_n_69;
  wire multOp_n_70;
  wire multOp_n_71;
  wire multOp_n_72;
  wire multOp_n_73;
  wire multOp_n_74;
  wire multOp_n_75;
  wire multOp_n_76;
  wire multOp_n_77;
  wire multOp_n_78;
  wire multOp_n_79;
  wire multOp_n_80;
  wire multOp_n_81;
  wire multOp_n_82;
  wire multOp_n_83;
  wire multOp_n_84;
  wire multOp_n_85;
  wire multOp_n_86;
  wire multOp_n_87;
  wire multOp_n_88;
  wire multOp_n_89;
  wire multOp_n_90;
  wire multOp_n_91;
  wire multOp_n_92;
  wire multOp_n_93;
  wire multOp_n_94;
  wire multOp_n_95;
  wire multOp_n_96;
  wire multOp_n_97;
  wire multOp_n_98;
  wire multOp_n_99;
  wire p_0_in;
  wire \res_mul_reg[31]_i_10_n_0 ;
  wire \res_mul_reg[31]_i_11_n_0 ;
  wire \res_mul_reg[31]_i_12_n_0 ;
  wire \res_mul_reg[31]_i_12_n_1 ;
  wire \res_mul_reg[31]_i_12_n_2 ;
  wire \res_mul_reg[31]_i_12_n_3 ;
  wire \res_mul_reg[31]_i_13_n_0 ;
  wire \res_mul_reg[31]_i_14_n_0 ;
  wire \res_mul_reg[31]_i_15_n_0 ;
  wire \res_mul_reg[31]_i_16_n_0 ;
  wire \res_mul_reg[31]_i_17_n_0 ;
  wire \res_mul_reg[31]_i_18_n_0 ;
  wire \res_mul_reg[31]_i_19_n_0 ;
  wire \res_mul_reg[31]_i_1_n_0 ;
  wire \res_mul_reg[31]_i_1_n_1 ;
  wire \res_mul_reg[31]_i_1_n_2 ;
  wire \res_mul_reg[31]_i_1_n_3 ;
  wire \res_mul_reg[31]_i_2_n_0 ;
  wire \res_mul_reg[31]_i_2_n_1 ;
  wire \res_mul_reg[31]_i_2_n_2 ;
  wire \res_mul_reg[31]_i_2_n_3 ;
  wire \res_mul_reg[31]_i_3_n_0 ;
  wire \res_mul_reg[31]_i_4_n_0 ;
  wire \res_mul_reg[31]_i_5_n_0 ;
  wire \res_mul_reg[31]_i_6_n_0 ;
  wire \res_mul_reg[31]_i_7_n_0 ;
  wire \res_mul_reg[31]_i_7_n_1 ;
  wire \res_mul_reg[31]_i_7_n_2 ;
  wire \res_mul_reg[31]_i_7_n_3 ;
  wire \res_mul_reg[31]_i_8_n_0 ;
  wire \res_mul_reg[31]_i_9_n_0 ;
  wire \res_mul_reg[35]_i_1_n_0 ;
  wire \res_mul_reg[35]_i_1_n_1 ;
  wire \res_mul_reg[35]_i_1_n_2 ;
  wire \res_mul_reg[35]_i_1_n_3 ;
  wire \res_mul_reg[35]_i_2_n_0 ;
  wire \res_mul_reg[35]_i_3_n_0 ;
  wire \res_mul_reg[35]_i_4_n_0 ;
  wire \res_mul_reg[35]_i_5_n_0 ;
  wire \res_mul_reg[39]_i_1_n_0 ;
  wire \res_mul_reg[39]_i_1_n_1 ;
  wire \res_mul_reg[39]_i_1_n_2 ;
  wire \res_mul_reg[39]_i_1_n_3 ;
  wire \res_mul_reg[39]_i_2_n_0 ;
  wire \res_mul_reg[39]_i_3_n_0 ;
  wire \res_mul_reg[39]_i_4_n_0 ;
  wire \res_mul_reg[39]_i_5_n_0 ;
  wire \res_mul_reg[43]_i_1_n_0 ;
  wire \res_mul_reg[43]_i_1_n_1 ;
  wire \res_mul_reg[43]_i_1_n_2 ;
  wire \res_mul_reg[43]_i_1_n_3 ;
  wire \res_mul_reg[43]_i_2_n_0 ;
  wire \res_mul_reg[43]_i_3_n_0 ;
  wire \res_mul_reg[43]_i_4_n_0 ;
  wire \res_mul_reg[43]_i_5_n_0 ;
  wire \res_mul_reg[47]_i_1_n_0 ;
  wire \res_mul_reg[47]_i_1_n_1 ;
  wire \res_mul_reg[47]_i_1_n_2 ;
  wire \res_mul_reg[47]_i_1_n_3 ;
  wire \res_mul_reg[47]_i_2_n_0 ;
  wire \res_mul_reg[47]_i_3_n_0 ;
  wire \res_mul_reg[47]_i_4_n_0 ;
  wire \res_mul_reg[47]_i_5_n_0 ;
  wire \res_mul_reg[51]_i_1_n_0 ;
  wire \res_mul_reg[51]_i_1_n_1 ;
  wire \res_mul_reg[51]_i_1_n_2 ;
  wire \res_mul_reg[51]_i_1_n_3 ;
  wire \res_mul_reg[51]_i_2_n_0 ;
  wire \res_mul_reg[51]_i_3_n_0 ;
  wire \res_mul_reg[51]_i_4_n_0 ;
  wire \res_mul_reg[51]_i_5_n_0 ;
  wire \res_mul_reg[55]_i_1_n_0 ;
  wire \res_mul_reg[55]_i_1_n_1 ;
  wire \res_mul_reg[55]_i_1_n_2 ;
  wire \res_mul_reg[55]_i_1_n_3 ;
  wire \res_mul_reg[55]_i_2_n_0 ;
  wire \res_mul_reg[55]_i_3_n_0 ;
  wire \res_mul_reg[55]_i_4_n_0 ;
  wire \res_mul_reg[55]_i_5_n_0 ;
  wire \res_mul_reg[59]_i_1_n_1 ;
  wire \res_mul_reg[59]_i_1_n_2 ;
  wire \res_mul_reg[59]_i_1_n_3 ;
  wire \res_mul_reg[59]_i_2_n_0 ;
  wire \res_mul_reg[59]_i_3_n_0 ;
  wire \res_mul_reg[59]_i_4_n_0 ;
  wire \res_mul_reg[59]_i_5_n_0 ;
  wire [0:0]res_sum;
  wire \res_sum[0]_i_1_n_0 ;
  wire \res_sum[0]_i_2_n_0 ;
  wire \res_sum[10]_i_1_n_0 ;
  wire \res_sum[10]_i_2_n_0 ;
  wire \res_sum[11]_i_1_n_0 ;
  wire \res_sum[11]_i_2_n_0 ;
  wire \res_sum[11]_i_4_n_0 ;
  wire \res_sum[11]_i_5_n_0 ;
  wire \res_sum[11]_i_6_n_0 ;
  wire \res_sum[11]_i_7_n_0 ;
  wire \res_sum[12]_i_1_n_0 ;
  wire \res_sum[12]_i_2_n_0 ;
  wire \res_sum[12]_i_4_n_0 ;
  wire \res_sum[12]_i_5_n_0 ;
  wire \res_sum[12]_i_6_n_0 ;
  wire \res_sum[12]_i_7_n_0 ;
  wire \res_sum[13]_i_1_n_0 ;
  wire \res_sum[13]_i_2_n_0 ;
  wire \res_sum[14]_i_1_n_0 ;
  wire \res_sum[14]_i_2_n_0 ;
  wire \res_sum[15]_i_1_n_0 ;
  wire \res_sum[15]_i_2_n_0 ;
  wire \res_sum[16]_i_1_n_0 ;
  wire \res_sum[16]_i_2_n_0 ;
  wire \res_sum[17]_i_1_n_0 ;
  wire \res_sum[17]_i_2_n_0 ;
  wire \res_sum[18]_i_1_n_0 ;
  wire \res_sum[18]_i_2_n_0 ;
  wire \res_sum[18]_i_4_n_0 ;
  wire \res_sum[18]_i_5_n_0 ;
  wire \res_sum[18]_i_6_n_0 ;
  wire \res_sum[18]_i_7_n_0 ;
  wire \res_sum[19]_i_1_n_0 ;
  wire \res_sum[19]_i_2_n_0 ;
  wire \res_sum[1]_i_1_n_0 ;
  wire \res_sum[1]_i_2_n_0 ;
  wire \res_sum[20]_i_1_n_0 ;
  wire \res_sum[20]_i_2_n_0 ;
  wire \res_sum[21]_i_1_n_0 ;
  wire \res_sum[21]_i_2_n_0 ;
  wire \res_sum[22]_i_1_n_0 ;
  wire \res_sum[22]_i_2_n_0 ;
  wire \res_sum[23]_i_1_n_0 ;
  wire \res_sum[23]_i_2_n_0 ;
  wire \res_sum[23]_i_4_n_0 ;
  wire \res_sum[23]_i_5_n_0 ;
  wire \res_sum[23]_i_6_n_0 ;
  wire \res_sum[23]_i_7_n_0 ;
  wire \res_sum[24]_i_1_n_0 ;
  wire \res_sum[24]_i_2_n_0 ;
  wire \res_sum[25]_i_1_n_0 ;
  wire \res_sum[25]_i_2_n_0 ;
  wire \res_sum[26]_i_1_n_0 ;
  wire \res_sum[26]_i_2_n_0 ;
  wire \res_sum[27]_i_1_n_0 ;
  wire \res_sum[27]_i_2_n_0 ;
  wire \res_sum[27]_i_4_n_0 ;
  wire \res_sum[27]_i_5_n_0 ;
  wire \res_sum[27]_i_6_n_0 ;
  wire \res_sum[27]_i_7_n_0 ;
  wire \res_sum[28]_i_1_n_0 ;
  wire \res_sum[28]_i_2_n_0 ;
  wire \res_sum[29]_i_1_n_0 ;
  wire \res_sum[29]_i_2_n_0 ;
  wire \res_sum[29]_i_3_n_0 ;
  wire \res_sum[2]_i_1_n_0 ;
  wire \res_sum[2]_i_2_n_0 ;
  wire \res_sum[2]_i_4_n_0 ;
  wire \res_sum[2]_i_5_n_0 ;
  wire \res_sum[2]_i_6_n_0 ;
  wire \res_sum[2]_i_7_n_0 ;
  wire \res_sum[30]_i_1_n_0 ;
  wire \res_sum[30]_i_2_n_0 ;
  wire \res_sum[30]_i_4_n_0 ;
  wire \res_sum[30]_i_5_n_0 ;
  wire \res_sum[30]_i_6_n_0 ;
  wire \res_sum[31]_i_1_n_0 ;
  wire \res_sum[31]_i_2_n_0 ;
  wire \res_sum[3]_i_1_n_0 ;
  wire \res_sum[3]_i_2_n_0 ;
  wire \res_sum[4]_i_1_n_0 ;
  wire \res_sum[4]_i_2_n_0 ;
  wire \res_sum[5]_i_1_n_0 ;
  wire \res_sum[5]_i_2_n_0 ;
  wire \res_sum[6]_i_1_n_0 ;
  wire \res_sum[6]_i_2_n_0 ;
  wire \res_sum[6]_i_4_n_0 ;
  wire \res_sum[6]_i_5_n_0 ;
  wire \res_sum[6]_i_6_n_0 ;
  wire \res_sum[6]_i_7_n_0 ;
  wire \res_sum[7]_i_1_n_0 ;
  wire \res_sum[7]_i_2_n_0 ;
  wire \res_sum[8]_i_1_n_0 ;
  wire \res_sum[8]_i_2_n_0 ;
  wire \res_sum[9]_i_1_n_0 ;
  wire \res_sum[9]_i_2_n_0 ;
  wire \res_sum_reg[11]_i_3_n_0 ;
  wire \res_sum_reg[11]_i_3_n_1 ;
  wire \res_sum_reg[11]_i_3_n_2 ;
  wire \res_sum_reg[11]_i_3_n_3 ;
  wire \res_sum_reg[12]_i_3_n_0 ;
  wire \res_sum_reg[12]_i_3_n_1 ;
  wire \res_sum_reg[12]_i_3_n_2 ;
  wire \res_sum_reg[12]_i_3_n_3 ;
  wire \res_sum_reg[18]_i_3_n_0 ;
  wire \res_sum_reg[18]_i_3_n_1 ;
  wire \res_sum_reg[18]_i_3_n_2 ;
  wire \res_sum_reg[18]_i_3_n_3 ;
  wire \res_sum_reg[23]_i_3_n_0 ;
  wire \res_sum_reg[23]_i_3_n_1 ;
  wire \res_sum_reg[23]_i_3_n_2 ;
  wire \res_sum_reg[23]_i_3_n_3 ;
  wire \res_sum_reg[27]_i_3_n_0 ;
  wire \res_sum_reg[27]_i_3_n_1 ;
  wire \res_sum_reg[27]_i_3_n_2 ;
  wire \res_sum_reg[27]_i_3_n_3 ;
  wire \res_sum_reg[2]_i_3_n_0 ;
  wire \res_sum_reg[2]_i_3_n_1 ;
  wire \res_sum_reg[2]_i_3_n_2 ;
  wire \res_sum_reg[2]_i_3_n_3 ;
  wire \res_sum_reg[30]_i_3_n_2 ;
  wire \res_sum_reg[30]_i_3_n_3 ;
  wire \res_sum_reg[6]_i_3_n_0 ;
  wire \res_sum_reg[6]_i_3_n_1 ;
  wire \res_sum_reg[6]_i_3_n_2 ;
  wire \res_sum_reg[6]_i_3_n_3 ;
  wire \res_sum_reg_n_0_[0] ;
  wire \res_sum_reg_n_0_[10] ;
  wire \res_sum_reg_n_0_[11] ;
  wire \res_sum_reg_n_0_[12] ;
  wire \res_sum_reg_n_0_[13] ;
  wire \res_sum_reg_n_0_[14] ;
  wire \res_sum_reg_n_0_[15] ;
  wire \res_sum_reg_n_0_[16] ;
  wire \res_sum_reg_n_0_[17] ;
  wire \res_sum_reg_n_0_[18] ;
  wire \res_sum_reg_n_0_[19] ;
  wire \res_sum_reg_n_0_[1] ;
  wire \res_sum_reg_n_0_[20] ;
  wire \res_sum_reg_n_0_[21] ;
  wire \res_sum_reg_n_0_[22] ;
  wire \res_sum_reg_n_0_[23] ;
  wire \res_sum_reg_n_0_[24] ;
  wire \res_sum_reg_n_0_[25] ;
  wire \res_sum_reg_n_0_[26] ;
  wire \res_sum_reg_n_0_[27] ;
  wire \res_sum_reg_n_0_[28] ;
  wire \res_sum_reg_n_0_[29] ;
  wire \res_sum_reg_n_0_[2] ;
  wire \res_sum_reg_n_0_[30] ;
  wire \res_sum_reg_n_0_[3] ;
  wire \res_sum_reg_n_0_[4] ;
  wire \res_sum_reg_n_0_[5] ;
  wire \res_sum_reg_n_0_[6] ;
  wire \res_sum_reg_n_0_[7] ;
  wire \res_sum_reg_n_0_[8] ;
  wire \res_sum_reg_n_0_[9] ;
  wire [31:0]w_in;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_eqOp_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_eqOp_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_eqOp_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire NLW_multOp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp_OVERFLOW_UNCONNECTED;
  wire NLW_multOp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp_CARRYOUT_UNCONNECTED;
  wire NLW_multOp__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp__0_OVERFLOW_UNCONNECTED;
  wire NLW_multOp__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_multOp__0_PCOUT_UNCONNECTED;
  wire NLW_multOp__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp__1_OVERFLOW_UNCONNECTED;
  wire NLW_multOp__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp__1_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_multOp__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp__1_CARRYOUT_UNCONNECTED;
  wire NLW_multOp__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp__2_OVERFLOW_UNCONNECTED;
  wire NLW_multOp__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_multOp__2_PCOUT_UNCONNECTED;
  wire [0:0]\NLW_res_mul_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_res_mul_reg[31]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_res_mul_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_res_mul_reg[31]_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_res_mul_reg[59]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_res_sum_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_res_sum_reg[30]_i_3_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[0]_INST_0 
       (.I0(\res_sum_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(Output_Value[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[10]_INST_0 
       (.I0(\res_sum_reg_n_0_[10] ),
        .I1(p_0_in),
        .O(Output_Value[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[11]_INST_0 
       (.I0(\res_sum_reg_n_0_[11] ),
        .I1(p_0_in),
        .O(Output_Value[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[12]_INST_0 
       (.I0(\res_sum_reg_n_0_[12] ),
        .I1(p_0_in),
        .O(Output_Value[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[13]_INST_0 
       (.I0(\res_sum_reg_n_0_[13] ),
        .I1(p_0_in),
        .O(Output_Value[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[14]_INST_0 
       (.I0(\res_sum_reg_n_0_[14] ),
        .I1(p_0_in),
        .O(Output_Value[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[15]_INST_0 
       (.I0(\res_sum_reg_n_0_[15] ),
        .I1(p_0_in),
        .O(Output_Value[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[16]_INST_0 
       (.I0(\res_sum_reg_n_0_[16] ),
        .I1(p_0_in),
        .O(Output_Value[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[17]_INST_0 
       (.I0(\res_sum_reg_n_0_[17] ),
        .I1(p_0_in),
        .O(Output_Value[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[18]_INST_0 
       (.I0(\res_sum_reg_n_0_[18] ),
        .I1(p_0_in),
        .O(Output_Value[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[19]_INST_0 
       (.I0(\res_sum_reg_n_0_[19] ),
        .I1(p_0_in),
        .O(Output_Value[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[1]_INST_0 
       (.I0(\res_sum_reg_n_0_[1] ),
        .I1(p_0_in),
        .O(Output_Value[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[20]_INST_0 
       (.I0(\res_sum_reg_n_0_[20] ),
        .I1(p_0_in),
        .O(Output_Value[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[21]_INST_0 
       (.I0(\res_sum_reg_n_0_[21] ),
        .I1(p_0_in),
        .O(Output_Value[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[22]_INST_0 
       (.I0(\res_sum_reg_n_0_[22] ),
        .I1(p_0_in),
        .O(Output_Value[22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[23]_INST_0 
       (.I0(\res_sum_reg_n_0_[23] ),
        .I1(p_0_in),
        .O(Output_Value[23]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[24]_INST_0 
       (.I0(\res_sum_reg_n_0_[24] ),
        .I1(p_0_in),
        .O(Output_Value[24]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[25]_INST_0 
       (.I0(\res_sum_reg_n_0_[25] ),
        .I1(p_0_in),
        .O(Output_Value[25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[26]_INST_0 
       (.I0(\res_sum_reg_n_0_[26] ),
        .I1(p_0_in),
        .O(Output_Value[26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[27]_INST_0 
       (.I0(\res_sum_reg_n_0_[27] ),
        .I1(p_0_in),
        .O(Output_Value[27]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[28]_INST_0 
       (.I0(\res_sum_reg_n_0_[28] ),
        .I1(p_0_in),
        .O(Output_Value[28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[29]_INST_0 
       (.I0(\res_sum_reg_n_0_[29] ),
        .I1(p_0_in),
        .O(Output_Value[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[2]_INST_0 
       (.I0(\res_sum_reg_n_0_[2] ),
        .I1(p_0_in),
        .O(Output_Value[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[30]_INST_0 
       (.I0(\res_sum_reg_n_0_[30] ),
        .I1(p_0_in),
        .O(Output_Value[30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[3]_INST_0 
       (.I0(\res_sum_reg_n_0_[3] ),
        .I1(p_0_in),
        .O(Output_Value[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[4]_INST_0 
       (.I0(\res_sum_reg_n_0_[4] ),
        .I1(p_0_in),
        .O(Output_Value[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[5]_INST_0 
       (.I0(\res_sum_reg_n_0_[5] ),
        .I1(p_0_in),
        .O(Output_Value[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[6]_INST_0 
       (.I0(\res_sum_reg_n_0_[6] ),
        .I1(p_0_in),
        .O(Output_Value[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[7]_INST_0 
       (.I0(\res_sum_reg_n_0_[7] ),
        .I1(p_0_in),
        .O(Output_Value[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[8]_INST_0 
       (.I0(\res_sum_reg_n_0_[8] ),
        .I1(p_0_in),
        .O(Output_Value[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Output_Value[9]_INST_0 
       (.I0(\res_sum_reg_n_0_[9] ),
        .I1(p_0_in),
        .O(Output_Value[9]));
  LUT6 #(
    .INIT(64'hF8F0F0F008000000)) 
    Valid_i_1
       (.I0(clock_wait),
        .I1(Enable),
        .I2(Valid_reg_0),
        .I3(\index_reg[1]_0 ),
        .I4(\index_reg[2]_0 ),
        .I5(Reset),
        .O(Valid_i_1_n_0));
  FDRE Valid_reg
       (.C(Clock),
        .CE(1'b1),
        .D(Valid_i_1_n_0),
        .Q(Valid_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_wait_i_1
       (.I0(clock_wait),
        .O(clock_wait_i_1_n_0));
  FDRE clock_wait_reg
       (.C(Clock),
        .CE(1'b1),
        .D(clock_wait_i_1_n_0),
        .Q(clock_wait),
        .R(1'b0));
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp_carry_n_0,eqOp_carry_n_1,eqOp_carry_n_2,eqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_carry_i_1_n_0,eqOp_carry_i_2_n_0,eqOp_carry_i_3_n_0,eqOp_carry_i_4_n_0}));
  CARRY4 eqOp_carry__0
       (.CI(eqOp_carry_n_0),
        .CO({eqOp_carry__0_n_0,eqOp_carry__0_n_1,eqOp_carry__0_n_2,eqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({eqOp_carry__0_i_1_n_0,eqOp_carry__0_i_2_n_0,eqOp_carry__0_i_3_n_0,eqOp_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_1
       (.I0(\res_sum_reg_n_0_[22] ),
        .I1(R[22]),
        .I2(\res_sum_reg_n_0_[23] ),
        .I3(R[23]),
        .I4(R[21]),
        .I5(\res_sum_reg_n_0_[21] ),
        .O(eqOp_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_2
       (.I0(\res_sum_reg_n_0_[18] ),
        .I1(R[18]),
        .I2(\res_sum_reg_n_0_[19] ),
        .I3(R[19]),
        .I4(R[20]),
        .I5(\res_sum_reg_n_0_[20] ),
        .O(eqOp_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_3
       (.I0(\res_sum_reg_n_0_[16] ),
        .I1(R[16]),
        .I2(\res_sum_reg_n_0_[17] ),
        .I3(R[17]),
        .I4(R[15]),
        .I5(\res_sum_reg_n_0_[15] ),
        .O(eqOp_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_4
       (.I0(\res_sum_reg_n_0_[12] ),
        .I1(R[12]),
        .I2(\res_sum_reg_n_0_[13] ),
        .I3(R[13]),
        .I4(R[14]),
        .I5(\res_sum_reg_n_0_[14] ),
        .O(eqOp_carry__0_i_4_n_0));
  CARRY4 eqOp_carry__1
       (.CI(eqOp_carry__0_n_0),
        .CO({NLW_eqOp_carry__1_CO_UNCONNECTED[3],eqOp,eqOp_carry__1_n_2,eqOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,eqOp_carry__1_i_1_n_0,eqOp_carry__1_i_2_n_0,eqOp_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    eqOp_carry__1_i_1
       (.I0(R[30]),
        .I1(\res_sum_reg_n_0_[30] ),
        .O(eqOp_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__1_i_2
       (.I0(\res_sum_reg_n_0_[28] ),
        .I1(R[28]),
        .I2(\res_sum_reg_n_0_[29] ),
        .I3(R[29]),
        .I4(R[27]),
        .I5(\res_sum_reg_n_0_[27] ),
        .O(eqOp_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__1_i_3
       (.I0(\res_sum_reg_n_0_[24] ),
        .I1(R[24]),
        .I2(\res_sum_reg_n_0_[25] ),
        .I3(R[25]),
        .I4(R[26]),
        .I5(\res_sum_reg_n_0_[26] ),
        .O(eqOp_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_1
       (.I0(\res_sum_reg_n_0_[10] ),
        .I1(R[10]),
        .I2(\res_sum_reg_n_0_[11] ),
        .I3(R[11]),
        .I4(R[9]),
        .I5(\res_sum_reg_n_0_[9] ),
        .O(eqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_2
       (.I0(\res_sum_reg_n_0_[6] ),
        .I1(R[6]),
        .I2(\res_sum_reg_n_0_[7] ),
        .I3(R[7]),
        .I4(R[8]),
        .I5(\res_sum_reg_n_0_[8] ),
        .O(eqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_3
       (.I0(\res_sum_reg_n_0_[4] ),
        .I1(R[4]),
        .I2(\res_sum_reg_n_0_[5] ),
        .I3(R[5]),
        .I4(R[3]),
        .I5(\res_sum_reg_n_0_[3] ),
        .O(eqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_4
       (.I0(\res_sum_reg_n_0_[0] ),
        .I1(R[0]),
        .I2(\res_sum_reg_n_0_[1] ),
        .I3(R[1]),
        .I4(R[2]),
        .I5(\res_sum_reg_n_0_[2] ),
        .O(eqOp_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CO({gtOp_carry__0_n_0,gtOp_carry__0_n_1,gtOp_carry__0_n_2,gtOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry__0_i_1_n_0,gtOp_carry__0_i_2_n_0,gtOp_carry__0_i_3_n_0,gtOp_carry__0_i_4_n_0}),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[3:0]),
        .S({gtOp_carry__0_i_5_n_0,gtOp_carry__0_i_6_n_0,gtOp_carry__0_i_7_n_0,gtOp_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__0_i_1
       (.I0(\res_sum_reg_n_0_[15] ),
        .I1(R[15]),
        .I2(\res_sum_reg_n_0_[14] ),
        .I3(R[14]),
        .O(gtOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__0_i_2
       (.I0(\res_sum_reg_n_0_[13] ),
        .I1(R[13]),
        .I2(\res_sum_reg_n_0_[12] ),
        .I3(R[12]),
        .O(gtOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__0_i_3
       (.I0(\res_sum_reg_n_0_[11] ),
        .I1(R[11]),
        .I2(\res_sum_reg_n_0_[10] ),
        .I3(R[10]),
        .O(gtOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__0_i_4
       (.I0(\res_sum_reg_n_0_[9] ),
        .I1(R[9]),
        .I2(\res_sum_reg_n_0_[8] ),
        .I3(R[8]),
        .O(gtOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_5
       (.I0(R[15]),
        .I1(\res_sum_reg_n_0_[15] ),
        .I2(R[14]),
        .I3(\res_sum_reg_n_0_[14] ),
        .O(gtOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_6
       (.I0(R[13]),
        .I1(\res_sum_reg_n_0_[13] ),
        .I2(R[12]),
        .I3(\res_sum_reg_n_0_[12] ),
        .O(gtOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_7
       (.I0(R[11]),
        .I1(\res_sum_reg_n_0_[11] ),
        .I2(R[10]),
        .I3(\res_sum_reg_n_0_[10] ),
        .O(gtOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_8
       (.I0(R[9]),
        .I1(\res_sum_reg_n_0_[9] ),
        .I2(R[8]),
        .I3(\res_sum_reg_n_0_[8] ),
        .O(gtOp_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry__1
       (.CI(gtOp_carry__0_n_0),
        .CO({gtOp_carry__1_n_0,gtOp_carry__1_n_1,gtOp_carry__1_n_2,gtOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry__1_i_1_n_0,gtOp_carry__1_i_2_n_0,gtOp_carry__1_i_3_n_0,gtOp_carry__1_i_4_n_0}),
        .O(NLW_gtOp_carry__1_O_UNCONNECTED[3:0]),
        .S({gtOp_carry__1_i_5_n_0,gtOp_carry__1_i_6_n_0,gtOp_carry__1_i_7_n_0,gtOp_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__1_i_1
       (.I0(\res_sum_reg_n_0_[23] ),
        .I1(R[23]),
        .I2(\res_sum_reg_n_0_[22] ),
        .I3(R[22]),
        .O(gtOp_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__1_i_2
       (.I0(\res_sum_reg_n_0_[21] ),
        .I1(R[21]),
        .I2(\res_sum_reg_n_0_[20] ),
        .I3(R[20]),
        .O(gtOp_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__1_i_3
       (.I0(\res_sum_reg_n_0_[19] ),
        .I1(R[19]),
        .I2(\res_sum_reg_n_0_[18] ),
        .I3(R[18]),
        .O(gtOp_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__1_i_4
       (.I0(\res_sum_reg_n_0_[17] ),
        .I1(R[17]),
        .I2(\res_sum_reg_n_0_[16] ),
        .I3(R[16]),
        .O(gtOp_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_5
       (.I0(R[23]),
        .I1(\res_sum_reg_n_0_[23] ),
        .I2(R[22]),
        .I3(\res_sum_reg_n_0_[22] ),
        .O(gtOp_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_6
       (.I0(R[21]),
        .I1(\res_sum_reg_n_0_[21] ),
        .I2(R[20]),
        .I3(\res_sum_reg_n_0_[20] ),
        .O(gtOp_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_7
       (.I0(R[19]),
        .I1(\res_sum_reg_n_0_[19] ),
        .I2(R[18]),
        .I3(\res_sum_reg_n_0_[18] ),
        .O(gtOp_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_8
       (.I0(R[17]),
        .I1(\res_sum_reg_n_0_[17] ),
        .I2(R[16]),
        .I3(\res_sum_reg_n_0_[16] ),
        .O(gtOp_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry__2
       (.CI(gtOp_carry__1_n_0),
        .CO({gtOp,gtOp_carry__2_n_1,gtOp_carry__2_n_2,gtOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry__2_i_1_n_0,gtOp_carry__2_i_2_n_0,gtOp_carry__2_i_3_n_0,gtOp_carry__2_i_4_n_0}),
        .O(NLW_gtOp_carry__2_O_UNCONNECTED[3:0]),
        .S({gtOp_carry__2_i_5_n_0,gtOp_carry__2_i_6_n_0,gtOp_carry__2_i_7_n_0,gtOp_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    gtOp_carry__2_i_1
       (.I0(\res_sum_reg_n_0_[30] ),
        .I1(R[30]),
        .O(gtOp_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__2_i_2
       (.I0(\res_sum_reg_n_0_[29] ),
        .I1(R[29]),
        .I2(\res_sum_reg_n_0_[28] ),
        .I3(R[28]),
        .O(gtOp_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__2_i_3
       (.I0(\res_sum_reg_n_0_[27] ),
        .I1(R[27]),
        .I2(\res_sum_reg_n_0_[26] ),
        .I3(R[26]),
        .O(gtOp_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry__2_i_4
       (.I0(\res_sum_reg_n_0_[25] ),
        .I1(R[25]),
        .I2(\res_sum_reg_n_0_[24] ),
        .I3(R[24]),
        .O(gtOp_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gtOp_carry__2_i_5
       (.I0(R[30]),
        .I1(\res_sum_reg_n_0_[30] ),
        .O(gtOp_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__2_i_6
       (.I0(R[29]),
        .I1(\res_sum_reg_n_0_[29] ),
        .I2(R[28]),
        .I3(\res_sum_reg_n_0_[28] ),
        .O(gtOp_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__2_i_7
       (.I0(R[27]),
        .I1(\res_sum_reg_n_0_[27] ),
        .I2(R[26]),
        .I3(\res_sum_reg_n_0_[26] ),
        .O(gtOp_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__2_i_8
       (.I0(R[25]),
        .I1(\res_sum_reg_n_0_[25] ),
        .I2(R[24]),
        .I3(\res_sum_reg_n_0_[24] ),
        .O(gtOp_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_1
       (.I0(\res_sum_reg_n_0_[7] ),
        .I1(R[7]),
        .I2(\res_sum_reg_n_0_[6] ),
        .I3(R[6]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_2
       (.I0(\res_sum_reg_n_0_[5] ),
        .I1(R[5]),
        .I2(\res_sum_reg_n_0_[4] ),
        .I3(R[4]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_3
       (.I0(\res_sum_reg_n_0_[3] ),
        .I1(R[3]),
        .I2(\res_sum_reg_n_0_[2] ),
        .I3(R[2]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_4
       (.I0(\res_sum_reg_n_0_[1] ),
        .I1(R[1]),
        .I2(\res_sum_reg_n_0_[0] ),
        .I3(R[0]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(R[7]),
        .I1(\res_sum_reg_n_0_[7] ),
        .I2(R[6]),
        .I3(\res_sum_reg_n_0_[6] ),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(R[5]),
        .I1(\res_sum_reg_n_0_[5] ),
        .I2(R[4]),
        .I3(\res_sum_reg_n_0_[4] ),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(R[3]),
        .I1(\res_sum_reg_n_0_[3] ),
        .I2(R[2]),
        .I3(\res_sum_reg_n_0_[2] ),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(R[1]),
        .I1(\res_sum_reg_n_0_[1] ),
        .I2(R[0]),
        .I3(\res_sum_reg_n_0_[0] ),
        .O(gtOp_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(R[7]),
        .I1(\res_sum_reg_n_0_[7] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(R[6]),
        .I1(\res_sum_reg_n_0_[6] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(R[5]),
        .I1(\res_sum_reg_n_0_[5] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(R[4]),
        .I1(\res_sum_reg_n_0_[4] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(R[11]),
        .I1(\res_sum_reg_n_0_[11] ),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(R[10]),
        .I1(\res_sum_reg_n_0_[10] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(R[9]),
        .I1(\res_sum_reg_n_0_[9] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(R[8]),
        .I1(\res_sum_reg_n_0_[8] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(R[15]),
        .I1(\res_sum_reg_n_0_[15] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(R[14]),
        .I1(\res_sum_reg_n_0_[14] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(R[13]),
        .I1(\res_sum_reg_n_0_[13] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(R[12]),
        .I1(\res_sum_reg_n_0_[12] ),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(R[19]),
        .I1(\res_sum_reg_n_0_[19] ),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(R[18]),
        .I1(\res_sum_reg_n_0_[18] ),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(R[17]),
        .I1(\res_sum_reg_n_0_[17] ),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(R[16]),
        .I1(\res_sum_reg_n_0_[16] ),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(R[23]),
        .I1(\res_sum_reg_n_0_[23] ),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(R[22]),
        .I1(\res_sum_reg_n_0_[22] ),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3
       (.I0(R[21]),
        .I1(\res_sum_reg_n_0_[21] ),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4
       (.I0(R[20]),
        .I1(\res_sum_reg_n_0_[20] ),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1
       (.I0(R[27]),
        .I1(\res_sum_reg_n_0_[27] ),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2
       (.I0(R[26]),
        .I1(\res_sum_reg_n_0_[26] ),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3
       (.I0(R[25]),
        .I1(\res_sum_reg_n_0_[25] ),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4
       (.I0(R[24]),
        .I1(\res_sum_reg_n_0_[24] ),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_1
       (.I0(R[30]),
        .I1(\res_sum_reg_n_0_[30] ),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2
       (.I0(R[29]),
        .I1(\res_sum_reg_n_0_[29] ),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3
       (.I0(R[28]),
        .I1(\res_sum_reg_n_0_[28] ),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(R[3]),
        .I1(\res_sum_reg_n_0_[3] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(R[2]),
        .I1(\res_sum_reg_n_0_[2] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(R[1]),
        .I1(\res_sum_reg_n_0_[1] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(R[0]),
        .I1(\res_sum_reg_n_0_[0] ),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000004000400040)) 
    \index[0]_i_1 
       (.I0(\index_reg[0]_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(\index_reg[1]_0 ),
        .I5(\index_reg[2]_0 ),
        .O(\index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000400080)) 
    \index[1]_i_1 
       (.I0(\index_reg[0]_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(\index_reg[1]_0 ),
        .I5(\index_reg[2]_0 ),
        .O(\index[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08FF)) 
    \index[2]_i_1 
       (.I0(clock_wait),
        .I1(Enable),
        .I2(Valid_reg_0),
        .I3(Reset),
        .O(res_sum));
  LUT6 #(
    .INIT(64'h000000C000800000)) 
    \index[2]_i_2 
       (.I0(\index_reg[0]_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(\index_reg[1]_0 ),
        .I5(\index_reg[2]_0 ),
        .O(\index[2]_i_2_n_0 ));
  FDRE \index_reg[0] 
       (.C(Clock),
        .CE(res_sum),
        .D(\index[0]_i_1_n_0 ),
        .Q(\index_reg[0]_0 ),
        .R(1'b0));
  FDRE \index_reg[1] 
       (.C(Clock),
        .CE(res_sum),
        .D(\index[1]_i_1_n_0 ),
        .Q(\index_reg[1]_0 ),
        .R(1'b0));
  FDRE \index_reg[2] 
       (.C(Clock),
        .CE(res_sum),
        .D(\index[2]_i_2_n_0 ),
        .Q(\index_reg[2]_0 ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI(R[3:0]),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(R[7:4]),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_1
       (.I0(R[7]),
        .I1(\res_sum_reg_n_0_[7] ),
        .O(minusOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_2
       (.I0(R[6]),
        .I1(\res_sum_reg_n_0_[6] ),
        .O(minusOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_3
       (.I0(R[5]),
        .I1(\res_sum_reg_n_0_[5] ),
        .O(minusOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_4
       (.I0(R[4]),
        .I1(\res_sum_reg_n_0_[4] ),
        .O(minusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(R[11:8]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_1
       (.I0(R[11]),
        .I1(\res_sum_reg_n_0_[11] ),
        .O(minusOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_2
       (.I0(R[10]),
        .I1(\res_sum_reg_n_0_[10] ),
        .O(minusOp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_3
       (.I0(R[9]),
        .I1(\res_sum_reg_n_0_[9] ),
        .O(minusOp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_4
       (.I0(R[8]),
        .I1(\res_sum_reg_n_0_[8] ),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(R[15:12]),
        .O({minusOp_carry__2_n_4,minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_1
       (.I0(R[15]),
        .I1(\res_sum_reg_n_0_[15] ),
        .O(minusOp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_2
       (.I0(R[14]),
        .I1(\res_sum_reg_n_0_[14] ),
        .O(minusOp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_3
       (.I0(R[13]),
        .I1(\res_sum_reg_n_0_[13] ),
        .O(minusOp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_4
       (.I0(R[12]),
        .I1(\res_sum_reg_n_0_[12] ),
        .O(minusOp_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(R[19:16]),
        .O({minusOp_carry__3_n_4,minusOp_carry__3_n_5,minusOp_carry__3_n_6,minusOp_carry__3_n_7}),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_1
       (.I0(R[19]),
        .I1(\res_sum_reg_n_0_[19] ),
        .O(minusOp_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_2
       (.I0(R[18]),
        .I1(\res_sum_reg_n_0_[18] ),
        .O(minusOp_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_3
       (.I0(R[17]),
        .I1(\res_sum_reg_n_0_[17] ),
        .O(minusOp_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_4
       (.I0(R[16]),
        .I1(\res_sum_reg_n_0_[16] ),
        .O(minusOp_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(R[23:20]),
        .O({minusOp_carry__4_n_4,minusOp_carry__4_n_5,minusOp_carry__4_n_6,minusOp_carry__4_n_7}),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_1
       (.I0(R[23]),
        .I1(\res_sum_reg_n_0_[23] ),
        .O(minusOp_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_2
       (.I0(R[22]),
        .I1(\res_sum_reg_n_0_[22] ),
        .O(minusOp_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_3
       (.I0(R[21]),
        .I1(\res_sum_reg_n_0_[21] ),
        .O(minusOp_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_4
       (.I0(R[20]),
        .I1(\res_sum_reg_n_0_[20] ),
        .O(minusOp_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(R[27:24]),
        .O({minusOp_carry__5_n_4,minusOp_carry__5_n_5,minusOp_carry__5_n_6,minusOp_carry__5_n_7}),
        .S({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__5_i_1
       (.I0(R[27]),
        .I1(\res_sum_reg_n_0_[27] ),
        .O(minusOp_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__5_i_2
       (.I0(R[26]),
        .I1(\res_sum_reg_n_0_[26] ),
        .O(minusOp_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__5_i_3
       (.I0(R[25]),
        .I1(\res_sum_reg_n_0_[25] ),
        .O(minusOp_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__5_i_4
       (.I0(R[24]),
        .I1(\res_sum_reg_n_0_[24] ),
        .O(minusOp_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3:2],minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,R[29:28]}),
        .O({NLW_minusOp_carry__6_O_UNCONNECTED[3],minusOp_carry__6_n_5,minusOp_carry__6_n_6,minusOp_carry__6_n_7}),
        .S({1'b0,minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0,minusOp_carry__6_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__6_i_1
       (.I0(R[30]),
        .I1(\res_sum_reg_n_0_[30] ),
        .O(minusOp_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__6_i_2
       (.I0(R[29]),
        .I1(\res_sum_reg_n_0_[29] ),
        .O(minusOp_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__6_i_3
       (.I0(R[28]),
        .I1(\res_sum_reg_n_0_[28] ),
        .O(minusOp_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1
       (.I0(R[3]),
        .I1(\res_sum_reg_n_0_[3] ),
        .O(minusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(R[2]),
        .I1(\res_sum_reg_n_0_[2] ),
        .O(minusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3
       (.I0(R[1]),
        .I1(\res_sum_reg_n_0_[1] ),
        .O(minusOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(R[0]),
        .I1(\res_sum_reg_n_0_[0] ),
        .O(minusOp_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\res_sum_reg_n_0_[3] ,\res_sum_reg_n_0_[2] ,\res_sum_reg_n_0_[1] ,\res_sum_reg_n_0_[0] }),
        .O({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[7] ,\res_sum_reg_n_0_[6] ,\res_sum_reg_n_0_[5] ,\res_sum_reg_n_0_[4] }),
        .O({\minusOp_inferred__0/i__carry__0_n_4 ,\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[11] ,\res_sum_reg_n_0_[10] ,\res_sum_reg_n_0_[9] ,\res_sum_reg_n_0_[8] }),
        .O({\minusOp_inferred__0/i__carry__1_n_4 ,\minusOp_inferred__0/i__carry__1_n_5 ,\minusOp_inferred__0/i__carry__1_n_6 ,\minusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__2_n_0 ,\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[15] ,\res_sum_reg_n_0_[14] ,\res_sum_reg_n_0_[13] ,\res_sum_reg_n_0_[12] }),
        .O({\minusOp_inferred__0/i__carry__2_n_4 ,\minusOp_inferred__0/i__carry__2_n_5 ,\minusOp_inferred__0/i__carry__2_n_6 ,\minusOp_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__3 
       (.CI(\minusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__3_n_0 ,\minusOp_inferred__0/i__carry__3_n_1 ,\minusOp_inferred__0/i__carry__3_n_2 ,\minusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[19] ,\res_sum_reg_n_0_[18] ,\res_sum_reg_n_0_[17] ,\res_sum_reg_n_0_[16] }),
        .O({\minusOp_inferred__0/i__carry__3_n_4 ,\minusOp_inferred__0/i__carry__3_n_5 ,\minusOp_inferred__0/i__carry__3_n_6 ,\minusOp_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__4 
       (.CI(\minusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__4_n_0 ,\minusOp_inferred__0/i__carry__4_n_1 ,\minusOp_inferred__0/i__carry__4_n_2 ,\minusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[23] ,\res_sum_reg_n_0_[22] ,\res_sum_reg_n_0_[21] ,\res_sum_reg_n_0_[20] }),
        .O({\minusOp_inferred__0/i__carry__4_n_4 ,\minusOp_inferred__0/i__carry__4_n_5 ,\minusOp_inferred__0/i__carry__4_n_6 ,\minusOp_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__5 
       (.CI(\minusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__5_n_0 ,\minusOp_inferred__0/i__carry__5_n_1 ,\minusOp_inferred__0/i__carry__5_n_2 ,\minusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[27] ,\res_sum_reg_n_0_[26] ,\res_sum_reg_n_0_[25] ,\res_sum_reg_n_0_[24] }),
        .O({\minusOp_inferred__0/i__carry__5_n_4 ,\minusOp_inferred__0/i__carry__5_n_5 ,\minusOp_inferred__0/i__carry__5_n_6 ,\minusOp_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__6 
       (.CI(\minusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\minusOp_inferred__0/i__carry__6_n_2 ,\minusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\res_sum_reg_n_0_[29] ,\res_sum_reg_n_0_[28] }),
        .O({\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],\minusOp_inferred__0/i__carry__6_n_5 ,\minusOp_inferred__0/i__carry__6_n_6 ,\minusOp_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    multOp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Input_Value[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,w_in[30:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_multOp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_multOp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_multOp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_multOp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp_OVERFLOW_UNCONNECTED),
        .P({multOp_n_58,multOp_n_59,multOp_n_60,multOp_n_61,multOp_n_62,multOp_n_63,multOp_n_64,multOp_n_65,multOp_n_66,multOp_n_67,multOp_n_68,multOp_n_69,multOp_n_70,multOp_n_71,multOp_n_72,multOp_n_73,multOp_n_74,multOp_n_75,multOp_n_76,multOp_n_77,multOp_n_78,multOp_n_79,multOp_n_80,multOp_n_81,multOp_n_82,multOp_n_83,multOp_n_84,multOp_n_85,multOp_n_86,multOp_n_87,multOp_n_88,multOp_n_89,multOp_n_90,multOp_n_91,multOp_n_92,multOp_n_93,multOp_n_94,multOp_n_95,multOp_n_96,multOp_n_97,multOp_n_98,multOp_n_99,multOp_n_100,multOp_n_101,multOp_n_102,multOp_n_103,multOp_n_104,multOp_n_105}),
        .PATTERNBDETECT(NLW_multOp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({multOp_n_106,multOp_n_107,multOp_n_108,multOp_n_109,multOp_n_110,multOp_n_111,multOp_n_112,multOp_n_113,multOp_n_114,multOp_n_115,multOp_n_116,multOp_n_117,multOp_n_118,multOp_n_119,multOp_n_120,multOp_n_121,multOp_n_122,multOp_n_123,multOp_n_124,multOp_n_125,multOp_n_126,multOp_n_127,multOp_n_128,multOp_n_129,multOp_n_130,multOp_n_131,multOp_n_132,multOp_n_133,multOp_n_134,multOp_n_135,multOp_n_136,multOp_n_137,multOp_n_138,multOp_n_139,multOp_n_140,multOp_n_141,multOp_n_142,multOp_n_143,multOp_n_144,multOp_n_145,multOp_n_146,multOp_n_147,multOp_n_148,multOp_n_149,multOp_n_150,multOp_n_151,multOp_n_152,multOp_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_multOp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    multOp__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,w_in[30:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,Input_Value[30:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_multOp__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_multOp__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_multOp__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_multOp__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp__0_OVERFLOW_UNCONNECTED),
        .P({multOp__0_n_58,multOp__0_n_59,multOp__0_n_60,multOp__0_n_61,multOp__0_n_62,multOp__0_n_63,multOp__0_n_64,multOp__0_n_65,multOp__0_n_66,multOp__0_n_67,multOp__0_n_68,multOp__0_n_69,multOp__0_n_70,multOp__0_n_71,multOp__0_n_72,multOp__0_n_73,multOp__0_n_74,multOp__0_n_75,multOp__0_n_76,multOp__0_n_77,multOp__0_n_78,multOp__0_n_79,multOp__0_n_80,multOp__0_n_81,multOp__0_n_82,multOp__0_n_83,multOp__0_n_84,multOp__0_n_85,multOp__0_n_86,multOp__0_n_87,multOp__0_n_88,multOp__0_n_89,multOp__0_n_90,multOp__0_n_91,multOp__0_n_92,multOp__0_n_93,multOp__0_n_94,multOp__0_n_95,multOp__0_n_96,multOp__0_n_97,multOp__0_n_98,multOp__0_n_99,multOp__0_n_100,multOp__0_n_101,multOp__0_n_102,multOp__0_n_103,multOp__0_n_104,multOp__0_n_105}),
        .PATTERNBDETECT(NLW_multOp__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({multOp_n_106,multOp_n_107,multOp_n_108,multOp_n_109,multOp_n_110,multOp_n_111,multOp_n_112,multOp_n_113,multOp_n_114,multOp_n_115,multOp_n_116,multOp_n_117,multOp_n_118,multOp_n_119,multOp_n_120,multOp_n_121,multOp_n_122,multOp_n_123,multOp_n_124,multOp_n_125,multOp_n_126,multOp_n_127,multOp_n_128,multOp_n_129,multOp_n_130,multOp_n_131,multOp_n_132,multOp_n_133,multOp_n_134,multOp_n_135,multOp_n_136,multOp_n_137,multOp_n_138,multOp_n_139,multOp_n_140,multOp_n_141,multOp_n_142,multOp_n_143,multOp_n_144,multOp_n_145,multOp_n_146,multOp_n_147,multOp_n_148,multOp_n_149,multOp_n_150,multOp_n_151,multOp_n_152,multOp_n_153}),
        .PCOUT(NLW_multOp__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_multOp__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    multOp__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,w_in[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({multOp__1_n_24,multOp__1_n_25,multOp__1_n_26,multOp__1_n_27,multOp__1_n_28,multOp__1_n_29,multOp__1_n_30,multOp__1_n_31,multOp__1_n_32,multOp__1_n_33,multOp__1_n_34,multOp__1_n_35,multOp__1_n_36,multOp__1_n_37,multOp__1_n_38,multOp__1_n_39,multOp__1_n_40,multOp__1_n_41,multOp__1_n_42,multOp__1_n_43,multOp__1_n_44,multOp__1_n_45,multOp__1_n_46,multOp__1_n_47,multOp__1_n_48,multOp__1_n_49,multOp__1_n_50,multOp__1_n_51,multOp__1_n_52,multOp__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Input_Value[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_multOp__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_multOp__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_multOp__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_multOp__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp__1_OVERFLOW_UNCONNECTED),
        .P({multOp__1_n_58,multOp__1_n_59,multOp__1_n_60,multOp__1_n_61,multOp__1_n_62,multOp__1_n_63,multOp__1_n_64,multOp__1_n_65,multOp__1_n_66,multOp__1_n_67,multOp__1_n_68,multOp__1_n_69,multOp__1_n_70,multOp__1_n_71,multOp__1_n_72,multOp__1_n_73,multOp__1_n_74,multOp__1_n_75,multOp__1_n_76,multOp__1_n_77,multOp__1_n_78,multOp__1_n_79,multOp__1_n_80,multOp__1_n_81,multOp__1_n_82,multOp__1_n_83,multOp__1_n_84,multOp__1_n_85,multOp__1_n_86,multOp__1_n_87,multOp__1_n_88,multOp__1_n_89,multOp__1_n_90,multOp__1_n_91,multOp__1_n_92,multOp__1_n_93,multOp__1_n_94,multOp__1_n_95,multOp__1_n_96,multOp__1_n_97,multOp__1_n_98,multOp__1_n_99,multOp__1_n_100,multOp__1_n_101,multOp__1_n_102,multOp__1_n_103,multOp__1_n_104,multOp__1_n_105}),
        .PATTERNBDETECT(NLW_multOp__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({multOp__1_n_106,multOp__1_n_107,multOp__1_n_108,multOp__1_n_109,multOp__1_n_110,multOp__1_n_111,multOp__1_n_112,multOp__1_n_113,multOp__1_n_114,multOp__1_n_115,multOp__1_n_116,multOp__1_n_117,multOp__1_n_118,multOp__1_n_119,multOp__1_n_120,multOp__1_n_121,multOp__1_n_122,multOp__1_n_123,multOp__1_n_124,multOp__1_n_125,multOp__1_n_126,multOp__1_n_127,multOp__1_n_128,multOp__1_n_129,multOp__1_n_130,multOp__1_n_131,multOp__1_n_132,multOp__1_n_133,multOp__1_n_134,multOp__1_n_135,multOp__1_n_136,multOp__1_n_137,multOp__1_n_138,multOp__1_n_139,multOp__1_n_140,multOp__1_n_141,multOp__1_n_142,multOp__1_n_143,multOp__1_n_144,multOp__1_n_145,multOp__1_n_146,multOp__1_n_147,multOp__1_n_148,multOp__1_n_149,multOp__1_n_150,multOp__1_n_151,multOp__1_n_152,multOp__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_multOp__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    multOp__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({multOp__1_n_24,multOp__1_n_25,multOp__1_n_26,multOp__1_n_27,multOp__1_n_28,multOp__1_n_29,multOp__1_n_30,multOp__1_n_31,multOp__1_n_32,multOp__1_n_33,multOp__1_n_34,multOp__1_n_35,multOp__1_n_36,multOp__1_n_37,multOp__1_n_38,multOp__1_n_39,multOp__1_n_40,multOp__1_n_41,multOp__1_n_42,multOp__1_n_43,multOp__1_n_44,multOp__1_n_45,multOp__1_n_46,multOp__1_n_47,multOp__1_n_48,multOp__1_n_49,multOp__1_n_50,multOp__1_n_51,multOp__1_n_52,multOp__1_n_53}),
        .ACOUT(NLW_multOp__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,Input_Value[30:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_multOp__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_multOp__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_multOp__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_multOp__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp__2_OVERFLOW_UNCONNECTED),
        .P({multOp__2_n_58,multOp__2_n_59,multOp__2_n_60,multOp__2_n_61,multOp__2_n_62,multOp__2_n_63,multOp__2_n_64,multOp__2_n_65,multOp__2_n_66,multOp__2_n_67,multOp__2_n_68,multOp__2_n_69,multOp__2_n_70,multOp__2_n_71,multOp__2_n_72,multOp__2_n_73,multOp__2_n_74,multOp__2_n_75,multOp__2_n_76,multOp__2_n_77,multOp__2_n_78,multOp__2_n_79,multOp__2_n_80,multOp__2_n_81,multOp__2_n_82,multOp__2_n_83,multOp__2_n_84,multOp__2_n_85,multOp__2_n_86,multOp__2_n_87,multOp__2_n_88,multOp__2_n_89,multOp__2_n_90,multOp__2_n_91,multOp__2_n_92,multOp__2_n_93,multOp__2_n_94,multOp__2_n_95,multOp__2_n_96,multOp__2_n_97,multOp__2_n_98,multOp__2_n_99,multOp__2_n_100,multOp__2_n_101,multOp__2_n_102,multOp__2_n_103,multOp__2_n_104,multOp__2_n_105}),
        .PATTERNBDETECT(NLW_multOp__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({multOp__1_n_106,multOp__1_n_107,multOp__1_n_108,multOp__1_n_109,multOp__1_n_110,multOp__1_n_111,multOp__1_n_112,multOp__1_n_113,multOp__1_n_114,multOp__1_n_115,multOp__1_n_116,multOp__1_n_117,multOp__1_n_118,multOp__1_n_119,multOp__1_n_120,multOp__1_n_121,multOp__1_n_122,multOp__1_n_123,multOp__1_n_124,multOp__1_n_125,multOp__1_n_126,multOp__1_n_127,multOp__1_n_128,multOp__1_n_129,multOp__1_n_130,multOp__1_n_131,multOp__1_n_132,multOp__1_n_133,multOp__1_n_134,multOp__1_n_135,multOp__1_n_136,multOp__1_n_137,multOp__1_n_138,multOp__1_n_139,multOp__1_n_140,multOp__1_n_141,multOp__1_n_142,multOp__1_n_143,multOp__1_n_144,multOp__1_n_145,multOp__1_n_146,multOp__1_n_147,multOp__1_n_148,multOp__1_n_149,multOp__1_n_150,multOp__1_n_151,multOp__1_n_152,multOp__1_n_153}),
        .PCOUT(NLW_multOp__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_multOp__2_UNDERFLOW_UNCONNECTED));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[29] 
       (.CLR(1'b0),
        .D(multOp__3[29]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[30] 
       (.CLR(1'b0),
        .D(multOp__3[30]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[31] 
       (.CLR(1'b0),
        .D(multOp__3[31]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[2]));
  CARRY4 \res_mul_reg[31]_i_1 
       (.CI(\res_mul_reg[31]_i_2_n_0 ),
        .CO({\res_mul_reg[31]_i_1_n_0 ,\res_mul_reg[31]_i_1_n_1 ,\res_mul_reg[31]_i_1_n_2 ,\res_mul_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_91,multOp__2_n_92,multOp__2_n_93,multOp__2_n_94}),
        .O({multOp__3[31:29],\NLW_res_mul_reg[31]_i_1_O_UNCONNECTED [0]}),
        .S({\res_mul_reg[31]_i_3_n_0 ,\res_mul_reg[31]_i_4_n_0 ,\res_mul_reg[31]_i_5_n_0 ,\res_mul_reg[31]_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_10 
       (.I0(multOp__2_n_97),
        .I1(multOp_n_97),
        .O(\res_mul_reg[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_11 
       (.I0(multOp__2_n_98),
        .I1(multOp_n_98),
        .O(\res_mul_reg[31]_i_11_n_0 ));
  CARRY4 \res_mul_reg[31]_i_12 
       (.CI(1'b0),
        .CO({\res_mul_reg[31]_i_12_n_0 ,\res_mul_reg[31]_i_12_n_1 ,\res_mul_reg[31]_i_12_n_2 ,\res_mul_reg[31]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_103,multOp__2_n_104,multOp__2_n_105,1'b0}),
        .O(\NLW_res_mul_reg[31]_i_12_O_UNCONNECTED [3:0]),
        .S({\res_mul_reg[31]_i_17_n_0 ,\res_mul_reg[31]_i_18_n_0 ,\res_mul_reg[31]_i_19_n_0 ,multOp__1_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_13 
       (.I0(multOp__2_n_99),
        .I1(multOp_n_99),
        .O(\res_mul_reg[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_14 
       (.I0(multOp__2_n_100),
        .I1(multOp_n_100),
        .O(\res_mul_reg[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_15 
       (.I0(multOp__2_n_101),
        .I1(multOp_n_101),
        .O(\res_mul_reg[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_16 
       (.I0(multOp__2_n_102),
        .I1(multOp_n_102),
        .O(\res_mul_reg[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_17 
       (.I0(multOp__2_n_103),
        .I1(multOp_n_103),
        .O(\res_mul_reg[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_18 
       (.I0(multOp__2_n_104),
        .I1(multOp_n_104),
        .O(\res_mul_reg[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_19 
       (.I0(multOp__2_n_105),
        .I1(multOp_n_105),
        .O(\res_mul_reg[31]_i_19_n_0 ));
  CARRY4 \res_mul_reg[31]_i_2 
       (.CI(\res_mul_reg[31]_i_7_n_0 ),
        .CO({\res_mul_reg[31]_i_2_n_0 ,\res_mul_reg[31]_i_2_n_1 ,\res_mul_reg[31]_i_2_n_2 ,\res_mul_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_95,multOp__2_n_96,multOp__2_n_97,multOp__2_n_98}),
        .O(\NLW_res_mul_reg[31]_i_2_O_UNCONNECTED [3:0]),
        .S({\res_mul_reg[31]_i_8_n_0 ,\res_mul_reg[31]_i_9_n_0 ,\res_mul_reg[31]_i_10_n_0 ,\res_mul_reg[31]_i_11_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_3 
       (.I0(multOp__2_n_91),
        .I1(multOp_n_91),
        .O(\res_mul_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_4 
       (.I0(multOp__2_n_92),
        .I1(multOp_n_92),
        .O(\res_mul_reg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_5 
       (.I0(multOp__2_n_93),
        .I1(multOp_n_93),
        .O(\res_mul_reg[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_6 
       (.I0(multOp__2_n_94),
        .I1(multOp_n_94),
        .O(\res_mul_reg[31]_i_6_n_0 ));
  CARRY4 \res_mul_reg[31]_i_7 
       (.CI(\res_mul_reg[31]_i_12_n_0 ),
        .CO({\res_mul_reg[31]_i_7_n_0 ,\res_mul_reg[31]_i_7_n_1 ,\res_mul_reg[31]_i_7_n_2 ,\res_mul_reg[31]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_99,multOp__2_n_100,multOp__2_n_101,multOp__2_n_102}),
        .O(\NLW_res_mul_reg[31]_i_7_O_UNCONNECTED [3:0]),
        .S({\res_mul_reg[31]_i_13_n_0 ,\res_mul_reg[31]_i_14_n_0 ,\res_mul_reg[31]_i_15_n_0 ,\res_mul_reg[31]_i_16_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_8 
       (.I0(multOp__2_n_95),
        .I1(multOp_n_95),
        .O(\res_mul_reg[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[31]_i_9 
       (.I0(multOp__2_n_96),
        .I1(multOp_n_96),
        .O(\res_mul_reg[31]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[32] 
       (.CLR(1'b0),
        .D(multOp__3[32]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[33] 
       (.CLR(1'b0),
        .D(multOp__3[33]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[34] 
       (.CLR(1'b0),
        .D(multOp__3[34]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[35] 
       (.CLR(1'b0),
        .D(multOp__3[35]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[6]));
  CARRY4 \res_mul_reg[35]_i_1 
       (.CI(\res_mul_reg[31]_i_1_n_0 ),
        .CO({\res_mul_reg[35]_i_1_n_0 ,\res_mul_reg[35]_i_1_n_1 ,\res_mul_reg[35]_i_1_n_2 ,\res_mul_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_87,multOp__2_n_88,multOp__2_n_89,multOp__2_n_90}),
        .O(multOp__3[35:32]),
        .S({\res_mul_reg[35]_i_2_n_0 ,\res_mul_reg[35]_i_3_n_0 ,\res_mul_reg[35]_i_4_n_0 ,\res_mul_reg[35]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[35]_i_2 
       (.I0(multOp__2_n_87),
        .I1(multOp__0_n_104),
        .O(\res_mul_reg[35]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[35]_i_3 
       (.I0(multOp__2_n_88),
        .I1(multOp__0_n_105),
        .O(\res_mul_reg[35]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[35]_i_4 
       (.I0(multOp__2_n_89),
        .I1(multOp_n_89),
        .O(\res_mul_reg[35]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[35]_i_5 
       (.I0(multOp__2_n_90),
        .I1(multOp_n_90),
        .O(\res_mul_reg[35]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[36] 
       (.CLR(1'b0),
        .D(multOp__3[36]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[37] 
       (.CLR(1'b0),
        .D(multOp__3[37]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[38] 
       (.CLR(1'b0),
        .D(multOp__3[38]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[39] 
       (.CLR(1'b0),
        .D(multOp__3[39]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[10]));
  CARRY4 \res_mul_reg[39]_i_1 
       (.CI(\res_mul_reg[35]_i_1_n_0 ),
        .CO({\res_mul_reg[39]_i_1_n_0 ,\res_mul_reg[39]_i_1_n_1 ,\res_mul_reg[39]_i_1_n_2 ,\res_mul_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_83,multOp__2_n_84,multOp__2_n_85,multOp__2_n_86}),
        .O(multOp__3[39:36]),
        .S({\res_mul_reg[39]_i_2_n_0 ,\res_mul_reg[39]_i_3_n_0 ,\res_mul_reg[39]_i_4_n_0 ,\res_mul_reg[39]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[39]_i_2 
       (.I0(multOp__2_n_83),
        .I1(multOp__0_n_100),
        .O(\res_mul_reg[39]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[39]_i_3 
       (.I0(multOp__2_n_84),
        .I1(multOp__0_n_101),
        .O(\res_mul_reg[39]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[39]_i_4 
       (.I0(multOp__2_n_85),
        .I1(multOp__0_n_102),
        .O(\res_mul_reg[39]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[39]_i_5 
       (.I0(multOp__2_n_86),
        .I1(multOp__0_n_103),
        .O(\res_mul_reg[39]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[40] 
       (.CLR(1'b0),
        .D(multOp__3[40]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[41] 
       (.CLR(1'b0),
        .D(multOp__3[41]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[42] 
       (.CLR(1'b0),
        .D(multOp__3[42]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[43] 
       (.CLR(1'b0),
        .D(multOp__3[43]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[14]));
  CARRY4 \res_mul_reg[43]_i_1 
       (.CI(\res_mul_reg[39]_i_1_n_0 ),
        .CO({\res_mul_reg[43]_i_1_n_0 ,\res_mul_reg[43]_i_1_n_1 ,\res_mul_reg[43]_i_1_n_2 ,\res_mul_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_79,multOp__2_n_80,multOp__2_n_81,multOp__2_n_82}),
        .O(multOp__3[43:40]),
        .S({\res_mul_reg[43]_i_2_n_0 ,\res_mul_reg[43]_i_3_n_0 ,\res_mul_reg[43]_i_4_n_0 ,\res_mul_reg[43]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[43]_i_2 
       (.I0(multOp__2_n_79),
        .I1(multOp__0_n_96),
        .O(\res_mul_reg[43]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[43]_i_3 
       (.I0(multOp__2_n_80),
        .I1(multOp__0_n_97),
        .O(\res_mul_reg[43]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[43]_i_4 
       (.I0(multOp__2_n_81),
        .I1(multOp__0_n_98),
        .O(\res_mul_reg[43]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[43]_i_5 
       (.I0(multOp__2_n_82),
        .I1(multOp__0_n_99),
        .O(\res_mul_reg[43]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[44] 
       (.CLR(1'b0),
        .D(multOp__3[44]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[45] 
       (.CLR(1'b0),
        .D(multOp__3[45]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[46] 
       (.CLR(1'b0),
        .D(multOp__3[46]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[47] 
       (.CLR(1'b0),
        .D(multOp__3[47]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[18]));
  CARRY4 \res_mul_reg[47]_i_1 
       (.CI(\res_mul_reg[43]_i_1_n_0 ),
        .CO({\res_mul_reg[47]_i_1_n_0 ,\res_mul_reg[47]_i_1_n_1 ,\res_mul_reg[47]_i_1_n_2 ,\res_mul_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_75,multOp__2_n_76,multOp__2_n_77,multOp__2_n_78}),
        .O(multOp__3[47:44]),
        .S({\res_mul_reg[47]_i_2_n_0 ,\res_mul_reg[47]_i_3_n_0 ,\res_mul_reg[47]_i_4_n_0 ,\res_mul_reg[47]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[47]_i_2 
       (.I0(multOp__2_n_75),
        .I1(multOp__0_n_92),
        .O(\res_mul_reg[47]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[47]_i_3 
       (.I0(multOp__2_n_76),
        .I1(multOp__0_n_93),
        .O(\res_mul_reg[47]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[47]_i_4 
       (.I0(multOp__2_n_77),
        .I1(multOp__0_n_94),
        .O(\res_mul_reg[47]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[47]_i_5 
       (.I0(multOp__2_n_78),
        .I1(multOp__0_n_95),
        .O(\res_mul_reg[47]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[48] 
       (.CLR(1'b0),
        .D(multOp__3[48]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[49] 
       (.CLR(1'b0),
        .D(multOp__3[49]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[50] 
       (.CLR(1'b0),
        .D(multOp__3[50]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[51] 
       (.CLR(1'b0),
        .D(multOp__3[51]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[22]));
  CARRY4 \res_mul_reg[51]_i_1 
       (.CI(\res_mul_reg[47]_i_1_n_0 ),
        .CO({\res_mul_reg[51]_i_1_n_0 ,\res_mul_reg[51]_i_1_n_1 ,\res_mul_reg[51]_i_1_n_2 ,\res_mul_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_71,multOp__2_n_72,multOp__2_n_73,multOp__2_n_74}),
        .O(multOp__3[51:48]),
        .S({\res_mul_reg[51]_i_2_n_0 ,\res_mul_reg[51]_i_3_n_0 ,\res_mul_reg[51]_i_4_n_0 ,\res_mul_reg[51]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[51]_i_2 
       (.I0(multOp__2_n_71),
        .I1(multOp__0_n_88),
        .O(\res_mul_reg[51]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[51]_i_3 
       (.I0(multOp__2_n_72),
        .I1(multOp__0_n_89),
        .O(\res_mul_reg[51]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[51]_i_4 
       (.I0(multOp__2_n_73),
        .I1(multOp__0_n_90),
        .O(\res_mul_reg[51]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[51]_i_5 
       (.I0(multOp__2_n_74),
        .I1(multOp__0_n_91),
        .O(\res_mul_reg[51]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[52] 
       (.CLR(1'b0),
        .D(multOp__3[52]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[53] 
       (.CLR(1'b0),
        .D(multOp__3[53]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[54] 
       (.CLR(1'b0),
        .D(multOp__3[54]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[55] 
       (.CLR(1'b0),
        .D(multOp__3[55]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[26]));
  CARRY4 \res_mul_reg[55]_i_1 
       (.CI(\res_mul_reg[51]_i_1_n_0 ),
        .CO({\res_mul_reg[55]_i_1_n_0 ,\res_mul_reg[55]_i_1_n_1 ,\res_mul_reg[55]_i_1_n_2 ,\res_mul_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({multOp__2_n_67,multOp__2_n_68,multOp__2_n_69,multOp__2_n_70}),
        .O(multOp__3[55:52]),
        .S({\res_mul_reg[55]_i_2_n_0 ,\res_mul_reg[55]_i_3_n_0 ,\res_mul_reg[55]_i_4_n_0 ,\res_mul_reg[55]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[55]_i_2 
       (.I0(multOp__2_n_67),
        .I1(multOp__0_n_84),
        .O(\res_mul_reg[55]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[55]_i_3 
       (.I0(multOp__2_n_68),
        .I1(multOp__0_n_85),
        .O(\res_mul_reg[55]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[55]_i_4 
       (.I0(multOp__2_n_69),
        .I1(multOp__0_n_86),
        .O(\res_mul_reg[55]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[55]_i_5 
       (.I0(multOp__2_n_70),
        .I1(multOp__0_n_87),
        .O(\res_mul_reg[55]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[56] 
       (.CLR(1'b0),
        .D(multOp__3[56]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[57] 
       (.CLR(1'b0),
        .D(multOp__3[57]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[58] 
       (.CLR(1'b0),
        .D(multOp__3[58]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[59] 
       (.CLR(1'b0),
        .D(multOp__3[59]),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[30]));
  CARRY4 \res_mul_reg[59]_i_1 
       (.CI(\res_mul_reg[55]_i_1_n_0 ),
        .CO({\NLW_res_mul_reg[59]_i_1_CO_UNCONNECTED [3],\res_mul_reg[59]_i_1_n_1 ,\res_mul_reg[59]_i_1_n_2 ,\res_mul_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,multOp__2_n_64,multOp__2_n_65,multOp__2_n_66}),
        .O(multOp__3[59:56]),
        .S({\res_mul_reg[59]_i_2_n_0 ,\res_mul_reg[59]_i_3_n_0 ,\res_mul_reg[59]_i_4_n_0 ,\res_mul_reg[59]_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[59]_i_2 
       (.I0(multOp__2_n_63),
        .I1(multOp__0_n_80),
        .O(\res_mul_reg[59]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[59]_i_3 
       (.I0(multOp__2_n_64),
        .I1(multOp__0_n_81),
        .O(\res_mul_reg[59]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[59]_i_4 
       (.I0(multOp__2_n_65),
        .I1(multOp__0_n_82),
        .O(\res_mul_reg[59]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[59]_i_5 
       (.I0(multOp__2_n_66),
        .I1(multOp__0_n_83),
        .O(\res_mul_reg[59]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_mul_reg[63] 
       (.CLR(1'b0),
        .D(mul_sign),
        .G(ltOp),
        .GE(1'b1),
        .Q(R[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \res_mul_reg[63]_i_1 
       (.I0(Input_Value[31]),
        .I1(w_in[31]),
        .O(mul_sign));
  LUT3 #(
    .INIT(8'h7F)) 
    \res_mul_reg[63]_i_2 
       (.I0(\index_reg[2]_0 ),
        .I1(\index_reg[1]_0 ),
        .I2(\index_reg[0]_0 ),
        .O(ltOp));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[0]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry_n_7),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry_n_7 ),
        .I4(eqOp),
        .I5(\res_sum[0]_i_2_n_0 ),
        .O(\res_sum[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[0]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[0]),
        .O(\res_sum[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[10]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__1_n_5),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__1_n_5 ),
        .I4(eqOp),
        .I5(\res_sum[10]_i_2_n_0 ),
        .O(\res_sum[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[10]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[10]),
        .O(\res_sum[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[11]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__1_n_4),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__1_n_4 ),
        .I4(eqOp),
        .I5(\res_sum[11]_i_2_n_0 ),
        .O(\res_sum[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[11]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[11]),
        .O(\res_sum[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_4 
       (.I0(\res_sum_reg_n_0_[11] ),
        .I1(R[11]),
        .O(\res_sum[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_5 
       (.I0(\res_sum_reg_n_0_[10] ),
        .I1(R[10]),
        .O(\res_sum[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_6 
       (.I0(\res_sum_reg_n_0_[9] ),
        .I1(R[9]),
        .O(\res_sum[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_7 
       (.I0(\res_sum_reg_n_0_[8] ),
        .I1(R[8]),
        .O(\res_sum[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \res_sum[12]_i_1 
       (.I0(\res_sum[12]_i_2_n_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(Reset),
        .O(\res_sum[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \res_sum[12]_i_2 
       (.I0(minusOp_carry__2_n_7),
        .I1(gtOp),
        .I2(\minusOp_inferred__0/i__carry__2_n_7 ),
        .I3(eqOp),
        .I4(\res_sum[29]_i_2_n_0 ),
        .I5(data1[12]),
        .O(\res_sum[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[12]_i_4 
       (.I0(\res_sum_reg_n_0_[15] ),
        .I1(R[15]),
        .O(\res_sum[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[12]_i_5 
       (.I0(\res_sum_reg_n_0_[14] ),
        .I1(R[14]),
        .O(\res_sum[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[12]_i_6 
       (.I0(\res_sum_reg_n_0_[13] ),
        .I1(R[13]),
        .O(\res_sum[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[12]_i_7 
       (.I0(\res_sum_reg_n_0_[12] ),
        .I1(R[12]),
        .O(\res_sum[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[13]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__2_n_6),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__2_n_6 ),
        .I4(eqOp),
        .I5(\res_sum[13]_i_2_n_0 ),
        .O(\res_sum[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[13]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[13]),
        .O(\res_sum[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[14]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__2_n_5),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__2_n_5 ),
        .I4(eqOp),
        .I5(\res_sum[14]_i_2_n_0 ),
        .O(\res_sum[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[14]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[14]),
        .O(\res_sum[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[15]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__2_n_4),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__2_n_4 ),
        .I4(eqOp),
        .I5(\res_sum[15]_i_2_n_0 ),
        .O(\res_sum[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[15]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[15]),
        .O(\res_sum[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \res_sum[16]_i_1 
       (.I0(\res_sum[16]_i_2_n_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(Reset),
        .O(\res_sum[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D08FFFF0D080000)) 
    \res_sum[16]_i_2 
       (.I0(gtOp),
        .I1(\minusOp_inferred__0/i__carry__3_n_7 ),
        .I2(eqOp),
        .I3(minusOp_carry__3_n_7),
        .I4(\res_sum[29]_i_2_n_0 ),
        .I5(data1[16]),
        .O(\res_sum[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[17]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__3_n_6),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__3_n_6 ),
        .I4(eqOp),
        .I5(\res_sum[17]_i_2_n_0 ),
        .O(\res_sum[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[17]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[17]),
        .O(\res_sum[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \res_sum[18]_i_1 
       (.I0(\res_sum[18]_i_2_n_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(Reset),
        .O(\res_sum[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \res_sum[18]_i_2 
       (.I0(minusOp_carry__3_n_5),
        .I1(gtOp),
        .I2(\minusOp_inferred__0/i__carry__3_n_5 ),
        .I3(eqOp),
        .I4(\res_sum[29]_i_2_n_0 ),
        .I5(data1[18]),
        .O(\res_sum[18]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[18]_i_4 
       (.I0(\res_sum_reg_n_0_[19] ),
        .I1(R[19]),
        .O(\res_sum[18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[18]_i_5 
       (.I0(\res_sum_reg_n_0_[18] ),
        .I1(R[18]),
        .O(\res_sum[18]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[18]_i_6 
       (.I0(\res_sum_reg_n_0_[17] ),
        .I1(R[17]),
        .O(\res_sum[18]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[18]_i_7 
       (.I0(\res_sum_reg_n_0_[16] ),
        .I1(R[16]),
        .O(\res_sum[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[19]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__3_n_4),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__3_n_4 ),
        .I4(eqOp),
        .I5(\res_sum[19]_i_2_n_0 ),
        .O(\res_sum[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[19]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[19]),
        .O(\res_sum[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \res_sum[1]_i_1 
       (.I0(\res_sum[1]_i_2_n_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(Reset),
        .O(\res_sum[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D08FFFF0D080000)) 
    \res_sum[1]_i_2 
       (.I0(gtOp),
        .I1(\minusOp_inferred__0/i__carry_n_6 ),
        .I2(eqOp),
        .I3(minusOp_carry_n_6),
        .I4(\res_sum[29]_i_2_n_0 ),
        .I5(data1[1]),
        .O(\res_sum[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[20]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__4_n_7),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__4_n_7 ),
        .I4(eqOp),
        .I5(\res_sum[20]_i_2_n_0 ),
        .O(\res_sum[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[20]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[20]),
        .O(\res_sum[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[21]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__4_n_6),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__4_n_6 ),
        .I4(eqOp),
        .I5(\res_sum[21]_i_2_n_0 ),
        .O(\res_sum[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[21]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[21]),
        .O(\res_sum[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[22]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__4_n_5),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__4_n_5 ),
        .I4(eqOp),
        .I5(\res_sum[22]_i_2_n_0 ),
        .O(\res_sum[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[22]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[22]),
        .O(\res_sum[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[23]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__4_n_4),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__4_n_4 ),
        .I4(eqOp),
        .I5(\res_sum[23]_i_2_n_0 ),
        .O(\res_sum[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[23]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[23]),
        .O(\res_sum[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_4 
       (.I0(\res_sum_reg_n_0_[23] ),
        .I1(R[23]),
        .O(\res_sum[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_5 
       (.I0(\res_sum_reg_n_0_[22] ),
        .I1(R[22]),
        .O(\res_sum[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_6 
       (.I0(\res_sum_reg_n_0_[21] ),
        .I1(R[21]),
        .O(\res_sum[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_7 
       (.I0(\res_sum_reg_n_0_[20] ),
        .I1(R[20]),
        .O(\res_sum[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[24]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__5_n_7),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__5_n_7 ),
        .I4(eqOp),
        .I5(\res_sum[24]_i_2_n_0 ),
        .O(\res_sum[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[24]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[24]),
        .O(\res_sum[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[25]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__5_n_6),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__5_n_6 ),
        .I4(eqOp),
        .I5(\res_sum[25]_i_2_n_0 ),
        .O(\res_sum[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[25]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[25]),
        .O(\res_sum[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[26]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__5_n_5),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__5_n_5 ),
        .I4(eqOp),
        .I5(\res_sum[26]_i_2_n_0 ),
        .O(\res_sum[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[26]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[26]),
        .O(\res_sum[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[27]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__5_n_4),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__5_n_4 ),
        .I4(eqOp),
        .I5(\res_sum[27]_i_2_n_0 ),
        .O(\res_sum[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[27]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[27]),
        .O(\res_sum[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_4 
       (.I0(\res_sum_reg_n_0_[27] ),
        .I1(R[27]),
        .O(\res_sum[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_5 
       (.I0(\res_sum_reg_n_0_[26] ),
        .I1(R[26]),
        .O(\res_sum[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_6 
       (.I0(\res_sum_reg_n_0_[25] ),
        .I1(R[25]),
        .O(\res_sum[27]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_7 
       (.I0(\res_sum_reg_n_0_[24] ),
        .I1(R[24]),
        .O(\res_sum[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \res_sum[28]_i_1 
       (.I0(\res_sum[28]_i_2_n_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(Reset),
        .O(\res_sum[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \res_sum[28]_i_2 
       (.I0(minusOp_carry__6_n_7),
        .I1(gtOp),
        .I2(\minusOp_inferred__0/i__carry__6_n_7 ),
        .I3(eqOp),
        .I4(\res_sum[29]_i_2_n_0 ),
        .I5(data1[28]),
        .O(\res_sum[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[29]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__6_n_6),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__6_n_6 ),
        .I4(eqOp),
        .I5(\res_sum[29]_i_3_n_0 ),
        .O(\res_sum[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[29]_i_2 
       (.I0(p_0_in),
        .I1(R[31]),
        .O(\res_sum[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[29]_i_3 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[29]),
        .O(\res_sum[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \res_sum[2]_i_1 
       (.I0(\res_sum[2]_i_2_n_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(Reset),
        .O(\res_sum[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D08FFFF0D080000)) 
    \res_sum[2]_i_2 
       (.I0(gtOp),
        .I1(\minusOp_inferred__0/i__carry_n_5 ),
        .I2(eqOp),
        .I3(minusOp_carry_n_5),
        .I4(\res_sum[29]_i_2_n_0 ),
        .I5(data1[2]),
        .O(\res_sum[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[2]_i_4 
       (.I0(\res_sum_reg_n_0_[3] ),
        .I1(R[3]),
        .O(\res_sum[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[2]_i_5 
       (.I0(\res_sum_reg_n_0_[2] ),
        .I1(R[2]),
        .O(\res_sum[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[2]_i_6 
       (.I0(\res_sum_reg_n_0_[1] ),
        .I1(R[1]),
        .O(\res_sum[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[2]_i_7 
       (.I0(\res_sum_reg_n_0_[0] ),
        .I1(R[0]),
        .O(\res_sum[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \res_sum[30]_i_1 
       (.I0(\res_sum[30]_i_2_n_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(Reset),
        .O(\res_sum[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D08FFFF0D080000)) 
    \res_sum[30]_i_2 
       (.I0(gtOp),
        .I1(\minusOp_inferred__0/i__carry__6_n_5 ),
        .I2(eqOp),
        .I3(minusOp_carry__6_n_5),
        .I4(\res_sum[29]_i_2_n_0 ),
        .I5(data1[30]),
        .O(\res_sum[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_4 
       (.I0(\res_sum_reg_n_0_[30] ),
        .I1(R[30]),
        .O(\res_sum[30]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_5 
       (.I0(\res_sum_reg_n_0_[29] ),
        .I1(R[29]),
        .O(\res_sum[30]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_6 
       (.I0(\res_sum_reg_n_0_[28] ),
        .I1(R[28]),
        .O(\res_sum[30]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC0E40000)) 
    \res_sum[31]_i_1 
       (.I0(gtOp),
        .I1(R[31]),
        .I2(p_0_in),
        .I3(eqOp),
        .I4(\res_sum[31]_i_2_n_0 ),
        .O(\res_sum[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \res_sum[31]_i_2 
       (.I0(clock_wait),
        .I1(Enable),
        .I2(Valid_reg_0),
        .O(\res_sum[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[3]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry_n_4),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry_n_4 ),
        .I4(eqOp),
        .I5(\res_sum[3]_i_2_n_0 ),
        .O(\res_sum[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[3]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[3]),
        .O(\res_sum[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[4]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__0_n_7),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__0_n_7 ),
        .I4(eqOp),
        .I5(\res_sum[4]_i_2_n_0 ),
        .O(\res_sum[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[4]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[4]),
        .O(\res_sum[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[5]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__0_n_6),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__0_n_6 ),
        .I4(eqOp),
        .I5(\res_sum[5]_i_2_n_0 ),
        .O(\res_sum[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[5]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[5]),
        .O(\res_sum[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \res_sum[6]_i_1 
       (.I0(\res_sum[6]_i_2_n_0 ),
        .I1(clock_wait),
        .I2(Enable),
        .I3(Valid_reg_0),
        .I4(Reset),
        .O(\res_sum[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D08FFFF0D080000)) 
    \res_sum[6]_i_2 
       (.I0(gtOp),
        .I1(\minusOp_inferred__0/i__carry__0_n_5 ),
        .I2(eqOp),
        .I3(minusOp_carry__0_n_5),
        .I4(\res_sum[29]_i_2_n_0 ),
        .I5(data1[6]),
        .O(\res_sum[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[6]_i_4 
       (.I0(\res_sum_reg_n_0_[7] ),
        .I1(R[7]),
        .O(\res_sum[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[6]_i_5 
       (.I0(\res_sum_reg_n_0_[6] ),
        .I1(R[6]),
        .O(\res_sum[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[6]_i_6 
       (.I0(\res_sum_reg_n_0_[5] ),
        .I1(R[5]),
        .O(\res_sum[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[6]_i_7 
       (.I0(\res_sum_reg_n_0_[4] ),
        .I1(R[4]),
        .O(\res_sum[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[7]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__0_n_4),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__0_n_4 ),
        .I4(eqOp),
        .I5(\res_sum[7]_i_2_n_0 ),
        .O(\res_sum[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[7]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[7]),
        .O(\res_sum[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[8]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__1_n_7),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__1_n_7 ),
        .I4(eqOp),
        .I5(\res_sum[8]_i_2_n_0 ),
        .O(\res_sum[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[8]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[8]),
        .O(\res_sum[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555FD5D)) 
    \res_sum[9]_i_1 
       (.I0(\res_sum[29]_i_2_n_0 ),
        .I1(minusOp_carry__1_n_6),
        .I2(gtOp),
        .I3(\minusOp_inferred__0/i__carry__1_n_6 ),
        .I4(eqOp),
        .I5(\res_sum[9]_i_2_n_0 ),
        .O(\res_sum[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFBFFFBFBFFF)) 
    \res_sum[9]_i_2 
       (.I0(Valid_reg_0),
        .I1(Enable),
        .I2(clock_wait),
        .I3(p_0_in),
        .I4(R[31]),
        .I5(data1[9]),
        .O(\res_sum[9]_i_2_n_0 ));
  FDRE \res_sum_reg[0] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[0]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \res_sum_reg[10] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[10]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \res_sum_reg[11] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[11]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[11] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[11]_i_3 
       (.CI(\res_sum_reg[6]_i_3_n_0 ),
        .CO({\res_sum_reg[11]_i_3_n_0 ,\res_sum_reg[11]_i_3_n_1 ,\res_sum_reg[11]_i_3_n_2 ,\res_sum_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[11] ,\res_sum_reg_n_0_[10] ,\res_sum_reg_n_0_[9] ,\res_sum_reg_n_0_[8] }),
        .O(data1[11:8]),
        .S({\res_sum[11]_i_4_n_0 ,\res_sum[11]_i_5_n_0 ,\res_sum[11]_i_6_n_0 ,\res_sum[11]_i_7_n_0 }));
  FDRE \res_sum_reg[12] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[12]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[12]_i_3 
       (.CI(\res_sum_reg[11]_i_3_n_0 ),
        .CO({\res_sum_reg[12]_i_3_n_0 ,\res_sum_reg[12]_i_3_n_1 ,\res_sum_reg[12]_i_3_n_2 ,\res_sum_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[15] ,\res_sum_reg_n_0_[14] ,\res_sum_reg_n_0_[13] ,\res_sum_reg_n_0_[12] }),
        .O(data1[15:12]),
        .S({\res_sum[12]_i_4_n_0 ,\res_sum[12]_i_5_n_0 ,\res_sum[12]_i_6_n_0 ,\res_sum[12]_i_7_n_0 }));
  FDRE \res_sum_reg[13] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[13]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \res_sum_reg[14] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[14]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \res_sum_reg[15] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[15]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \res_sum_reg[16] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[16]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \res_sum_reg[17] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[17]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \res_sum_reg[18] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[18]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[18] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[18]_i_3 
       (.CI(\res_sum_reg[12]_i_3_n_0 ),
        .CO({\res_sum_reg[18]_i_3_n_0 ,\res_sum_reg[18]_i_3_n_1 ,\res_sum_reg[18]_i_3_n_2 ,\res_sum_reg[18]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[19] ,\res_sum_reg_n_0_[18] ,\res_sum_reg_n_0_[17] ,\res_sum_reg_n_0_[16] }),
        .O(data1[19:16]),
        .S({\res_sum[18]_i_4_n_0 ,\res_sum[18]_i_5_n_0 ,\res_sum[18]_i_6_n_0 ,\res_sum[18]_i_7_n_0 }));
  FDRE \res_sum_reg[19] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[19]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \res_sum_reg[1] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[1]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \res_sum_reg[20] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[20]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \res_sum_reg[21] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[21]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \res_sum_reg[22] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[22]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \res_sum_reg[23] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[23]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[23] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[23]_i_3 
       (.CI(\res_sum_reg[18]_i_3_n_0 ),
        .CO({\res_sum_reg[23]_i_3_n_0 ,\res_sum_reg[23]_i_3_n_1 ,\res_sum_reg[23]_i_3_n_2 ,\res_sum_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[23] ,\res_sum_reg_n_0_[22] ,\res_sum_reg_n_0_[21] ,\res_sum_reg_n_0_[20] }),
        .O(data1[23:20]),
        .S({\res_sum[23]_i_4_n_0 ,\res_sum[23]_i_5_n_0 ,\res_sum[23]_i_6_n_0 ,\res_sum[23]_i_7_n_0 }));
  FDRE \res_sum_reg[24] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[24]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \res_sum_reg[25] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[25]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \res_sum_reg[26] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[26]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \res_sum_reg[27] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[27]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[27] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[27]_i_3 
       (.CI(\res_sum_reg[23]_i_3_n_0 ),
        .CO({\res_sum_reg[27]_i_3_n_0 ,\res_sum_reg[27]_i_3_n_1 ,\res_sum_reg[27]_i_3_n_2 ,\res_sum_reg[27]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[27] ,\res_sum_reg_n_0_[26] ,\res_sum_reg_n_0_[25] ,\res_sum_reg_n_0_[24] }),
        .O(data1[27:24]),
        .S({\res_sum[27]_i_4_n_0 ,\res_sum[27]_i_5_n_0 ,\res_sum[27]_i_6_n_0 ,\res_sum[27]_i_7_n_0 }));
  FDRE \res_sum_reg[28] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[28]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \res_sum_reg[29] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[29]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \res_sum_reg[2] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[2]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[2] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[2]_i_3 
       (.CI(1'b0),
        .CO({\res_sum_reg[2]_i_3_n_0 ,\res_sum_reg[2]_i_3_n_1 ,\res_sum_reg[2]_i_3_n_2 ,\res_sum_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[3] ,\res_sum_reg_n_0_[2] ,\res_sum_reg_n_0_[1] ,\res_sum_reg_n_0_[0] }),
        .O(data1[3:0]),
        .S({\res_sum[2]_i_4_n_0 ,\res_sum[2]_i_5_n_0 ,\res_sum[2]_i_6_n_0 ,\res_sum[2]_i_7_n_0 }));
  FDRE \res_sum_reg[30] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[30]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[30] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[30]_i_3 
       (.CI(\res_sum_reg[27]_i_3_n_0 ),
        .CO({\NLW_res_sum_reg[30]_i_3_CO_UNCONNECTED [3:2],\res_sum_reg[30]_i_3_n_2 ,\res_sum_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\res_sum_reg_n_0_[29] ,\res_sum_reg_n_0_[28] }),
        .O({\NLW_res_sum_reg[30]_i_3_O_UNCONNECTED [3],data1[30:28]}),
        .S({1'b0,\res_sum[30]_i_4_n_0 ,\res_sum[30]_i_5_n_0 ,\res_sum[30]_i_6_n_0 }));
  FDRE \res_sum_reg[31] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[31]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \res_sum_reg[3] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[3]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \res_sum_reg[4] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[4]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \res_sum_reg[5] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[5]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \res_sum_reg[6] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[6]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[6] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[6]_i_3 
       (.CI(\res_sum_reg[2]_i_3_n_0 ),
        .CO({\res_sum_reg[6]_i_3_n_0 ,\res_sum_reg[6]_i_3_n_1 ,\res_sum_reg[6]_i_3_n_2 ,\res_sum_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\res_sum_reg_n_0_[7] ,\res_sum_reg_n_0_[6] ,\res_sum_reg_n_0_[5] ,\res_sum_reg_n_0_[4] }),
        .O(data1[7:4]),
        .S({\res_sum[6]_i_4_n_0 ,\res_sum[6]_i_5_n_0 ,\res_sum[6]_i_6_n_0 ,\res_sum[6]_i_7_n_0 }));
  FDRE \res_sum_reg[7] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[7]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \res_sum_reg[8] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[8]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \res_sum_reg[9] 
       (.C(Clock),
        .CE(res_sum),
        .D(\res_sum[9]_i_1_n_0 ),
        .Q(\res_sum_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
