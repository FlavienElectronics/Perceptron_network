// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan  5 08:35:46 2026
// Host        : insa-21101 running 64-bit Linux Mint 22
// Command     : write_verilog -mode funcsim -nolib -force -file {/home/lespiaucq/5SEE/Implementation Materielle
//               Perceptron/Perceptron_network/MLP/MLP.sim/sim_1/synth/func/xsim/simulation_Perceptron_func_synth.v}
// Design      : Perceptron
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Perceptron
   (Enable,
    Input_Value,
    Clock,
    Reset,
    Valid,
    Output_Value);
  input Enable;
  input [31:0]Input_Value;
  input Clock;
  input Reset;
  output Valid;
  output [31:0]Output_Value;

  wire Clock;
  wire Clock_IBUF;
  wire Clock_IBUF_BUFG;
  wire Enable;
  wire Enable_IBUF;
  wire [31:0]Input_Value;
  wire [31:0]Input_Value_IBUF;
  wire [31:0]Output_Value;
  wire [31:0]Output_Value_OBUF;
  wire [30:0]R;
  wire Reset;
  wire Reset_IBUF;
  wire Valid;
  wire Valid_OBUF;
  wire Valid_i_1_n_0;
  wire Valid_i_2_n_0;
  wire Valid_i_3_n_0;
  wire [1:1]\Weight[0] ;
  wire \Weight[2][3]_i_1_n_0 ;
  wire [3:3]\Weight_reg[2] ;
  wire index0;
  wire \index[7]_i_2_n_0 ;
  wire [7:0]index_reg;
  wire multOp__0_i_1_n_0;
  wire multOp__0_i_2_n_0;
  wire multOp__0_n_100;
  wire multOp__0_n_101;
  wire multOp__0_n_102;
  wire multOp__0_n_103;
  wire multOp__0_n_104;
  wire multOp__0_n_105;
  wire multOp__0_n_106;
  wire multOp__0_n_107;
  wire multOp__0_n_108;
  wire multOp__0_n_109;
  wire multOp__0_n_110;
  wire multOp__0_n_111;
  wire multOp__0_n_112;
  wire multOp__0_n_113;
  wire multOp__0_n_114;
  wire multOp__0_n_115;
  wire multOp__0_n_116;
  wire multOp__0_n_117;
  wire multOp__0_n_118;
  wire multOp__0_n_119;
  wire multOp__0_n_120;
  wire multOp__0_n_121;
  wire multOp__0_n_122;
  wire multOp__0_n_123;
  wire multOp__0_n_124;
  wire multOp__0_n_125;
  wire multOp__0_n_126;
  wire multOp__0_n_127;
  wire multOp__0_n_128;
  wire multOp__0_n_129;
  wire multOp__0_n_130;
  wire multOp__0_n_131;
  wire multOp__0_n_132;
  wire multOp__0_n_133;
  wire multOp__0_n_134;
  wire multOp__0_n_135;
  wire multOp__0_n_136;
  wire multOp__0_n_137;
  wire multOp__0_n_138;
  wire multOp__0_n_139;
  wire multOp__0_n_140;
  wire multOp__0_n_141;
  wire multOp__0_n_142;
  wire multOp__0_n_143;
  wire multOp__0_n_144;
  wire multOp__0_n_145;
  wire multOp__0_n_146;
  wire multOp__0_n_147;
  wire multOp__0_n_148;
  wire multOp__0_n_149;
  wire multOp__0_n_150;
  wire multOp__0_n_151;
  wire multOp__0_n_152;
  wire multOp__0_n_153;
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
  wire [30:0]plusOp;
  wire [7:0]plusOp__0;
  wire \res_mul[16]_i_1_n_0 ;
  wire \res_mul_reg[16]__0_n_0 ;
  wire res_mul_reg__0_n_100;
  wire res_mul_reg__0_n_101;
  wire res_mul_reg__0_n_102;
  wire res_mul_reg__0_n_103;
  wire res_mul_reg__0_n_104;
  wire res_mul_reg__0_n_105;
  wire res_mul_reg__0_n_58;
  wire res_mul_reg__0_n_59;
  wire res_mul_reg__0_n_60;
  wire res_mul_reg__0_n_61;
  wire res_mul_reg__0_n_62;
  wire res_mul_reg__0_n_63;
  wire res_mul_reg__0_n_64;
  wire res_mul_reg__0_n_65;
  wire res_mul_reg__0_n_66;
  wire res_mul_reg__0_n_67;
  wire res_mul_reg__0_n_68;
  wire res_mul_reg__0_n_69;
  wire res_mul_reg__0_n_70;
  wire res_mul_reg__0_n_71;
  wire res_mul_reg__0_n_72;
  wire res_mul_reg__0_n_73;
  wire res_mul_reg__0_n_74;
  wire res_mul_reg__0_n_75;
  wire res_mul_reg__0_n_76;
  wire res_mul_reg__0_n_77;
  wire res_mul_reg__0_n_78;
  wire res_mul_reg__0_n_79;
  wire res_mul_reg__0_n_80;
  wire res_mul_reg__0_n_81;
  wire res_mul_reg__0_n_82;
  wire res_mul_reg__0_n_83;
  wire res_mul_reg__0_n_84;
  wire res_mul_reg__0_n_85;
  wire res_mul_reg__0_n_86;
  wire res_mul_reg__0_n_87;
  wire res_mul_reg__0_n_88;
  wire res_mul_reg__0_n_89;
  wire res_mul_reg__0_n_90;
  wire res_mul_reg__0_n_91;
  wire res_mul_reg__0_n_92;
  wire res_mul_reg__0_n_93;
  wire res_mul_reg__0_n_94;
  wire res_mul_reg__0_n_95;
  wire res_mul_reg__0_n_96;
  wire res_mul_reg__0_n_97;
  wire res_mul_reg__0_n_98;
  wire res_mul_reg__0_n_99;
  wire \res_mul_reg_n_0_[0] ;
  wire \res_mul_reg_n_0_[10] ;
  wire \res_mul_reg_n_0_[11] ;
  wire \res_mul_reg_n_0_[12] ;
  wire \res_mul_reg_n_0_[13] ;
  wire \res_mul_reg_n_0_[14] ;
  wire \res_mul_reg_n_0_[15] ;
  wire \res_mul_reg_n_0_[16] ;
  wire \res_mul_reg_n_0_[1] ;
  wire \res_mul_reg_n_0_[2] ;
  wire \res_mul_reg_n_0_[3] ;
  wire \res_mul_reg_n_0_[4] ;
  wire \res_mul_reg_n_0_[5] ;
  wire \res_mul_reg_n_0_[6] ;
  wire \res_mul_reg_n_0_[7] ;
  wire \res_mul_reg_n_0_[8] ;
  wire \res_mul_reg_n_0_[9] ;
  wire res_mul_reg_n_100;
  wire res_mul_reg_n_101;
  wire res_mul_reg_n_102;
  wire res_mul_reg_n_103;
  wire res_mul_reg_n_104;
  wire res_mul_reg_n_105;
  wire res_mul_reg_n_58;
  wire res_mul_reg_n_59;
  wire res_mul_reg_n_60;
  wire res_mul_reg_n_61;
  wire res_mul_reg_n_62;
  wire res_mul_reg_n_63;
  wire res_mul_reg_n_64;
  wire res_mul_reg_n_65;
  wire res_mul_reg_n_66;
  wire res_mul_reg_n_67;
  wire res_mul_reg_n_68;
  wire res_mul_reg_n_69;
  wire res_mul_reg_n_70;
  wire res_mul_reg_n_71;
  wire res_mul_reg_n_72;
  wire res_mul_reg_n_73;
  wire res_mul_reg_n_74;
  wire res_mul_reg_n_75;
  wire res_mul_reg_n_76;
  wire res_mul_reg_n_77;
  wire res_mul_reg_n_78;
  wire res_mul_reg_n_79;
  wire res_mul_reg_n_80;
  wire res_mul_reg_n_81;
  wire res_mul_reg_n_82;
  wire res_mul_reg_n_83;
  wire res_mul_reg_n_84;
  wire res_mul_reg_n_85;
  wire res_mul_reg_n_86;
  wire res_mul_reg_n_87;
  wire res_mul_reg_n_88;
  wire res_mul_reg_n_89;
  wire res_mul_reg_n_90;
  wire res_mul_reg_n_91;
  wire res_mul_reg_n_92;
  wire res_mul_reg_n_93;
  wire res_mul_reg_n_94;
  wire res_mul_reg_n_95;
  wire res_mul_reg_n_96;
  wire res_mul_reg_n_97;
  wire res_mul_reg_n_98;
  wire res_mul_reg_n_99;
  wire [31:0]res_sum;
  wire \res_sum[11]_i_10_n_0 ;
  wire \res_sum[11]_i_2_n_0 ;
  wire \res_sum[11]_i_3_n_0 ;
  wire \res_sum[11]_i_4_n_0 ;
  wire \res_sum[11]_i_5_n_0 ;
  wire \res_sum[11]_i_7_n_0 ;
  wire \res_sum[11]_i_8_n_0 ;
  wire \res_sum[11]_i_9_n_0 ;
  wire \res_sum[15]_i_10_n_0 ;
  wire \res_sum[15]_i_2_n_0 ;
  wire \res_sum[15]_i_3_n_0 ;
  wire \res_sum[15]_i_4_n_0 ;
  wire \res_sum[15]_i_5_n_0 ;
  wire \res_sum[15]_i_7_n_0 ;
  wire \res_sum[15]_i_8_n_0 ;
  wire \res_sum[15]_i_9_n_0 ;
  wire \res_sum[19]_i_10_n_0 ;
  wire \res_sum[19]_i_2_n_0 ;
  wire \res_sum[19]_i_3_n_0 ;
  wire \res_sum[19]_i_4_n_0 ;
  wire \res_sum[19]_i_5_n_0 ;
  wire \res_sum[19]_i_7_n_0 ;
  wire \res_sum[19]_i_8_n_0 ;
  wire \res_sum[19]_i_9_n_0 ;
  wire \res_sum[23]_i_10_n_0 ;
  wire \res_sum[23]_i_2_n_0 ;
  wire \res_sum[23]_i_3_n_0 ;
  wire \res_sum[23]_i_4_n_0 ;
  wire \res_sum[23]_i_5_n_0 ;
  wire \res_sum[23]_i_7_n_0 ;
  wire \res_sum[23]_i_8_n_0 ;
  wire \res_sum[23]_i_9_n_0 ;
  wire \res_sum[27]_i_10_n_0 ;
  wire \res_sum[27]_i_2_n_0 ;
  wire \res_sum[27]_i_3_n_0 ;
  wire \res_sum[27]_i_4_n_0 ;
  wire \res_sum[27]_i_5_n_0 ;
  wire \res_sum[27]_i_7_n_0 ;
  wire \res_sum[27]_i_8_n_0 ;
  wire \res_sum[27]_i_9_n_0 ;
  wire \res_sum[30]_i_2_n_0 ;
  wire \res_sum[30]_i_3_n_0 ;
  wire \res_sum[30]_i_4_n_0 ;
  wire \res_sum[30]_i_6_n_0 ;
  wire \res_sum[30]_i_7_n_0 ;
  wire \res_sum[30]_i_8_n_0 ;
  wire \res_sum[30]_i_9_n_0 ;
  wire \res_sum[31]_i_10_n_0 ;
  wire \res_sum[31]_i_11_n_0 ;
  wire \res_sum[31]_i_13_n_0 ;
  wire \res_sum[31]_i_14_n_0 ;
  wire \res_sum[31]_i_15_n_0 ;
  wire \res_sum[31]_i_16_n_0 ;
  wire \res_sum[31]_i_17_n_0 ;
  wire \res_sum[31]_i_18_n_0 ;
  wire \res_sum[31]_i_19_n_0 ;
  wire \res_sum[31]_i_20_n_0 ;
  wire \res_sum[31]_i_3_n_0 ;
  wire \res_sum[31]_i_4_n_0 ;
  wire \res_sum[31]_i_5_n_0 ;
  wire \res_sum[31]_i_6_n_0 ;
  wire \res_sum[31]_i_8_n_0 ;
  wire \res_sum[31]_i_9_n_0 ;
  wire \res_sum[3]_i_2_n_0 ;
  wire \res_sum[3]_i_3_n_0 ;
  wire \res_sum[3]_i_4_n_0 ;
  wire \res_sum[3]_i_5_n_0 ;
  wire \res_sum[3]_i_7_n_0 ;
  wire \res_sum[3]_i_8_n_0 ;
  wire \res_sum[3]_i_9_n_0 ;
  wire \res_sum[7]_i_10_n_0 ;
  wire \res_sum[7]_i_2_n_0 ;
  wire \res_sum[7]_i_3_n_0 ;
  wire \res_sum[7]_i_4_n_0 ;
  wire \res_sum[7]_i_5_n_0 ;
  wire \res_sum[7]_i_7_n_0 ;
  wire \res_sum[7]_i_8_n_0 ;
  wire \res_sum[7]_i_9_n_0 ;
  wire \res_sum_reg[11]_i_1_n_0 ;
  wire \res_sum_reg[11]_i_1_n_1 ;
  wire \res_sum_reg[11]_i_1_n_2 ;
  wire \res_sum_reg[11]_i_1_n_3 ;
  wire \res_sum_reg[11]_i_6_n_0 ;
  wire \res_sum_reg[11]_i_6_n_1 ;
  wire \res_sum_reg[11]_i_6_n_2 ;
  wire \res_sum_reg[11]_i_6_n_3 ;
  wire \res_sum_reg[15]_i_1_n_0 ;
  wire \res_sum_reg[15]_i_1_n_1 ;
  wire \res_sum_reg[15]_i_1_n_2 ;
  wire \res_sum_reg[15]_i_1_n_3 ;
  wire \res_sum_reg[15]_i_6_n_0 ;
  wire \res_sum_reg[15]_i_6_n_1 ;
  wire \res_sum_reg[15]_i_6_n_2 ;
  wire \res_sum_reg[15]_i_6_n_3 ;
  wire \res_sum_reg[19]_i_1_n_0 ;
  wire \res_sum_reg[19]_i_1_n_1 ;
  wire \res_sum_reg[19]_i_1_n_2 ;
  wire \res_sum_reg[19]_i_1_n_3 ;
  wire \res_sum_reg[19]_i_6_n_0 ;
  wire \res_sum_reg[19]_i_6_n_1 ;
  wire \res_sum_reg[19]_i_6_n_2 ;
  wire \res_sum_reg[19]_i_6_n_3 ;
  wire \res_sum_reg[23]_i_1_n_0 ;
  wire \res_sum_reg[23]_i_1_n_1 ;
  wire \res_sum_reg[23]_i_1_n_2 ;
  wire \res_sum_reg[23]_i_1_n_3 ;
  wire \res_sum_reg[23]_i_6_n_0 ;
  wire \res_sum_reg[23]_i_6_n_1 ;
  wire \res_sum_reg[23]_i_6_n_2 ;
  wire \res_sum_reg[23]_i_6_n_3 ;
  wire \res_sum_reg[27]_i_1_n_0 ;
  wire \res_sum_reg[27]_i_1_n_1 ;
  wire \res_sum_reg[27]_i_1_n_2 ;
  wire \res_sum_reg[27]_i_1_n_3 ;
  wire \res_sum_reg[27]_i_6_n_0 ;
  wire \res_sum_reg[27]_i_6_n_1 ;
  wire \res_sum_reg[27]_i_6_n_2 ;
  wire \res_sum_reg[27]_i_6_n_3 ;
  wire \res_sum_reg[30]_i_1_n_2 ;
  wire \res_sum_reg[30]_i_1_n_3 ;
  wire \res_sum_reg[30]_i_5_n_0 ;
  wire \res_sum_reg[30]_i_5_n_1 ;
  wire \res_sum_reg[30]_i_5_n_2 ;
  wire \res_sum_reg[30]_i_5_n_3 ;
  wire \res_sum_reg[31]_i_12_n_0 ;
  wire \res_sum_reg[31]_i_12_n_1 ;
  wire \res_sum_reg[31]_i_12_n_2 ;
  wire \res_sum_reg[31]_i_12_n_3 ;
  wire \res_sum_reg[31]_i_1_n_1 ;
  wire \res_sum_reg[31]_i_1_n_2 ;
  wire \res_sum_reg[31]_i_1_n_3 ;
  wire \res_sum_reg[31]_i_1_n_4 ;
  wire \res_sum_reg[31]_i_2_n_0 ;
  wire \res_sum_reg[31]_i_2_n_1 ;
  wire \res_sum_reg[31]_i_2_n_2 ;
  wire \res_sum_reg[31]_i_2_n_3 ;
  wire \res_sum_reg[31]_i_7_n_0 ;
  wire \res_sum_reg[31]_i_7_n_1 ;
  wire \res_sum_reg[31]_i_7_n_2 ;
  wire \res_sum_reg[31]_i_7_n_3 ;
  wire \res_sum_reg[3]_i_1_n_0 ;
  wire \res_sum_reg[3]_i_1_n_1 ;
  wire \res_sum_reg[3]_i_1_n_2 ;
  wire \res_sum_reg[3]_i_1_n_3 ;
  wire \res_sum_reg[3]_i_6_n_0 ;
  wire \res_sum_reg[3]_i_6_n_1 ;
  wire \res_sum_reg[3]_i_6_n_2 ;
  wire \res_sum_reg[3]_i_6_n_3 ;
  wire \res_sum_reg[7]_i_1_n_0 ;
  wire \res_sum_reg[7]_i_1_n_1 ;
  wire \res_sum_reg[7]_i_1_n_2 ;
  wire \res_sum_reg[7]_i_1_n_3 ;
  wire \res_sum_reg[7]_i_6_n_0 ;
  wire \res_sum_reg[7]_i_6_n_1 ;
  wire \res_sum_reg[7]_i_6_n_2 ;
  wire \res_sum_reg[7]_i_6_n_3 ;
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
  wire NLW_res_mul_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_mul_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_mul_reg_OVERFLOW_UNCONNECTED;
  wire NLW_res_mul_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_mul_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_mul_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_res_mul_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_res_mul_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_mul_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_res_mul_reg_PCOUT_UNCONNECTED;
  wire NLW_res_mul_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_res_mul_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_res_mul_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_res_mul_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_res_mul_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_res_mul_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_res_mul_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_res_mul_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_res_mul_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_res_mul_reg__0_PCOUT_UNCONNECTED;
  wire [3:2]\NLW_res_sum_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_res_sum_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_res_sum_reg[30]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_res_sum_reg[31]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_res_sum_reg[31]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_res_sum_reg[31]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_res_sum_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_res_sum_reg[31]_i_7_O_UNCONNECTED ;

  BUFG Clock_IBUF_BUFG_inst
       (.I(Clock_IBUF),
        .O(Clock_IBUF_BUFG));
  IBUF Clock_IBUF_inst
       (.I(Clock),
        .O(Clock_IBUF));
  IBUF Enable_IBUF_inst
       (.I(Enable),
        .O(Enable_IBUF));
  IBUF \Input_Value_IBUF[0]_inst 
       (.I(Input_Value[0]),
        .O(Input_Value_IBUF[0]));
  IBUF \Input_Value_IBUF[10]_inst 
       (.I(Input_Value[10]),
        .O(Input_Value_IBUF[10]));
  IBUF \Input_Value_IBUF[11]_inst 
       (.I(Input_Value[11]),
        .O(Input_Value_IBUF[11]));
  IBUF \Input_Value_IBUF[12]_inst 
       (.I(Input_Value[12]),
        .O(Input_Value_IBUF[12]));
  IBUF \Input_Value_IBUF[13]_inst 
       (.I(Input_Value[13]),
        .O(Input_Value_IBUF[13]));
  IBUF \Input_Value_IBUF[14]_inst 
       (.I(Input_Value[14]),
        .O(Input_Value_IBUF[14]));
  IBUF \Input_Value_IBUF[15]_inst 
       (.I(Input_Value[15]),
        .O(Input_Value_IBUF[15]));
  IBUF \Input_Value_IBUF[16]_inst 
       (.I(Input_Value[16]),
        .O(Input_Value_IBUF[16]));
  IBUF \Input_Value_IBUF[17]_inst 
       (.I(Input_Value[17]),
        .O(Input_Value_IBUF[17]));
  IBUF \Input_Value_IBUF[18]_inst 
       (.I(Input_Value[18]),
        .O(Input_Value_IBUF[18]));
  IBUF \Input_Value_IBUF[19]_inst 
       (.I(Input_Value[19]),
        .O(Input_Value_IBUF[19]));
  IBUF \Input_Value_IBUF[1]_inst 
       (.I(Input_Value[1]),
        .O(Input_Value_IBUF[1]));
  IBUF \Input_Value_IBUF[20]_inst 
       (.I(Input_Value[20]),
        .O(Input_Value_IBUF[20]));
  IBUF \Input_Value_IBUF[21]_inst 
       (.I(Input_Value[21]),
        .O(Input_Value_IBUF[21]));
  IBUF \Input_Value_IBUF[22]_inst 
       (.I(Input_Value[22]),
        .O(Input_Value_IBUF[22]));
  IBUF \Input_Value_IBUF[23]_inst 
       (.I(Input_Value[23]),
        .O(Input_Value_IBUF[23]));
  IBUF \Input_Value_IBUF[24]_inst 
       (.I(Input_Value[24]),
        .O(Input_Value_IBUF[24]));
  IBUF \Input_Value_IBUF[25]_inst 
       (.I(Input_Value[25]),
        .O(Input_Value_IBUF[25]));
  IBUF \Input_Value_IBUF[26]_inst 
       (.I(Input_Value[26]),
        .O(Input_Value_IBUF[26]));
  IBUF \Input_Value_IBUF[27]_inst 
       (.I(Input_Value[27]),
        .O(Input_Value_IBUF[27]));
  IBUF \Input_Value_IBUF[28]_inst 
       (.I(Input_Value[28]),
        .O(Input_Value_IBUF[28]));
  IBUF \Input_Value_IBUF[29]_inst 
       (.I(Input_Value[29]),
        .O(Input_Value_IBUF[29]));
  IBUF \Input_Value_IBUF[2]_inst 
       (.I(Input_Value[2]),
        .O(Input_Value_IBUF[2]));
  IBUF \Input_Value_IBUF[30]_inst 
       (.I(Input_Value[30]),
        .O(Input_Value_IBUF[30]));
  IBUF \Input_Value_IBUF[31]_inst 
       (.I(Input_Value[31]),
        .O(Input_Value_IBUF[31]));
  IBUF \Input_Value_IBUF[3]_inst 
       (.I(Input_Value[3]),
        .O(Input_Value_IBUF[3]));
  IBUF \Input_Value_IBUF[4]_inst 
       (.I(Input_Value[4]),
        .O(Input_Value_IBUF[4]));
  IBUF \Input_Value_IBUF[5]_inst 
       (.I(Input_Value[5]),
        .O(Input_Value_IBUF[5]));
  IBUF \Input_Value_IBUF[6]_inst 
       (.I(Input_Value[6]),
        .O(Input_Value_IBUF[6]));
  IBUF \Input_Value_IBUF[7]_inst 
       (.I(Input_Value[7]),
        .O(Input_Value_IBUF[7]));
  IBUF \Input_Value_IBUF[8]_inst 
       (.I(Input_Value[8]),
        .O(Input_Value_IBUF[8]));
  IBUF \Input_Value_IBUF[9]_inst 
       (.I(Input_Value[9]),
        .O(Input_Value_IBUF[9]));
  OBUF \Output_Value_OBUF[0]_inst 
       (.I(Output_Value_OBUF[0]),
        .O(Output_Value[0]));
  OBUF \Output_Value_OBUF[10]_inst 
       (.I(Output_Value_OBUF[10]),
        .O(Output_Value[10]));
  OBUF \Output_Value_OBUF[11]_inst 
       (.I(Output_Value_OBUF[11]),
        .O(Output_Value[11]));
  OBUF \Output_Value_OBUF[12]_inst 
       (.I(Output_Value_OBUF[12]),
        .O(Output_Value[12]));
  OBUF \Output_Value_OBUF[13]_inst 
       (.I(Output_Value_OBUF[13]),
        .O(Output_Value[13]));
  OBUF \Output_Value_OBUF[14]_inst 
       (.I(Output_Value_OBUF[14]),
        .O(Output_Value[14]));
  OBUF \Output_Value_OBUF[15]_inst 
       (.I(Output_Value_OBUF[15]),
        .O(Output_Value[15]));
  OBUF \Output_Value_OBUF[16]_inst 
       (.I(Output_Value_OBUF[16]),
        .O(Output_Value[16]));
  OBUF \Output_Value_OBUF[17]_inst 
       (.I(Output_Value_OBUF[17]),
        .O(Output_Value[17]));
  OBUF \Output_Value_OBUF[18]_inst 
       (.I(Output_Value_OBUF[18]),
        .O(Output_Value[18]));
  OBUF \Output_Value_OBUF[19]_inst 
       (.I(Output_Value_OBUF[19]),
        .O(Output_Value[19]));
  OBUF \Output_Value_OBUF[1]_inst 
       (.I(Output_Value_OBUF[1]),
        .O(Output_Value[1]));
  OBUF \Output_Value_OBUF[20]_inst 
       (.I(Output_Value_OBUF[20]),
        .O(Output_Value[20]));
  OBUF \Output_Value_OBUF[21]_inst 
       (.I(Output_Value_OBUF[21]),
        .O(Output_Value[21]));
  OBUF \Output_Value_OBUF[22]_inst 
       (.I(Output_Value_OBUF[22]),
        .O(Output_Value[22]));
  OBUF \Output_Value_OBUF[23]_inst 
       (.I(Output_Value_OBUF[23]),
        .O(Output_Value[23]));
  OBUF \Output_Value_OBUF[24]_inst 
       (.I(Output_Value_OBUF[24]),
        .O(Output_Value[24]));
  OBUF \Output_Value_OBUF[25]_inst 
       (.I(Output_Value_OBUF[25]),
        .O(Output_Value[25]));
  OBUF \Output_Value_OBUF[26]_inst 
       (.I(Output_Value_OBUF[26]),
        .O(Output_Value[26]));
  OBUF \Output_Value_OBUF[27]_inst 
       (.I(Output_Value_OBUF[27]),
        .O(Output_Value[27]));
  OBUF \Output_Value_OBUF[28]_inst 
       (.I(Output_Value_OBUF[28]),
        .O(Output_Value[28]));
  OBUF \Output_Value_OBUF[29]_inst 
       (.I(Output_Value_OBUF[29]),
        .O(Output_Value[29]));
  OBUF \Output_Value_OBUF[2]_inst 
       (.I(Output_Value_OBUF[2]),
        .O(Output_Value[2]));
  OBUF \Output_Value_OBUF[30]_inst 
       (.I(Output_Value_OBUF[30]),
        .O(Output_Value[30]));
  OBUF \Output_Value_OBUF[31]_inst 
       (.I(Output_Value_OBUF[31]),
        .O(Output_Value[31]));
  OBUF \Output_Value_OBUF[3]_inst 
       (.I(Output_Value_OBUF[3]),
        .O(Output_Value[3]));
  OBUF \Output_Value_OBUF[4]_inst 
       (.I(Output_Value_OBUF[4]),
        .O(Output_Value[4]));
  OBUF \Output_Value_OBUF[5]_inst 
       (.I(Output_Value_OBUF[5]),
        .O(Output_Value[5]));
  OBUF \Output_Value_OBUF[6]_inst 
       (.I(Output_Value_OBUF[6]),
        .O(Output_Value[6]));
  OBUF \Output_Value_OBUF[7]_inst 
       (.I(Output_Value_OBUF[7]),
        .O(Output_Value[7]));
  OBUF \Output_Value_OBUF[8]_inst 
       (.I(Output_Value_OBUF[8]),
        .O(Output_Value[8]));
  OBUF \Output_Value_OBUF[9]_inst 
       (.I(Output_Value_OBUF[9]),
        .O(Output_Value[9]));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[0] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[0]),
        .Q(Output_Value_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[10] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[10]),
        .Q(Output_Value_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[11] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[11]),
        .Q(Output_Value_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[12] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[12]),
        .Q(Output_Value_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[13] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[13]),
        .Q(Output_Value_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[14] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[14]),
        .Q(Output_Value_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[15] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[15]),
        .Q(Output_Value_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[16] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[16]),
        .Q(Output_Value_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[17] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[17]),
        .Q(Output_Value_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[18] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[18]),
        .Q(Output_Value_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[19] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[19]),
        .Q(Output_Value_OBUF[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[1] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[1]),
        .Q(Output_Value_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[20] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[20]),
        .Q(Output_Value_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[21] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[21]),
        .Q(Output_Value_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[22] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[22]),
        .Q(Output_Value_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[23] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[23]),
        .Q(Output_Value_OBUF[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[24] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[24]),
        .Q(Output_Value_OBUF[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[25] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[25]),
        .Q(Output_Value_OBUF[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[26] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[26]),
        .Q(Output_Value_OBUF[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[27] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[27]),
        .Q(Output_Value_OBUF[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[28] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[28]),
        .Q(Output_Value_OBUF[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[29] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[29]),
        .Q(Output_Value_OBUF[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[2] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[2]),
        .Q(Output_Value_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[30] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[30]),
        .Q(Output_Value_OBUF[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[31] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[31]),
        .Q(Output_Value_OBUF[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[3] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[3]),
        .Q(Output_Value_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[4] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[4]),
        .Q(Output_Value_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[5] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[5]),
        .Q(Output_Value_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[6] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[6]),
        .Q(Output_Value_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[7] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[7]),
        .Q(Output_Value_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[8] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[8]),
        .Q(Output_Value_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Output_Value_reg[9] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(res_sum[9]),
        .Q(Output_Value_OBUF[9]),
        .R(1'b0));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  OBUF Valid_OBUF_inst
       (.I(Valid_OBUF),
        .O(Valid));
  LUT5 #(
    .INIT(32'h44444440)) 
    Valid_i_1
       (.I0(Valid_OBUF),
        .I1(Enable_IBUF),
        .I2(index_reg[7]),
        .I3(index_reg[6]),
        .I4(Valid_i_3_n_0),
        .O(Valid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Valid_i_2
       (.I0(Reset_IBUF),
        .O(Valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    Valid_i_3
       (.I0(index_reg[0]),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .I3(index_reg[3]),
        .I4(index_reg[4]),
        .I5(index_reg[5]),
        .O(Valid_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    Valid_reg
       (.C(Clock_IBUF_BUFG),
        .CE(Valid_i_2_n_0),
        .D(Reset_IBUF),
        .Q(Valid_OBUF),
        .S(Valid_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \Weight[2][3]_i_1 
       (.I0(\Weight_reg[2] ),
        .I1(Reset_IBUF),
        .O(\Weight[2][3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Weight_reg[2][3] 
       (.C(Clock_IBUF_BUFG),
        .CE(1'b1),
        .D(\Weight[2][3]_i_1_n_0 ),
        .Q(\Weight_reg[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index_reg[0]),
        .I1(index_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(index_reg[0]),
        .I1(index_reg[1]),
        .I2(index_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(index_reg[1]),
        .I1(index_reg[0]),
        .I2(index_reg[2]),
        .I3(index_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[4]_i_1 
       (.I0(index_reg[2]),
        .I1(index_reg[0]),
        .I2(index_reg[1]),
        .I3(index_reg[3]),
        .I4(index_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \index[5]_i_1 
       (.I0(index_reg[3]),
        .I1(index_reg[1]),
        .I2(index_reg[0]),
        .I3(index_reg[2]),
        .I4(index_reg[4]),
        .I5(index_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[6]_i_1 
       (.I0(\index[7]_i_2_n_0 ),
        .I1(index_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[7]_i_1 
       (.I0(\index[7]_i_2_n_0 ),
        .I1(index_reg[6]),
        .I2(index_reg[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \index[7]_i_2 
       (.I0(index_reg[5]),
        .I1(index_reg[3]),
        .I2(index_reg[1]),
        .I3(index_reg[0]),
        .I4(index_reg[2]),
        .I5(index_reg[4]),
        .O(\index[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp__0[0]),
        .Q(index_reg[0]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp__0[1]),
        .Q(index_reg[1]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp__0[2]),
        .Q(index_reg[2]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp__0[3]),
        .Q(index_reg[3]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[4] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp__0[4]),
        .Q(index_reg[4]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[5] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp__0[5]),
        .Q(index_reg[5]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[6] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp__0[6]),
        .Q(index_reg[6]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \index_reg[7] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp__0[7]),
        .Q(index_reg[7]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Input_Value_IBUF[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
    multOp__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,multOp__0_i_1_n_0,multOp__0_i_2_n_0,\Weight[0] ,multOp__0_i_2_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Input_Value_IBUF[16:0]}),
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
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp__0_OVERFLOW_UNCONNECTED),
        .P({multOp__0_n_58,multOp__0_n_59,multOp__0_n_60,multOp__0_n_61,multOp__0_n_62,multOp__0_n_63,multOp__0_n_64,multOp__0_n_65,multOp__0_n_66,multOp__0_n_67,multOp__0_n_68,multOp__0_n_69,multOp__0_n_70,multOp__0_n_71,multOp__0_n_72,multOp__0_n_73,multOp__0_n_74,multOp__0_n_75,multOp__0_n_76,multOp__0_n_77,multOp__0_n_78,multOp__0_n_79,multOp__0_n_80,multOp__0_n_81,multOp__0_n_82,multOp__0_n_83,multOp__0_n_84,multOp__0_n_85,multOp__0_n_86,multOp__0_n_87,multOp__0_n_88,multOp__0_n_89,multOp__0_n_90,multOp__0_n_91,multOp__0_n_92,multOp__0_n_93,multOp__0_n_94,multOp__0_n_95,multOp__0_n_96,multOp__0_n_97,multOp__0_n_98,multOp__0_n_99,multOp__0_n_100,multOp__0_n_101,multOp__0_n_102,multOp__0_n_103,multOp__0_n_104,multOp__0_n_105}),
        .PATTERNBDETECT(NLW_multOp__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({multOp__0_n_106,multOp__0_n_107,multOp__0_n_108,multOp__0_n_109,multOp__0_n_110,multOp__0_n_111,multOp__0_n_112,multOp__0_n_113,multOp__0_n_114,multOp__0_n_115,multOp__0_n_116,multOp__0_n_117,multOp__0_n_118,multOp__0_n_119,multOp__0_n_120,multOp__0_n_121,multOp__0_n_122,multOp__0_n_123,multOp__0_n_124,multOp__0_n_125,multOp__0_n_126,multOp__0_n_127,multOp__0_n_128,multOp__0_n_129,multOp__0_n_130,multOp__0_n_131,multOp__0_n_132,multOp__0_n_133,multOp__0_n_134,multOp__0_n_135,multOp__0_n_136,multOp__0_n_137,multOp__0_n_138,multOp__0_n_139,multOp__0_n_140,multOp__0_n_141,multOp__0_n_142,multOp__0_n_143,multOp__0_n_144,multOp__0_n_145,multOp__0_n_146,multOp__0_n_147,multOp__0_n_148,multOp__0_n_149,multOp__0_n_150,multOp__0_n_151,multOp__0_n_152,multOp__0_n_153}),
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
  LUT3 #(
    .INIT(8'h08)) 
    multOp__0_i_1
       (.I0(\Weight_reg[2] ),
        .I1(index_reg[1]),
        .I2(index_reg[0]),
        .O(multOp__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    multOp__0_i_2
       (.I0(index_reg[1]),
        .I1(\Weight_reg[2] ),
        .I2(index_reg[0]),
        .O(multOp__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    multOp__0_i_3
       (.I0(index_reg[0]),
        .I1(index_reg[1]),
        .I2(\Weight_reg[2] ),
        .O(\Weight[0] ));
  LUT3 #(
    .INIT(8'h0B)) 
    \res_mul[16]_i_1 
       (.I0(Valid_OBUF),
        .I1(Enable_IBUF),
        .I2(Reset_IBUF),
        .O(\res_mul[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \res_mul[16]_i_2 
       (.I0(Enable_IBUF),
        .I1(Valid_OBUF),
        .O(index0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_mul_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_res_mul_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,Input_Value_IBUF[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_mul_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_mul_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_mul_reg_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(index0),
        .CLK(Clock_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_mul_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_mul_reg_OVERFLOW_UNCONNECTED),
        .P({res_mul_reg_n_58,res_mul_reg_n_59,res_mul_reg_n_60,res_mul_reg_n_61,res_mul_reg_n_62,res_mul_reg_n_63,res_mul_reg_n_64,res_mul_reg_n_65,res_mul_reg_n_66,res_mul_reg_n_67,res_mul_reg_n_68,res_mul_reg_n_69,res_mul_reg_n_70,res_mul_reg_n_71,res_mul_reg_n_72,res_mul_reg_n_73,res_mul_reg_n_74,res_mul_reg_n_75,res_mul_reg_n_76,res_mul_reg_n_77,res_mul_reg_n_78,res_mul_reg_n_79,res_mul_reg_n_80,res_mul_reg_n_81,res_mul_reg_n_82,res_mul_reg_n_83,res_mul_reg_n_84,res_mul_reg_n_85,res_mul_reg_n_86,res_mul_reg_n_87,res_mul_reg_n_88,res_mul_reg_n_89,res_mul_reg_n_90,res_mul_reg_n_91,res_mul_reg_n_92,res_mul_reg_n_93,res_mul_reg_n_94,res_mul_reg_n_95,res_mul_reg_n_96,res_mul_reg_n_97,res_mul_reg_n_98,res_mul_reg_n_99,res_mul_reg_n_100,res_mul_reg_n_101,res_mul_reg_n_102,res_mul_reg_n_103,res_mul_reg_n_104,res_mul_reg_n_105}),
        .PATTERNBDETECT(NLW_res_mul_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_mul_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({multOp_n_106,multOp_n_107,multOp_n_108,multOp_n_109,multOp_n_110,multOp_n_111,multOp_n_112,multOp_n_113,multOp_n_114,multOp_n_115,multOp_n_116,multOp_n_117,multOp_n_118,multOp_n_119,multOp_n_120,multOp_n_121,multOp_n_122,multOp_n_123,multOp_n_124,multOp_n_125,multOp_n_126,multOp_n_127,multOp_n_128,multOp_n_129,multOp_n_130,multOp_n_131,multOp_n_132,multOp_n_133,multOp_n_134,multOp_n_135,multOp_n_136,multOp_n_137,multOp_n_138,multOp_n_139,multOp_n_140,multOp_n_141,multOp_n_142,multOp_n_143,multOp_n_144,multOp_n_145,multOp_n_146,multOp_n_147,multOp_n_148,multOp_n_149,multOp_n_150,multOp_n_151,multOp_n_152,multOp_n_153}),
        .PCOUT(NLW_res_mul_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(\res_mul[16]_i_1_n_0 ),
        .UNDERFLOW(NLW_res_mul_reg_UNDERFLOW_UNCONNECTED));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[0] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_105),
        .Q(\res_mul_reg_n_0_[0] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[10] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_95),
        .Q(\res_mul_reg_n_0_[10] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[11] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_94),
        .Q(\res_mul_reg_n_0_[11] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[12] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_93),
        .Q(\res_mul_reg_n_0_[12] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[13] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_92),
        .Q(\res_mul_reg_n_0_[13] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[14] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_91),
        .Q(\res_mul_reg_n_0_[14] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[15] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_90),
        .Q(\res_mul_reg_n_0_[15] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[16] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_89),
        .Q(\res_mul_reg_n_0_[16] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[16]__0 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp__0_n_89),
        .Q(\res_mul_reg[16]__0_n_0 ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[1] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_104),
        .Q(\res_mul_reg_n_0_[1] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[2] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_103),
        .Q(\res_mul_reg_n_0_[2] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[3] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_102),
        .Q(\res_mul_reg_n_0_[3] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[4] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_101),
        .Q(\res_mul_reg_n_0_[4] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[5] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_100),
        .Q(\res_mul_reg_n_0_[5] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[6] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_99),
        .Q(\res_mul_reg_n_0_[6] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[7] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_98),
        .Q(\res_mul_reg_n_0_[7] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[8] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_97),
        .Q(\res_mul_reg_n_0_[8] ),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_mul_reg[9] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(multOp_n_96),
        .Q(\res_mul_reg_n_0_[9] ),
        .R(\res_mul[16]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    res_mul_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,multOp__0_i_1_n_0,multOp__0_i_2_n_0,\Weight[0] ,multOp__0_i_2_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_res_mul_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,Input_Value_IBUF[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_res_mul_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_res_mul_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_res_mul_reg__0_CARRYOUT_UNCONNECTED[3:0]),
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
        .CEP(index0),
        .CLK(Clock_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_res_mul_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_res_mul_reg__0_OVERFLOW_UNCONNECTED),
        .P({res_mul_reg__0_n_58,res_mul_reg__0_n_59,res_mul_reg__0_n_60,res_mul_reg__0_n_61,res_mul_reg__0_n_62,res_mul_reg__0_n_63,res_mul_reg__0_n_64,res_mul_reg__0_n_65,res_mul_reg__0_n_66,res_mul_reg__0_n_67,res_mul_reg__0_n_68,res_mul_reg__0_n_69,res_mul_reg__0_n_70,res_mul_reg__0_n_71,res_mul_reg__0_n_72,res_mul_reg__0_n_73,res_mul_reg__0_n_74,res_mul_reg__0_n_75,res_mul_reg__0_n_76,res_mul_reg__0_n_77,res_mul_reg__0_n_78,res_mul_reg__0_n_79,res_mul_reg__0_n_80,res_mul_reg__0_n_81,res_mul_reg__0_n_82,res_mul_reg__0_n_83,res_mul_reg__0_n_84,res_mul_reg__0_n_85,res_mul_reg__0_n_86,res_mul_reg__0_n_87,res_mul_reg__0_n_88,res_mul_reg__0_n_89,res_mul_reg__0_n_90,res_mul_reg__0_n_91,res_mul_reg__0_n_92,res_mul_reg__0_n_93,res_mul_reg__0_n_94,res_mul_reg__0_n_95,res_mul_reg__0_n_96,res_mul_reg__0_n_97,res_mul_reg__0_n_98,res_mul_reg__0_n_99,res_mul_reg__0_n_100,res_mul_reg__0_n_101,res_mul_reg__0_n_102,res_mul_reg__0_n_103,res_mul_reg__0_n_104,res_mul_reg__0_n_105}),
        .PATTERNBDETECT(NLW_res_mul_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_res_mul_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({multOp__0_n_106,multOp__0_n_107,multOp__0_n_108,multOp__0_n_109,multOp__0_n_110,multOp__0_n_111,multOp__0_n_112,multOp__0_n_113,multOp__0_n_114,multOp__0_n_115,multOp__0_n_116,multOp__0_n_117,multOp__0_n_118,multOp__0_n_119,multOp__0_n_120,multOp__0_n_121,multOp__0_n_122,multOp__0_n_123,multOp__0_n_124,multOp__0_n_125,multOp__0_n_126,multOp__0_n_127,multOp__0_n_128,multOp__0_n_129,multOp__0_n_130,multOp__0_n_131,multOp__0_n_132,multOp__0_n_133,multOp__0_n_134,multOp__0_n_135,multOp__0_n_136,multOp__0_n_137,multOp__0_n_138,multOp__0_n_139,multOp__0_n_140,multOp__0_n_141,multOp__0_n_142,multOp__0_n_143,multOp__0_n_144,multOp__0_n_145,multOp__0_n_146,multOp__0_n_147,multOp__0_n_148,multOp__0_n_149,multOp__0_n_150,multOp__0_n_151,multOp__0_n_152,multOp__0_n_153}),
        .PCOUT(NLW_res_mul_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(\res_mul[16]_i_1_n_0 ),
        .UNDERFLOW(NLW_res_mul_reg__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_10 
       (.I0(res_mul_reg__0_n_98),
        .I1(\res_mul_reg_n_0_[7] ),
        .O(\res_sum[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_2 
       (.I0(res_sum[11]),
        .I1(R[11]),
        .O(\res_sum[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_3 
       (.I0(res_sum[10]),
        .I1(R[10]),
        .O(\res_sum[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_4 
       (.I0(res_sum[9]),
        .I1(R[9]),
        .O(\res_sum[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_5 
       (.I0(res_sum[8]),
        .I1(R[8]),
        .O(\res_sum[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_7 
       (.I0(res_mul_reg__0_n_95),
        .I1(\res_mul_reg_n_0_[10] ),
        .O(\res_sum[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_8 
       (.I0(res_mul_reg__0_n_96),
        .I1(\res_mul_reg_n_0_[9] ),
        .O(\res_sum[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[11]_i_9 
       (.I0(res_mul_reg__0_n_97),
        .I1(\res_mul_reg_n_0_[8] ),
        .O(\res_sum[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[15]_i_10 
       (.I0(res_mul_reg__0_n_94),
        .I1(\res_mul_reg_n_0_[11] ),
        .O(\res_sum[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[15]_i_2 
       (.I0(res_sum[15]),
        .I1(R[15]),
        .O(\res_sum[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[15]_i_3 
       (.I0(res_sum[14]),
        .I1(R[14]),
        .O(\res_sum[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[15]_i_4 
       (.I0(res_sum[13]),
        .I1(R[13]),
        .O(\res_sum[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[15]_i_5 
       (.I0(res_sum[12]),
        .I1(R[12]),
        .O(\res_sum[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[15]_i_7 
       (.I0(res_mul_reg__0_n_91),
        .I1(\res_mul_reg_n_0_[14] ),
        .O(\res_sum[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[15]_i_8 
       (.I0(res_mul_reg__0_n_92),
        .I1(\res_mul_reg_n_0_[13] ),
        .O(\res_sum[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[15]_i_9 
       (.I0(res_mul_reg__0_n_93),
        .I1(\res_mul_reg_n_0_[12] ),
        .O(\res_sum[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[19]_i_10 
       (.I0(res_mul_reg__0_n_90),
        .I1(\res_mul_reg_n_0_[15] ),
        .O(\res_sum[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[19]_i_2 
       (.I0(res_sum[19]),
        .I1(R[19]),
        .O(\res_sum[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[19]_i_3 
       (.I0(res_sum[18]),
        .I1(R[18]),
        .O(\res_sum[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[19]_i_4 
       (.I0(res_sum[17]),
        .I1(R[17]),
        .O(\res_sum[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[19]_i_5 
       (.I0(res_sum[16]),
        .I1(R[16]),
        .O(\res_sum[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[19]_i_7 
       (.I0(res_mul_reg__0_n_87),
        .I1(res_mul_reg_n_104),
        .O(\res_sum[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[19]_i_8 
       (.I0(res_mul_reg__0_n_88),
        .I1(res_mul_reg_n_105),
        .O(\res_sum[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[19]_i_9 
       (.I0(res_mul_reg__0_n_89),
        .I1(\res_mul_reg_n_0_[16] ),
        .O(\res_sum[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_10 
       (.I0(res_mul_reg__0_n_86),
        .I1(res_mul_reg_n_103),
        .O(\res_sum[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_2 
       (.I0(res_sum[23]),
        .I1(R[23]),
        .O(\res_sum[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_3 
       (.I0(res_sum[22]),
        .I1(R[22]),
        .O(\res_sum[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_4 
       (.I0(res_sum[21]),
        .I1(R[21]),
        .O(\res_sum[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_5 
       (.I0(res_sum[20]),
        .I1(R[20]),
        .O(\res_sum[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_7 
       (.I0(res_mul_reg__0_n_83),
        .I1(res_mul_reg_n_100),
        .O(\res_sum[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_8 
       (.I0(res_mul_reg__0_n_84),
        .I1(res_mul_reg_n_101),
        .O(\res_sum[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[23]_i_9 
       (.I0(res_mul_reg__0_n_85),
        .I1(res_mul_reg_n_102),
        .O(\res_sum[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_10 
       (.I0(res_mul_reg__0_n_82),
        .I1(res_mul_reg_n_99),
        .O(\res_sum[27]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_2 
       (.I0(res_sum[27]),
        .I1(R[27]),
        .O(\res_sum[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_3 
       (.I0(res_sum[26]),
        .I1(R[26]),
        .O(\res_sum[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_4 
       (.I0(res_sum[25]),
        .I1(R[25]),
        .O(\res_sum[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_5 
       (.I0(res_sum[24]),
        .I1(R[24]),
        .O(\res_sum[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_7 
       (.I0(res_mul_reg__0_n_79),
        .I1(res_mul_reg_n_96),
        .O(\res_sum[27]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_8 
       (.I0(res_mul_reg__0_n_80),
        .I1(res_mul_reg_n_97),
        .O(\res_sum[27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[27]_i_9 
       (.I0(res_mul_reg__0_n_81),
        .I1(res_mul_reg_n_98),
        .O(\res_sum[27]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_2 
       (.I0(res_sum[30]),
        .I1(R[30]),
        .O(\res_sum[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_3 
       (.I0(res_sum[29]),
        .I1(R[29]),
        .O(\res_sum[30]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_4 
       (.I0(res_sum[28]),
        .I1(R[28]),
        .O(\res_sum[30]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_6 
       (.I0(res_mul_reg__0_n_75),
        .I1(res_mul_reg_n_92),
        .O(\res_sum[30]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_7 
       (.I0(res_mul_reg__0_n_76),
        .I1(res_mul_reg_n_93),
        .O(\res_sum[30]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_8 
       (.I0(res_mul_reg__0_n_77),
        .I1(res_mul_reg_n_94),
        .O(\res_sum[30]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[30]_i_9 
       (.I0(res_mul_reg__0_n_78),
        .I1(res_mul_reg_n_95),
        .O(\res_sum[30]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_10 
       (.I0(res_mul_reg__0_n_65),
        .I1(res_mul_reg_n_82),
        .O(\res_sum[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_11 
       (.I0(res_mul_reg__0_n_66),
        .I1(res_mul_reg_n_83),
        .O(\res_sum[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_13 
       (.I0(res_mul_reg__0_n_67),
        .I1(res_mul_reg_n_84),
        .O(\res_sum[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_14 
       (.I0(res_mul_reg__0_n_68),
        .I1(res_mul_reg_n_85),
        .O(\res_sum[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_15 
       (.I0(res_mul_reg__0_n_69),
        .I1(res_mul_reg_n_86),
        .O(\res_sum[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_16 
       (.I0(res_mul_reg__0_n_70),
        .I1(res_mul_reg_n_87),
        .O(\res_sum[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_17 
       (.I0(res_mul_reg__0_n_71),
        .I1(res_mul_reg_n_88),
        .O(\res_sum[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_18 
       (.I0(res_mul_reg__0_n_72),
        .I1(res_mul_reg_n_89),
        .O(\res_sum[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_19 
       (.I0(res_mul_reg__0_n_73),
        .I1(res_mul_reg_n_90),
        .O(\res_sum[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_20 
       (.I0(res_mul_reg__0_n_74),
        .I1(res_mul_reg_n_91),
        .O(\res_sum[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_3 
       (.I0(res_mul_reg__0_n_59),
        .I1(res_mul_reg_n_76),
        .O(\res_sum[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_4 
       (.I0(res_mul_reg__0_n_60),
        .I1(res_mul_reg_n_77),
        .O(\res_sum[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_5 
       (.I0(res_mul_reg__0_n_61),
        .I1(res_mul_reg_n_78),
        .O(\res_sum[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_6 
       (.I0(res_mul_reg__0_n_62),
        .I1(res_mul_reg_n_79),
        .O(\res_sum[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_8 
       (.I0(res_mul_reg__0_n_63),
        .I1(res_mul_reg_n_80),
        .O(\res_sum[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[31]_i_9 
       (.I0(res_mul_reg__0_n_64),
        .I1(res_mul_reg_n_81),
        .O(\res_sum[31]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[3]_i_2 
       (.I0(res_sum[3]),
        .I1(R[3]),
        .O(\res_sum[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[3]_i_3 
       (.I0(res_sum[2]),
        .I1(R[2]),
        .O(\res_sum[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[3]_i_4 
       (.I0(res_sum[1]),
        .I1(R[1]),
        .O(\res_sum[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[3]_i_5 
       (.I0(res_sum[0]),
        .I1(R[0]),
        .O(\res_sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[3]_i_7 
       (.I0(res_mul_reg__0_n_103),
        .I1(\res_mul_reg_n_0_[2] ),
        .O(\res_sum[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[3]_i_8 
       (.I0(res_mul_reg__0_n_104),
        .I1(\res_mul_reg_n_0_[1] ),
        .O(\res_sum[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[3]_i_9 
       (.I0(res_mul_reg__0_n_105),
        .I1(\res_mul_reg_n_0_[0] ),
        .O(\res_sum[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[7]_i_10 
       (.I0(res_mul_reg__0_n_102),
        .I1(\res_mul_reg_n_0_[3] ),
        .O(\res_sum[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[7]_i_2 
       (.I0(res_sum[7]),
        .I1(R[7]),
        .O(\res_sum[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[7]_i_3 
       (.I0(res_sum[6]),
        .I1(R[6]),
        .O(\res_sum[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[7]_i_4 
       (.I0(res_sum[5]),
        .I1(R[5]),
        .O(\res_sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[7]_i_5 
       (.I0(res_sum[4]),
        .I1(R[4]),
        .O(\res_sum[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[7]_i_7 
       (.I0(res_mul_reg__0_n_99),
        .I1(\res_mul_reg_n_0_[6] ),
        .O(\res_sum[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[7]_i_8 
       (.I0(res_mul_reg__0_n_100),
        .I1(\res_mul_reg_n_0_[5] ),
        .O(\res_sum[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \res_sum[7]_i_9 
       (.I0(res_mul_reg__0_n_101),
        .I1(\res_mul_reg_n_0_[4] ),
        .O(\res_sum[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[0] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[0]),
        .Q(res_sum[0]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[10] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[10]),
        .Q(res_sum[10]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[11] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[11]),
        .Q(res_sum[11]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[11]_i_1 
       (.CI(\res_sum_reg[7]_i_1_n_0 ),
        .CO({\res_sum_reg[11]_i_1_n_0 ,\res_sum_reg[11]_i_1_n_1 ,\res_sum_reg[11]_i_1_n_2 ,\res_sum_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(res_sum[11:8]),
        .O(plusOp[11:8]),
        .S({\res_sum[11]_i_2_n_0 ,\res_sum[11]_i_3_n_0 ,\res_sum[11]_i_4_n_0 ,\res_sum[11]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[11]_i_6 
       (.CI(\res_sum_reg[7]_i_6_n_0 ),
        .CO({\res_sum_reg[11]_i_6_n_0 ,\res_sum_reg[11]_i_6_n_1 ,\res_sum_reg[11]_i_6_n_2 ,\res_sum_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_95,res_mul_reg__0_n_96,res_mul_reg__0_n_97,res_mul_reg__0_n_98}),
        .O(R[11:8]),
        .S({\res_sum[11]_i_7_n_0 ,\res_sum[11]_i_8_n_0 ,\res_sum[11]_i_9_n_0 ,\res_sum[11]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[12] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[12]),
        .Q(res_sum[12]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[13] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[13]),
        .Q(res_sum[13]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[14] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[14]),
        .Q(res_sum[14]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[15] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[15]),
        .Q(res_sum[15]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[15]_i_1 
       (.CI(\res_sum_reg[11]_i_1_n_0 ),
        .CO({\res_sum_reg[15]_i_1_n_0 ,\res_sum_reg[15]_i_1_n_1 ,\res_sum_reg[15]_i_1_n_2 ,\res_sum_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(res_sum[15:12]),
        .O(plusOp[15:12]),
        .S({\res_sum[15]_i_2_n_0 ,\res_sum[15]_i_3_n_0 ,\res_sum[15]_i_4_n_0 ,\res_sum[15]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[15]_i_6 
       (.CI(\res_sum_reg[11]_i_6_n_0 ),
        .CO({\res_sum_reg[15]_i_6_n_0 ,\res_sum_reg[15]_i_6_n_1 ,\res_sum_reg[15]_i_6_n_2 ,\res_sum_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_91,res_mul_reg__0_n_92,res_mul_reg__0_n_93,res_mul_reg__0_n_94}),
        .O(R[15:12]),
        .S({\res_sum[15]_i_7_n_0 ,\res_sum[15]_i_8_n_0 ,\res_sum[15]_i_9_n_0 ,\res_sum[15]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[16] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[16]),
        .Q(res_sum[16]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[17] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[17]),
        .Q(res_sum[17]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[18] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[18]),
        .Q(res_sum[18]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[19] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[19]),
        .Q(res_sum[19]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[19]_i_1 
       (.CI(\res_sum_reg[15]_i_1_n_0 ),
        .CO({\res_sum_reg[19]_i_1_n_0 ,\res_sum_reg[19]_i_1_n_1 ,\res_sum_reg[19]_i_1_n_2 ,\res_sum_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(res_sum[19:16]),
        .O(plusOp[19:16]),
        .S({\res_sum[19]_i_2_n_0 ,\res_sum[19]_i_3_n_0 ,\res_sum[19]_i_4_n_0 ,\res_sum[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[19]_i_6 
       (.CI(\res_sum_reg[15]_i_6_n_0 ),
        .CO({\res_sum_reg[19]_i_6_n_0 ,\res_sum_reg[19]_i_6_n_1 ,\res_sum_reg[19]_i_6_n_2 ,\res_sum_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_87,res_mul_reg__0_n_88,res_mul_reg__0_n_89,res_mul_reg__0_n_90}),
        .O(R[19:16]),
        .S({\res_sum[19]_i_7_n_0 ,\res_sum[19]_i_8_n_0 ,\res_sum[19]_i_9_n_0 ,\res_sum[19]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[1] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[1]),
        .Q(res_sum[1]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[20] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[20]),
        .Q(res_sum[20]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[21] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[21]),
        .Q(res_sum[21]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[22] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[22]),
        .Q(res_sum[22]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[23] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[23]),
        .Q(res_sum[23]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[23]_i_1 
       (.CI(\res_sum_reg[19]_i_1_n_0 ),
        .CO({\res_sum_reg[23]_i_1_n_0 ,\res_sum_reg[23]_i_1_n_1 ,\res_sum_reg[23]_i_1_n_2 ,\res_sum_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(res_sum[23:20]),
        .O(plusOp[23:20]),
        .S({\res_sum[23]_i_2_n_0 ,\res_sum[23]_i_3_n_0 ,\res_sum[23]_i_4_n_0 ,\res_sum[23]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[23]_i_6 
       (.CI(\res_sum_reg[19]_i_6_n_0 ),
        .CO({\res_sum_reg[23]_i_6_n_0 ,\res_sum_reg[23]_i_6_n_1 ,\res_sum_reg[23]_i_6_n_2 ,\res_sum_reg[23]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_83,res_mul_reg__0_n_84,res_mul_reg__0_n_85,res_mul_reg__0_n_86}),
        .O(R[23:20]),
        .S({\res_sum[23]_i_7_n_0 ,\res_sum[23]_i_8_n_0 ,\res_sum[23]_i_9_n_0 ,\res_sum[23]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[24] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[24]),
        .Q(res_sum[24]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[25] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[25]),
        .Q(res_sum[25]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[26] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[26]),
        .Q(res_sum[26]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[27] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[27]),
        .Q(res_sum[27]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[27]_i_1 
       (.CI(\res_sum_reg[23]_i_1_n_0 ),
        .CO({\res_sum_reg[27]_i_1_n_0 ,\res_sum_reg[27]_i_1_n_1 ,\res_sum_reg[27]_i_1_n_2 ,\res_sum_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(res_sum[27:24]),
        .O(plusOp[27:24]),
        .S({\res_sum[27]_i_2_n_0 ,\res_sum[27]_i_3_n_0 ,\res_sum[27]_i_4_n_0 ,\res_sum[27]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[27]_i_6 
       (.CI(\res_sum_reg[23]_i_6_n_0 ),
        .CO({\res_sum_reg[27]_i_6_n_0 ,\res_sum_reg[27]_i_6_n_1 ,\res_sum_reg[27]_i_6_n_2 ,\res_sum_reg[27]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_79,res_mul_reg__0_n_80,res_mul_reg__0_n_81,res_mul_reg__0_n_82}),
        .O(R[27:24]),
        .S({\res_sum[27]_i_7_n_0 ,\res_sum[27]_i_8_n_0 ,\res_sum[27]_i_9_n_0 ,\res_sum[27]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[28] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[28]),
        .Q(res_sum[28]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[29] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[29]),
        .Q(res_sum[29]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[2] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[2]),
        .Q(res_sum[2]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[30] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[30]),
        .Q(res_sum[30]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[30]_i_1 
       (.CI(\res_sum_reg[27]_i_1_n_0 ),
        .CO({\NLW_res_sum_reg[30]_i_1_CO_UNCONNECTED [3:2],\res_sum_reg[30]_i_1_n_2 ,\res_sum_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,res_sum[29:28]}),
        .O({\NLW_res_sum_reg[30]_i_1_O_UNCONNECTED [3],plusOp[30:28]}),
        .S({1'b0,\res_sum[30]_i_2_n_0 ,\res_sum[30]_i_3_n_0 ,\res_sum[30]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[30]_i_5 
       (.CI(\res_sum_reg[27]_i_6_n_0 ),
        .CO({\res_sum_reg[30]_i_5_n_0 ,\res_sum_reg[30]_i_5_n_1 ,\res_sum_reg[30]_i_5_n_2 ,\res_sum_reg[30]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_75,res_mul_reg__0_n_76,res_mul_reg__0_n_77,res_mul_reg__0_n_78}),
        .O({\NLW_res_sum_reg[30]_i_5_O_UNCONNECTED [3],R[30:28]}),
        .S({\res_sum[30]_i_6_n_0 ,\res_sum[30]_i_7_n_0 ,\res_sum[30]_i_8_n_0 ,\res_sum[30]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[31] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(\res_sum_reg[31]_i_1_n_4 ),
        .Q(res_sum[31]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[31]_i_1 
       (.CI(\res_sum_reg[31]_i_2_n_0 ),
        .CO({\NLW_res_sum_reg[31]_i_1_CO_UNCONNECTED [3],\res_sum_reg[31]_i_1_n_1 ,\res_sum_reg[31]_i_1_n_2 ,\res_sum_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,res_mul_reg__0_n_60,res_mul_reg__0_n_61,res_mul_reg__0_n_62}),
        .O({\res_sum_reg[31]_i_1_n_4 ,\NLW_res_sum_reg[31]_i_1_O_UNCONNECTED [2:0]}),
        .S({\res_sum[31]_i_3_n_0 ,\res_sum[31]_i_4_n_0 ,\res_sum[31]_i_5_n_0 ,\res_sum[31]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[31]_i_12 
       (.CI(\res_sum_reg[30]_i_5_n_0 ),
        .CO({\res_sum_reg[31]_i_12_n_0 ,\res_sum_reg[31]_i_12_n_1 ,\res_sum_reg[31]_i_12_n_2 ,\res_sum_reg[31]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_71,res_mul_reg__0_n_72,res_mul_reg__0_n_73,res_mul_reg__0_n_74}),
        .O(\NLW_res_sum_reg[31]_i_12_O_UNCONNECTED [3:0]),
        .S({\res_sum[31]_i_17_n_0 ,\res_sum[31]_i_18_n_0 ,\res_sum[31]_i_19_n_0 ,\res_sum[31]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[31]_i_2 
       (.CI(\res_sum_reg[31]_i_7_n_0 ),
        .CO({\res_sum_reg[31]_i_2_n_0 ,\res_sum_reg[31]_i_2_n_1 ,\res_sum_reg[31]_i_2_n_2 ,\res_sum_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_63,res_mul_reg__0_n_64,res_mul_reg__0_n_65,res_mul_reg__0_n_66}),
        .O(\NLW_res_sum_reg[31]_i_2_O_UNCONNECTED [3:0]),
        .S({\res_sum[31]_i_8_n_0 ,\res_sum[31]_i_9_n_0 ,\res_sum[31]_i_10_n_0 ,\res_sum[31]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[31]_i_7 
       (.CI(\res_sum_reg[31]_i_12_n_0 ),
        .CO({\res_sum_reg[31]_i_7_n_0 ,\res_sum_reg[31]_i_7_n_1 ,\res_sum_reg[31]_i_7_n_2 ,\res_sum_reg[31]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_67,res_mul_reg__0_n_68,res_mul_reg__0_n_69,res_mul_reg__0_n_70}),
        .O(\NLW_res_sum_reg[31]_i_7_O_UNCONNECTED [3:0]),
        .S({\res_sum[31]_i_13_n_0 ,\res_sum[31]_i_14_n_0 ,\res_sum[31]_i_15_n_0 ,\res_sum[31]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[3] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[3]),
        .Q(res_sum[3]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\res_sum_reg[3]_i_1_n_0 ,\res_sum_reg[3]_i_1_n_1 ,\res_sum_reg[3]_i_1_n_2 ,\res_sum_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(res_sum[3:0]),
        .O(plusOp[3:0]),
        .S({\res_sum[3]_i_2_n_0 ,\res_sum[3]_i_3_n_0 ,\res_sum[3]_i_4_n_0 ,\res_sum[3]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\res_sum_reg[3]_i_6_n_0 ,\res_sum_reg[3]_i_6_n_1 ,\res_sum_reg[3]_i_6_n_2 ,\res_sum_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_103,res_mul_reg__0_n_104,res_mul_reg__0_n_105,1'b0}),
        .O(R[3:0]),
        .S({\res_sum[3]_i_7_n_0 ,\res_sum[3]_i_8_n_0 ,\res_sum[3]_i_9_n_0 ,\res_mul_reg[16]__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[4] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[4]),
        .Q(res_sum[4]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[5] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[5]),
        .Q(res_sum[5]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[6] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[6]),
        .Q(res_sum[6]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[7] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[7]),
        .Q(res_sum[7]),
        .R(\res_mul[16]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[7]_i_1 
       (.CI(\res_sum_reg[3]_i_1_n_0 ),
        .CO({\res_sum_reg[7]_i_1_n_0 ,\res_sum_reg[7]_i_1_n_1 ,\res_sum_reg[7]_i_1_n_2 ,\res_sum_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(res_sum[7:4]),
        .O(plusOp[7:4]),
        .S({\res_sum[7]_i_2_n_0 ,\res_sum[7]_i_3_n_0 ,\res_sum[7]_i_4_n_0 ,\res_sum[7]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \res_sum_reg[7]_i_6 
       (.CI(\res_sum_reg[3]_i_6_n_0 ),
        .CO({\res_sum_reg[7]_i_6_n_0 ,\res_sum_reg[7]_i_6_n_1 ,\res_sum_reg[7]_i_6_n_2 ,\res_sum_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({res_mul_reg__0_n_99,res_mul_reg__0_n_100,res_mul_reg__0_n_101,res_mul_reg__0_n_102}),
        .O(R[7:4]),
        .S({\res_sum[7]_i_7_n_0 ,\res_sum[7]_i_8_n_0 ,\res_sum[7]_i_9_n_0 ,\res_sum[7]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[8] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[8]),
        .Q(res_sum[8]),
        .R(\res_mul[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_sum_reg[9] 
       (.C(Clock_IBUF_BUFG),
        .CE(index0),
        .D(plusOp[9]),
        .Q(res_sum[9]),
        .R(\res_mul[16]_i_1_n_0 ));
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
