-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Jan 29 13:31:35 2026
-- Host        : fixe_flavien running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/flavi/Desktop/Perceptron_network/MLP/MLP.gen/sources_1/bd/design_1/ip/design_1_Perceptron_BRAM_0_0/design_1_Perceptron_BRAM_0_0_sim_netlist.vhdl
-- Design      : design_1_Perceptron_BRAM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Perceptron_BRAM_0_0_Perceptron_BRAM is
  port (
    \index_reg[2]_0\ : out STD_LOGIC;
    \index_reg[1]_0\ : out STD_LOGIC;
    \index_reg[0]_0\ : out STD_LOGIC;
    Valid_reg_0 : out STD_LOGIC;
    Output_Value : out STD_LOGIC_VECTOR ( 30 downto 0 );
    Clock : in STD_LOGIC;
    w_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Input_Value : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Enable : in STD_LOGIC;
    Reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Perceptron_BRAM_0_0_Perceptron_BRAM : entity is "Perceptron_BRAM";
end design_1_Perceptron_BRAM_0_0_Perceptron_BRAM;

architecture STRUCTURE of design_1_Perceptron_BRAM_0_0_Perceptron_BRAM is
  signal R : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Valid_i_1_n_0 : STD_LOGIC;
  signal \^valid_reg_0\ : STD_LOGIC;
  signal clock_wait : STD_LOGIC;
  signal clock_wait_i_1_n_0 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal eqOp : STD_LOGIC;
  signal \eqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_n_1\ : STD_LOGIC;
  signal \eqOp_carry__0_n_2\ : STD_LOGIC;
  signal \eqOp_carry__0_n_3\ : STD_LOGIC;
  signal \eqOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \eqOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \eqOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \eqOp_carry__1_n_2\ : STD_LOGIC;
  signal \eqOp_carry__1_n_3\ : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_1\ : STD_LOGIC;
  signal \gtOp_carry__0_n_2\ : STD_LOGIC;
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal \gtOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_n_1\ : STD_LOGIC;
  signal \gtOp_carry__1_n_2\ : STD_LOGIC;
  signal \gtOp_carry__1_n_3\ : STD_LOGIC;
  signal \gtOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_n_1\ : STD_LOGIC;
  signal \gtOp_carry__2_n_2\ : STD_LOGIC;
  signal \gtOp_carry__2_n_3\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal \index[1]_i_1_n_0\ : STD_LOGIC;
  signal \index[2]_i_2_n_0\ : STD_LOGIC;
  signal \^index_reg[0]_0\ : STD_LOGIC;
  signal \^index_reg[1]_0\ : STD_LOGIC;
  signal \^index_reg[2]_0\ : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_carry__3_n_4\ : STD_LOGIC;
  signal \minusOp_carry__3_n_5\ : STD_LOGIC;
  signal \minusOp_carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_carry__4_n_4\ : STD_LOGIC;
  signal \minusOp_carry__4_n_5\ : STD_LOGIC;
  signal \minusOp_carry__4_n_6\ : STD_LOGIC;
  signal \minusOp_carry__4_n_7\ : STD_LOGIC;
  signal \minusOp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_carry__5_n_4\ : STD_LOGIC;
  signal \minusOp_carry__5_n_5\ : STD_LOGIC;
  signal \minusOp_carry__5_n_6\ : STD_LOGIC;
  signal \minusOp_carry__5_n_7\ : STD_LOGIC;
  signal \minusOp_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_carry__6_n_3\ : STD_LOGIC;
  signal \minusOp_carry__6_n_5\ : STD_LOGIC;
  signal \minusOp_carry__6_n_6\ : STD_LOGIC;
  signal \minusOp_carry__6_n_7\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal mul_sign : STD_LOGIC;
  signal \multOp__0_n_100\ : STD_LOGIC;
  signal \multOp__0_n_101\ : STD_LOGIC;
  signal \multOp__0_n_102\ : STD_LOGIC;
  signal \multOp__0_n_103\ : STD_LOGIC;
  signal \multOp__0_n_104\ : STD_LOGIC;
  signal \multOp__0_n_105\ : STD_LOGIC;
  signal \multOp__0_n_58\ : STD_LOGIC;
  signal \multOp__0_n_59\ : STD_LOGIC;
  signal \multOp__0_n_60\ : STD_LOGIC;
  signal \multOp__0_n_61\ : STD_LOGIC;
  signal \multOp__0_n_62\ : STD_LOGIC;
  signal \multOp__0_n_63\ : STD_LOGIC;
  signal \multOp__0_n_64\ : STD_LOGIC;
  signal \multOp__0_n_65\ : STD_LOGIC;
  signal \multOp__0_n_66\ : STD_LOGIC;
  signal \multOp__0_n_67\ : STD_LOGIC;
  signal \multOp__0_n_68\ : STD_LOGIC;
  signal \multOp__0_n_69\ : STD_LOGIC;
  signal \multOp__0_n_70\ : STD_LOGIC;
  signal \multOp__0_n_71\ : STD_LOGIC;
  signal \multOp__0_n_72\ : STD_LOGIC;
  signal \multOp__0_n_73\ : STD_LOGIC;
  signal \multOp__0_n_74\ : STD_LOGIC;
  signal \multOp__0_n_75\ : STD_LOGIC;
  signal \multOp__0_n_76\ : STD_LOGIC;
  signal \multOp__0_n_77\ : STD_LOGIC;
  signal \multOp__0_n_78\ : STD_LOGIC;
  signal \multOp__0_n_79\ : STD_LOGIC;
  signal \multOp__0_n_80\ : STD_LOGIC;
  signal \multOp__0_n_81\ : STD_LOGIC;
  signal \multOp__0_n_82\ : STD_LOGIC;
  signal \multOp__0_n_83\ : STD_LOGIC;
  signal \multOp__0_n_84\ : STD_LOGIC;
  signal \multOp__0_n_85\ : STD_LOGIC;
  signal \multOp__0_n_86\ : STD_LOGIC;
  signal \multOp__0_n_87\ : STD_LOGIC;
  signal \multOp__0_n_88\ : STD_LOGIC;
  signal \multOp__0_n_89\ : STD_LOGIC;
  signal \multOp__0_n_90\ : STD_LOGIC;
  signal \multOp__0_n_91\ : STD_LOGIC;
  signal \multOp__0_n_92\ : STD_LOGIC;
  signal \multOp__0_n_93\ : STD_LOGIC;
  signal \multOp__0_n_94\ : STD_LOGIC;
  signal \multOp__0_n_95\ : STD_LOGIC;
  signal \multOp__0_n_96\ : STD_LOGIC;
  signal \multOp__0_n_97\ : STD_LOGIC;
  signal \multOp__0_n_98\ : STD_LOGIC;
  signal \multOp__0_n_99\ : STD_LOGIC;
  signal \multOp__1_n_100\ : STD_LOGIC;
  signal \multOp__1_n_101\ : STD_LOGIC;
  signal \multOp__1_n_102\ : STD_LOGIC;
  signal \multOp__1_n_103\ : STD_LOGIC;
  signal \multOp__1_n_104\ : STD_LOGIC;
  signal \multOp__1_n_105\ : STD_LOGIC;
  signal \multOp__1_n_106\ : STD_LOGIC;
  signal \multOp__1_n_107\ : STD_LOGIC;
  signal \multOp__1_n_108\ : STD_LOGIC;
  signal \multOp__1_n_109\ : STD_LOGIC;
  signal \multOp__1_n_110\ : STD_LOGIC;
  signal \multOp__1_n_111\ : STD_LOGIC;
  signal \multOp__1_n_112\ : STD_LOGIC;
  signal \multOp__1_n_113\ : STD_LOGIC;
  signal \multOp__1_n_114\ : STD_LOGIC;
  signal \multOp__1_n_115\ : STD_LOGIC;
  signal \multOp__1_n_116\ : STD_LOGIC;
  signal \multOp__1_n_117\ : STD_LOGIC;
  signal \multOp__1_n_118\ : STD_LOGIC;
  signal \multOp__1_n_119\ : STD_LOGIC;
  signal \multOp__1_n_120\ : STD_LOGIC;
  signal \multOp__1_n_121\ : STD_LOGIC;
  signal \multOp__1_n_122\ : STD_LOGIC;
  signal \multOp__1_n_123\ : STD_LOGIC;
  signal \multOp__1_n_124\ : STD_LOGIC;
  signal \multOp__1_n_125\ : STD_LOGIC;
  signal \multOp__1_n_126\ : STD_LOGIC;
  signal \multOp__1_n_127\ : STD_LOGIC;
  signal \multOp__1_n_128\ : STD_LOGIC;
  signal \multOp__1_n_129\ : STD_LOGIC;
  signal \multOp__1_n_130\ : STD_LOGIC;
  signal \multOp__1_n_131\ : STD_LOGIC;
  signal \multOp__1_n_132\ : STD_LOGIC;
  signal \multOp__1_n_133\ : STD_LOGIC;
  signal \multOp__1_n_134\ : STD_LOGIC;
  signal \multOp__1_n_135\ : STD_LOGIC;
  signal \multOp__1_n_136\ : STD_LOGIC;
  signal \multOp__1_n_137\ : STD_LOGIC;
  signal \multOp__1_n_138\ : STD_LOGIC;
  signal \multOp__1_n_139\ : STD_LOGIC;
  signal \multOp__1_n_140\ : STD_LOGIC;
  signal \multOp__1_n_141\ : STD_LOGIC;
  signal \multOp__1_n_142\ : STD_LOGIC;
  signal \multOp__1_n_143\ : STD_LOGIC;
  signal \multOp__1_n_144\ : STD_LOGIC;
  signal \multOp__1_n_145\ : STD_LOGIC;
  signal \multOp__1_n_146\ : STD_LOGIC;
  signal \multOp__1_n_147\ : STD_LOGIC;
  signal \multOp__1_n_148\ : STD_LOGIC;
  signal \multOp__1_n_149\ : STD_LOGIC;
  signal \multOp__1_n_150\ : STD_LOGIC;
  signal \multOp__1_n_151\ : STD_LOGIC;
  signal \multOp__1_n_152\ : STD_LOGIC;
  signal \multOp__1_n_153\ : STD_LOGIC;
  signal \multOp__1_n_24\ : STD_LOGIC;
  signal \multOp__1_n_25\ : STD_LOGIC;
  signal \multOp__1_n_26\ : STD_LOGIC;
  signal \multOp__1_n_27\ : STD_LOGIC;
  signal \multOp__1_n_28\ : STD_LOGIC;
  signal \multOp__1_n_29\ : STD_LOGIC;
  signal \multOp__1_n_30\ : STD_LOGIC;
  signal \multOp__1_n_31\ : STD_LOGIC;
  signal \multOp__1_n_32\ : STD_LOGIC;
  signal \multOp__1_n_33\ : STD_LOGIC;
  signal \multOp__1_n_34\ : STD_LOGIC;
  signal \multOp__1_n_35\ : STD_LOGIC;
  signal \multOp__1_n_36\ : STD_LOGIC;
  signal \multOp__1_n_37\ : STD_LOGIC;
  signal \multOp__1_n_38\ : STD_LOGIC;
  signal \multOp__1_n_39\ : STD_LOGIC;
  signal \multOp__1_n_40\ : STD_LOGIC;
  signal \multOp__1_n_41\ : STD_LOGIC;
  signal \multOp__1_n_42\ : STD_LOGIC;
  signal \multOp__1_n_43\ : STD_LOGIC;
  signal \multOp__1_n_44\ : STD_LOGIC;
  signal \multOp__1_n_45\ : STD_LOGIC;
  signal \multOp__1_n_46\ : STD_LOGIC;
  signal \multOp__1_n_47\ : STD_LOGIC;
  signal \multOp__1_n_48\ : STD_LOGIC;
  signal \multOp__1_n_49\ : STD_LOGIC;
  signal \multOp__1_n_50\ : STD_LOGIC;
  signal \multOp__1_n_51\ : STD_LOGIC;
  signal \multOp__1_n_52\ : STD_LOGIC;
  signal \multOp__1_n_53\ : STD_LOGIC;
  signal \multOp__1_n_58\ : STD_LOGIC;
  signal \multOp__1_n_59\ : STD_LOGIC;
  signal \multOp__1_n_60\ : STD_LOGIC;
  signal \multOp__1_n_61\ : STD_LOGIC;
  signal \multOp__1_n_62\ : STD_LOGIC;
  signal \multOp__1_n_63\ : STD_LOGIC;
  signal \multOp__1_n_64\ : STD_LOGIC;
  signal \multOp__1_n_65\ : STD_LOGIC;
  signal \multOp__1_n_66\ : STD_LOGIC;
  signal \multOp__1_n_67\ : STD_LOGIC;
  signal \multOp__1_n_68\ : STD_LOGIC;
  signal \multOp__1_n_69\ : STD_LOGIC;
  signal \multOp__1_n_70\ : STD_LOGIC;
  signal \multOp__1_n_71\ : STD_LOGIC;
  signal \multOp__1_n_72\ : STD_LOGIC;
  signal \multOp__1_n_73\ : STD_LOGIC;
  signal \multOp__1_n_74\ : STD_LOGIC;
  signal \multOp__1_n_75\ : STD_LOGIC;
  signal \multOp__1_n_76\ : STD_LOGIC;
  signal \multOp__1_n_77\ : STD_LOGIC;
  signal \multOp__1_n_78\ : STD_LOGIC;
  signal \multOp__1_n_79\ : STD_LOGIC;
  signal \multOp__1_n_80\ : STD_LOGIC;
  signal \multOp__1_n_81\ : STD_LOGIC;
  signal \multOp__1_n_82\ : STD_LOGIC;
  signal \multOp__1_n_83\ : STD_LOGIC;
  signal \multOp__1_n_84\ : STD_LOGIC;
  signal \multOp__1_n_85\ : STD_LOGIC;
  signal \multOp__1_n_86\ : STD_LOGIC;
  signal \multOp__1_n_87\ : STD_LOGIC;
  signal \multOp__1_n_88\ : STD_LOGIC;
  signal \multOp__1_n_89\ : STD_LOGIC;
  signal \multOp__1_n_90\ : STD_LOGIC;
  signal \multOp__1_n_91\ : STD_LOGIC;
  signal \multOp__1_n_92\ : STD_LOGIC;
  signal \multOp__1_n_93\ : STD_LOGIC;
  signal \multOp__1_n_94\ : STD_LOGIC;
  signal \multOp__1_n_95\ : STD_LOGIC;
  signal \multOp__1_n_96\ : STD_LOGIC;
  signal \multOp__1_n_97\ : STD_LOGIC;
  signal \multOp__1_n_98\ : STD_LOGIC;
  signal \multOp__1_n_99\ : STD_LOGIC;
  signal \multOp__2_n_100\ : STD_LOGIC;
  signal \multOp__2_n_101\ : STD_LOGIC;
  signal \multOp__2_n_102\ : STD_LOGIC;
  signal \multOp__2_n_103\ : STD_LOGIC;
  signal \multOp__2_n_104\ : STD_LOGIC;
  signal \multOp__2_n_105\ : STD_LOGIC;
  signal \multOp__2_n_58\ : STD_LOGIC;
  signal \multOp__2_n_59\ : STD_LOGIC;
  signal \multOp__2_n_60\ : STD_LOGIC;
  signal \multOp__2_n_61\ : STD_LOGIC;
  signal \multOp__2_n_62\ : STD_LOGIC;
  signal \multOp__2_n_63\ : STD_LOGIC;
  signal \multOp__2_n_64\ : STD_LOGIC;
  signal \multOp__2_n_65\ : STD_LOGIC;
  signal \multOp__2_n_66\ : STD_LOGIC;
  signal \multOp__2_n_67\ : STD_LOGIC;
  signal \multOp__2_n_68\ : STD_LOGIC;
  signal \multOp__2_n_69\ : STD_LOGIC;
  signal \multOp__2_n_70\ : STD_LOGIC;
  signal \multOp__2_n_71\ : STD_LOGIC;
  signal \multOp__2_n_72\ : STD_LOGIC;
  signal \multOp__2_n_73\ : STD_LOGIC;
  signal \multOp__2_n_74\ : STD_LOGIC;
  signal \multOp__2_n_75\ : STD_LOGIC;
  signal \multOp__2_n_76\ : STD_LOGIC;
  signal \multOp__2_n_77\ : STD_LOGIC;
  signal \multOp__2_n_78\ : STD_LOGIC;
  signal \multOp__2_n_79\ : STD_LOGIC;
  signal \multOp__2_n_80\ : STD_LOGIC;
  signal \multOp__2_n_81\ : STD_LOGIC;
  signal \multOp__2_n_82\ : STD_LOGIC;
  signal \multOp__2_n_83\ : STD_LOGIC;
  signal \multOp__2_n_84\ : STD_LOGIC;
  signal \multOp__2_n_85\ : STD_LOGIC;
  signal \multOp__2_n_86\ : STD_LOGIC;
  signal \multOp__2_n_87\ : STD_LOGIC;
  signal \multOp__2_n_88\ : STD_LOGIC;
  signal \multOp__2_n_89\ : STD_LOGIC;
  signal \multOp__2_n_90\ : STD_LOGIC;
  signal \multOp__2_n_91\ : STD_LOGIC;
  signal \multOp__2_n_92\ : STD_LOGIC;
  signal \multOp__2_n_93\ : STD_LOGIC;
  signal \multOp__2_n_94\ : STD_LOGIC;
  signal \multOp__2_n_95\ : STD_LOGIC;
  signal \multOp__2_n_96\ : STD_LOGIC;
  signal \multOp__2_n_97\ : STD_LOGIC;
  signal \multOp__2_n_98\ : STD_LOGIC;
  signal \multOp__2_n_99\ : STD_LOGIC;
  signal \multOp__3\ : STD_LOGIC_VECTOR ( 59 downto 29 );
  signal multOp_n_100 : STD_LOGIC;
  signal multOp_n_101 : STD_LOGIC;
  signal multOp_n_102 : STD_LOGIC;
  signal multOp_n_103 : STD_LOGIC;
  signal multOp_n_104 : STD_LOGIC;
  signal multOp_n_105 : STD_LOGIC;
  signal multOp_n_106 : STD_LOGIC;
  signal multOp_n_107 : STD_LOGIC;
  signal multOp_n_108 : STD_LOGIC;
  signal multOp_n_109 : STD_LOGIC;
  signal multOp_n_110 : STD_LOGIC;
  signal multOp_n_111 : STD_LOGIC;
  signal multOp_n_112 : STD_LOGIC;
  signal multOp_n_113 : STD_LOGIC;
  signal multOp_n_114 : STD_LOGIC;
  signal multOp_n_115 : STD_LOGIC;
  signal multOp_n_116 : STD_LOGIC;
  signal multOp_n_117 : STD_LOGIC;
  signal multOp_n_118 : STD_LOGIC;
  signal multOp_n_119 : STD_LOGIC;
  signal multOp_n_120 : STD_LOGIC;
  signal multOp_n_121 : STD_LOGIC;
  signal multOp_n_122 : STD_LOGIC;
  signal multOp_n_123 : STD_LOGIC;
  signal multOp_n_124 : STD_LOGIC;
  signal multOp_n_125 : STD_LOGIC;
  signal multOp_n_126 : STD_LOGIC;
  signal multOp_n_127 : STD_LOGIC;
  signal multOp_n_128 : STD_LOGIC;
  signal multOp_n_129 : STD_LOGIC;
  signal multOp_n_130 : STD_LOGIC;
  signal multOp_n_131 : STD_LOGIC;
  signal multOp_n_132 : STD_LOGIC;
  signal multOp_n_133 : STD_LOGIC;
  signal multOp_n_134 : STD_LOGIC;
  signal multOp_n_135 : STD_LOGIC;
  signal multOp_n_136 : STD_LOGIC;
  signal multOp_n_137 : STD_LOGIC;
  signal multOp_n_138 : STD_LOGIC;
  signal multOp_n_139 : STD_LOGIC;
  signal multOp_n_140 : STD_LOGIC;
  signal multOp_n_141 : STD_LOGIC;
  signal multOp_n_142 : STD_LOGIC;
  signal multOp_n_143 : STD_LOGIC;
  signal multOp_n_144 : STD_LOGIC;
  signal multOp_n_145 : STD_LOGIC;
  signal multOp_n_146 : STD_LOGIC;
  signal multOp_n_147 : STD_LOGIC;
  signal multOp_n_148 : STD_LOGIC;
  signal multOp_n_149 : STD_LOGIC;
  signal multOp_n_150 : STD_LOGIC;
  signal multOp_n_151 : STD_LOGIC;
  signal multOp_n_152 : STD_LOGIC;
  signal multOp_n_153 : STD_LOGIC;
  signal multOp_n_58 : STD_LOGIC;
  signal multOp_n_59 : STD_LOGIC;
  signal multOp_n_60 : STD_LOGIC;
  signal multOp_n_61 : STD_LOGIC;
  signal multOp_n_62 : STD_LOGIC;
  signal multOp_n_63 : STD_LOGIC;
  signal multOp_n_64 : STD_LOGIC;
  signal multOp_n_65 : STD_LOGIC;
  signal multOp_n_66 : STD_LOGIC;
  signal multOp_n_67 : STD_LOGIC;
  signal multOp_n_68 : STD_LOGIC;
  signal multOp_n_69 : STD_LOGIC;
  signal multOp_n_70 : STD_LOGIC;
  signal multOp_n_71 : STD_LOGIC;
  signal multOp_n_72 : STD_LOGIC;
  signal multOp_n_73 : STD_LOGIC;
  signal multOp_n_74 : STD_LOGIC;
  signal multOp_n_75 : STD_LOGIC;
  signal multOp_n_76 : STD_LOGIC;
  signal multOp_n_77 : STD_LOGIC;
  signal multOp_n_78 : STD_LOGIC;
  signal multOp_n_79 : STD_LOGIC;
  signal multOp_n_80 : STD_LOGIC;
  signal multOp_n_81 : STD_LOGIC;
  signal multOp_n_82 : STD_LOGIC;
  signal multOp_n_83 : STD_LOGIC;
  signal multOp_n_84 : STD_LOGIC;
  signal multOp_n_85 : STD_LOGIC;
  signal multOp_n_86 : STD_LOGIC;
  signal multOp_n_87 : STD_LOGIC;
  signal multOp_n_88 : STD_LOGIC;
  signal multOp_n_89 : STD_LOGIC;
  signal multOp_n_90 : STD_LOGIC;
  signal multOp_n_91 : STD_LOGIC;
  signal multOp_n_92 : STD_LOGIC;
  signal multOp_n_93 : STD_LOGIC;
  signal multOp_n_94 : STD_LOGIC;
  signal multOp_n_95 : STD_LOGIC;
  signal multOp_n_96 : STD_LOGIC;
  signal multOp_n_97 : STD_LOGIC;
  signal multOp_n_98 : STD_LOGIC;
  signal multOp_n_99 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \res_mul_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_11_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_12_n_1\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_12_n_2\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_12_n_3\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_16_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_18_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_19_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_7_n_1\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_7_n_2\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_7_n_3\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \res_mul_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \res_mul_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \res_mul_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \res_mul_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \res_mul_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \res_mul_reg[35]_i_2_n_0\ : STD_LOGIC;
  signal \res_mul_reg[35]_i_3_n_0\ : STD_LOGIC;
  signal \res_mul_reg[35]_i_4_n_0\ : STD_LOGIC;
  signal \res_mul_reg[35]_i_5_n_0\ : STD_LOGIC;
  signal \res_mul_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \res_mul_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \res_mul_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \res_mul_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \res_mul_reg[39]_i_2_n_0\ : STD_LOGIC;
  signal \res_mul_reg[39]_i_3_n_0\ : STD_LOGIC;
  signal \res_mul_reg[39]_i_4_n_0\ : STD_LOGIC;
  signal \res_mul_reg[39]_i_5_n_0\ : STD_LOGIC;
  signal \res_mul_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \res_mul_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \res_mul_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \res_mul_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \res_mul_reg[43]_i_2_n_0\ : STD_LOGIC;
  signal \res_mul_reg[43]_i_3_n_0\ : STD_LOGIC;
  signal \res_mul_reg[43]_i_4_n_0\ : STD_LOGIC;
  signal \res_mul_reg[43]_i_5_n_0\ : STD_LOGIC;
  signal \res_mul_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \res_mul_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \res_mul_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \res_mul_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \res_mul_reg[47]_i_2_n_0\ : STD_LOGIC;
  signal \res_mul_reg[47]_i_3_n_0\ : STD_LOGIC;
  signal \res_mul_reg[47]_i_4_n_0\ : STD_LOGIC;
  signal \res_mul_reg[47]_i_5_n_0\ : STD_LOGIC;
  signal \res_mul_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \res_mul_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \res_mul_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \res_mul_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \res_mul_reg[51]_i_2_n_0\ : STD_LOGIC;
  signal \res_mul_reg[51]_i_3_n_0\ : STD_LOGIC;
  signal \res_mul_reg[51]_i_4_n_0\ : STD_LOGIC;
  signal \res_mul_reg[51]_i_5_n_0\ : STD_LOGIC;
  signal \res_mul_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \res_mul_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \res_mul_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \res_mul_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \res_mul_reg[55]_i_2_n_0\ : STD_LOGIC;
  signal \res_mul_reg[55]_i_3_n_0\ : STD_LOGIC;
  signal \res_mul_reg[55]_i_4_n_0\ : STD_LOGIC;
  signal \res_mul_reg[55]_i_5_n_0\ : STD_LOGIC;
  signal \res_mul_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \res_mul_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \res_mul_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \res_mul_reg[59]_i_2_n_0\ : STD_LOGIC;
  signal \res_mul_reg[59]_i_3_n_0\ : STD_LOGIC;
  signal \res_mul_reg[59]_i_4_n_0\ : STD_LOGIC;
  signal \res_mul_reg[59]_i_5_n_0\ : STD_LOGIC;
  signal res_sum : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \res_sum[0]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[0]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[10]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[10]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[11]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[11]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[11]_i_4_n_0\ : STD_LOGIC;
  signal \res_sum[11]_i_5_n_0\ : STD_LOGIC;
  signal \res_sum[11]_i_6_n_0\ : STD_LOGIC;
  signal \res_sum[11]_i_7_n_0\ : STD_LOGIC;
  signal \res_sum[12]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[12]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[12]_i_4_n_0\ : STD_LOGIC;
  signal \res_sum[12]_i_5_n_0\ : STD_LOGIC;
  signal \res_sum[12]_i_6_n_0\ : STD_LOGIC;
  signal \res_sum[12]_i_7_n_0\ : STD_LOGIC;
  signal \res_sum[13]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[13]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[14]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[14]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[15]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[15]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[16]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[16]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[17]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[17]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[18]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[18]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[18]_i_4_n_0\ : STD_LOGIC;
  signal \res_sum[18]_i_5_n_0\ : STD_LOGIC;
  signal \res_sum[18]_i_6_n_0\ : STD_LOGIC;
  signal \res_sum[18]_i_7_n_0\ : STD_LOGIC;
  signal \res_sum[19]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[19]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[1]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[1]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[20]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[20]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[21]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[21]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[22]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[22]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[23]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[23]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[23]_i_4_n_0\ : STD_LOGIC;
  signal \res_sum[23]_i_5_n_0\ : STD_LOGIC;
  signal \res_sum[23]_i_6_n_0\ : STD_LOGIC;
  signal \res_sum[23]_i_7_n_0\ : STD_LOGIC;
  signal \res_sum[24]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[24]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[25]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[25]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[26]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[26]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[27]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[27]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[27]_i_4_n_0\ : STD_LOGIC;
  signal \res_sum[27]_i_5_n_0\ : STD_LOGIC;
  signal \res_sum[27]_i_6_n_0\ : STD_LOGIC;
  signal \res_sum[27]_i_7_n_0\ : STD_LOGIC;
  signal \res_sum[28]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[28]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[29]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[29]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[29]_i_3_n_0\ : STD_LOGIC;
  signal \res_sum[2]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[2]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[2]_i_4_n_0\ : STD_LOGIC;
  signal \res_sum[2]_i_5_n_0\ : STD_LOGIC;
  signal \res_sum[2]_i_6_n_0\ : STD_LOGIC;
  signal \res_sum[2]_i_7_n_0\ : STD_LOGIC;
  signal \res_sum[30]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[30]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[30]_i_4_n_0\ : STD_LOGIC;
  signal \res_sum[30]_i_5_n_0\ : STD_LOGIC;
  signal \res_sum[30]_i_6_n_0\ : STD_LOGIC;
  signal \res_sum[31]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[31]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[3]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[3]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[4]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[4]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[5]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[5]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[6]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[6]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[6]_i_4_n_0\ : STD_LOGIC;
  signal \res_sum[6]_i_5_n_0\ : STD_LOGIC;
  signal \res_sum[6]_i_6_n_0\ : STD_LOGIC;
  signal \res_sum[6]_i_7_n_0\ : STD_LOGIC;
  signal \res_sum[7]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[7]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[8]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[8]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum[9]_i_1_n_0\ : STD_LOGIC;
  signal \res_sum[9]_i_2_n_0\ : STD_LOGIC;
  signal \res_sum_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \res_sum_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \res_sum_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \res_sum_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \res_sum_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \res_sum_reg[12]_i_3_n_1\ : STD_LOGIC;
  signal \res_sum_reg[12]_i_3_n_2\ : STD_LOGIC;
  signal \res_sum_reg[12]_i_3_n_3\ : STD_LOGIC;
  signal \res_sum_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \res_sum_reg[18]_i_3_n_1\ : STD_LOGIC;
  signal \res_sum_reg[18]_i_3_n_2\ : STD_LOGIC;
  signal \res_sum_reg[18]_i_3_n_3\ : STD_LOGIC;
  signal \res_sum_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \res_sum_reg[23]_i_3_n_1\ : STD_LOGIC;
  signal \res_sum_reg[23]_i_3_n_2\ : STD_LOGIC;
  signal \res_sum_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal \res_sum_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \res_sum_reg[27]_i_3_n_1\ : STD_LOGIC;
  signal \res_sum_reg[27]_i_3_n_2\ : STD_LOGIC;
  signal \res_sum_reg[27]_i_3_n_3\ : STD_LOGIC;
  signal \res_sum_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \res_sum_reg[2]_i_3_n_1\ : STD_LOGIC;
  signal \res_sum_reg[2]_i_3_n_2\ : STD_LOGIC;
  signal \res_sum_reg[2]_i_3_n_3\ : STD_LOGIC;
  signal \res_sum_reg[30]_i_3_n_2\ : STD_LOGIC;
  signal \res_sum_reg[30]_i_3_n_3\ : STD_LOGIC;
  signal \res_sum_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \res_sum_reg[6]_i_3_n_1\ : STD_LOGIC;
  signal \res_sum_reg[6]_i_3_n_2\ : STD_LOGIC;
  signal \res_sum_reg[6]_i_3_n_3\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[0]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[10]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[11]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[12]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[13]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[14]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[15]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[16]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[17]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[18]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[19]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[1]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[20]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[21]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[22]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[23]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[24]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[25]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[26]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[27]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[28]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[29]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[2]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[30]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[3]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[4]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[5]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[6]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[7]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[8]\ : STD_LOGIC;
  signal \res_sum_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_eqOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_multOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_multOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_multOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_multOp__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_multOp__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_multOp__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_multOp__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_multOp__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_multOp__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_res_mul_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_res_mul_reg[31]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_res_mul_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_res_mul_reg[31]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_res_mul_reg[59]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_res_sum_reg[30]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_res_sum_reg[30]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Output_Value[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Output_Value[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Output_Value[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Output_Value[13]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Output_Value[14]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Output_Value[15]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Output_Value[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Output_Value[17]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Output_Value[18]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Output_Value[19]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Output_Value[1]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Output_Value[20]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Output_Value[21]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Output_Value[22]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Output_Value[23]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Output_Value[24]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Output_Value[25]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Output_Value[26]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Output_Value[27]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Output_Value[28]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Output_Value[29]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Output_Value[2]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Output_Value[30]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Output_Value[3]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Output_Value[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Output_Value[5]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Output_Value[6]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Output_Value[7]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Output_Value[8]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Output_Value[9]_INST_0\ : label is "soft_lutpair11";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of minusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of multOp : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \multOp__0\ : label is "{SYNTH-10 {cell *THIS*} {string 15x15 4}}";
  attribute METHODOLOGY_DRC_VIOS of \multOp__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \multOp__2\ : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[29]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[29]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[30]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[30]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[31]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[31]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[32]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[32]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[33]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[33]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[34]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[34]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[35]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[35]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[36]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[36]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[37]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[37]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[38]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[38]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[39]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[39]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[40]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[40]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[41]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[41]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[42]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[42]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[43]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[43]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[44]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[44]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[45]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[45]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[46]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[46]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[47]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[47]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[48]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[48]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[49]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[49]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[50]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[50]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[51]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[51]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[52]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[52]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[53]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[53]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[54]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[54]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[55]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[55]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[56]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[56]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[57]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[57]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[58]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[58]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[59]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[59]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \res_mul_reg[63]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \res_mul_reg[63]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \res_sum[30]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \res_sum[31]_i_2\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \res_sum_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \res_sum_reg[12]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \res_sum_reg[18]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \res_sum_reg[23]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \res_sum_reg[27]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \res_sum_reg[2]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \res_sum_reg[30]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \res_sum_reg[6]_i_3\ : label is 35;
begin
  Valid_reg_0 <= \^valid_reg_0\;
  \index_reg[0]_0\ <= \^index_reg[0]_0\;
  \index_reg[1]_0\ <= \^index_reg[1]_0\;
  \index_reg[2]_0\ <= \^index_reg[2]_0\;
\Output_Value[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[0]\,
      I1 => p_0_in,
      O => Output_Value(0)
    );
\Output_Value[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[10]\,
      I1 => p_0_in,
      O => Output_Value(10)
    );
\Output_Value[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[11]\,
      I1 => p_0_in,
      O => Output_Value(11)
    );
\Output_Value[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[12]\,
      I1 => p_0_in,
      O => Output_Value(12)
    );
\Output_Value[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[13]\,
      I1 => p_0_in,
      O => Output_Value(13)
    );
\Output_Value[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[14]\,
      I1 => p_0_in,
      O => Output_Value(14)
    );
\Output_Value[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[15]\,
      I1 => p_0_in,
      O => Output_Value(15)
    );
\Output_Value[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[16]\,
      I1 => p_0_in,
      O => Output_Value(16)
    );
\Output_Value[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[17]\,
      I1 => p_0_in,
      O => Output_Value(17)
    );
\Output_Value[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[18]\,
      I1 => p_0_in,
      O => Output_Value(18)
    );
\Output_Value[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[19]\,
      I1 => p_0_in,
      O => Output_Value(19)
    );
\Output_Value[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[1]\,
      I1 => p_0_in,
      O => Output_Value(1)
    );
\Output_Value[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[20]\,
      I1 => p_0_in,
      O => Output_Value(20)
    );
\Output_Value[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[21]\,
      I1 => p_0_in,
      O => Output_Value(21)
    );
\Output_Value[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[22]\,
      I1 => p_0_in,
      O => Output_Value(22)
    );
\Output_Value[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[23]\,
      I1 => p_0_in,
      O => Output_Value(23)
    );
\Output_Value[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[24]\,
      I1 => p_0_in,
      O => Output_Value(24)
    );
\Output_Value[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[25]\,
      I1 => p_0_in,
      O => Output_Value(25)
    );
\Output_Value[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[26]\,
      I1 => p_0_in,
      O => Output_Value(26)
    );
\Output_Value[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[27]\,
      I1 => p_0_in,
      O => Output_Value(27)
    );
\Output_Value[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[28]\,
      I1 => p_0_in,
      O => Output_Value(28)
    );
\Output_Value[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[29]\,
      I1 => p_0_in,
      O => Output_Value(29)
    );
\Output_Value[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[2]\,
      I1 => p_0_in,
      O => Output_Value(2)
    );
\Output_Value[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[30]\,
      I1 => p_0_in,
      O => Output_Value(30)
    );
\Output_Value[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[3]\,
      I1 => p_0_in,
      O => Output_Value(3)
    );
\Output_Value[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[4]\,
      I1 => p_0_in,
      O => Output_Value(4)
    );
\Output_Value[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[5]\,
      I1 => p_0_in,
      O => Output_Value(5)
    );
\Output_Value[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[6]\,
      I1 => p_0_in,
      O => Output_Value(6)
    );
\Output_Value[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[7]\,
      I1 => p_0_in,
      O => Output_Value(7)
    );
\Output_Value[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[8]\,
      I1 => p_0_in,
      O => Output_Value(8)
    );
\Output_Value[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[9]\,
      I1 => p_0_in,
      O => Output_Value(9)
    );
Valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F0F0F008000000"
    )
        port map (
      I0 => clock_wait,
      I1 => Enable,
      I2 => \^valid_reg_0\,
      I3 => \^index_reg[1]_0\,
      I4 => \^index_reg[2]_0\,
      I5 => Reset,
      O => Valid_i_1_n_0
    );
Valid_reg: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => '1',
      D => Valid_i_1_n_0,
      Q => \^valid_reg_0\,
      R => '0'
    );
clock_wait_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clock_wait,
      O => clock_wait_i_1_n_0
    );
clock_wait_reg: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => '1',
      D => clock_wait_i_1_n_0,
      Q => clock_wait,
      R => '0'
    );
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp_carry_n_0,
      CO(2) => eqOp_carry_n_1,
      CO(1) => eqOp_carry_n_2,
      CO(0) => eqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => eqOp_carry_i_1_n_0,
      S(2) => eqOp_carry_i_2_n_0,
      S(1) => eqOp_carry_i_3_n_0,
      S(0) => eqOp_carry_i_4_n_0
    );
\eqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => eqOp_carry_n_0,
      CO(3) => \eqOp_carry__0_n_0\,
      CO(2) => \eqOp_carry__0_n_1\,
      CO(1) => \eqOp_carry__0_n_2\,
      CO(0) => \eqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \eqOp_carry__0_i_1_n_0\,
      S(2) => \eqOp_carry__0_i_2_n_0\,
      S(1) => \eqOp_carry__0_i_3_n_0\,
      S(0) => \eqOp_carry__0_i_4_n_0\
    );
\eqOp_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[22]\,
      I1 => R(22),
      I2 => \res_sum_reg_n_0_[23]\,
      I3 => R(23),
      I4 => R(21),
      I5 => \res_sum_reg_n_0_[21]\,
      O => \eqOp_carry__0_i_1_n_0\
    );
\eqOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[18]\,
      I1 => R(18),
      I2 => \res_sum_reg_n_0_[19]\,
      I3 => R(19),
      I4 => R(20),
      I5 => \res_sum_reg_n_0_[20]\,
      O => \eqOp_carry__0_i_2_n_0\
    );
\eqOp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[16]\,
      I1 => R(16),
      I2 => \res_sum_reg_n_0_[17]\,
      I3 => R(17),
      I4 => R(15),
      I5 => \res_sum_reg_n_0_[15]\,
      O => \eqOp_carry__0_i_3_n_0\
    );
\eqOp_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[12]\,
      I1 => R(12),
      I2 => \res_sum_reg_n_0_[13]\,
      I3 => R(13),
      I4 => R(14),
      I5 => \res_sum_reg_n_0_[14]\,
      O => \eqOp_carry__0_i_4_n_0\
    );
\eqOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_carry__0_n_0\,
      CO(3) => \NLW_eqOp_carry__1_CO_UNCONNECTED\(3),
      CO(2) => eqOp,
      CO(1) => \eqOp_carry__1_n_2\,
      CO(0) => \eqOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \eqOp_carry__1_i_1_n_0\,
      S(1) => \eqOp_carry__1_i_2_n_0\,
      S(0) => \eqOp_carry__1_i_3_n_0\
    );
\eqOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(30),
      I1 => \res_sum_reg_n_0_[30]\,
      O => \eqOp_carry__1_i_1_n_0\
    );
\eqOp_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[28]\,
      I1 => R(28),
      I2 => \res_sum_reg_n_0_[29]\,
      I3 => R(29),
      I4 => R(27),
      I5 => \res_sum_reg_n_0_[27]\,
      O => \eqOp_carry__1_i_2_n_0\
    );
\eqOp_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[24]\,
      I1 => R(24),
      I2 => \res_sum_reg_n_0_[25]\,
      I3 => R(25),
      I4 => R(26),
      I5 => \res_sum_reg_n_0_[26]\,
      O => \eqOp_carry__1_i_3_n_0\
    );
eqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[10]\,
      I1 => R(10),
      I2 => \res_sum_reg_n_0_[11]\,
      I3 => R(11),
      I4 => R(9),
      I5 => \res_sum_reg_n_0_[9]\,
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[6]\,
      I1 => R(6),
      I2 => \res_sum_reg_n_0_[7]\,
      I3 => R(7),
      I4 => R(8),
      I5 => \res_sum_reg_n_0_[8]\,
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[4]\,
      I1 => R(4),
      I2 => \res_sum_reg_n_0_[5]\,
      I3 => R(5),
      I4 => R(3),
      I5 => \res_sum_reg_n_0_[3]\,
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \res_sum_reg_n_0_[0]\,
      I1 => R(0),
      I2 => \res_sum_reg_n_0_[1]\,
      I3 => R(1),
      I4 => R(2),
      I5 => \res_sum_reg_n_0_[2]\,
      O => eqOp_carry_i_4_n_0
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3) => \gtOp_carry__0_n_0\,
      CO(2) => \gtOp_carry__0_n_1\,
      CO(1) => \gtOp_carry__0_n_2\,
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gtOp_carry__0_i_1_n_0\,
      DI(2) => \gtOp_carry__0_i_2_n_0\,
      DI(1) => \gtOp_carry__0_i_3_n_0\,
      DI(0) => \gtOp_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \gtOp_carry__0_i_5_n_0\,
      S(2) => \gtOp_carry__0_i_6_n_0\,
      S(1) => \gtOp_carry__0_i_7_n_0\,
      S(0) => \gtOp_carry__0_i_8_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[15]\,
      I1 => R(15),
      I2 => \res_sum_reg_n_0_[14]\,
      I3 => R(14),
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[13]\,
      I1 => R(13),
      I2 => \res_sum_reg_n_0_[12]\,
      I3 => R(12),
      O => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[11]\,
      I1 => R(11),
      I2 => \res_sum_reg_n_0_[10]\,
      I3 => R(10),
      O => \gtOp_carry__0_i_3_n_0\
    );
\gtOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[9]\,
      I1 => R(9),
      I2 => \res_sum_reg_n_0_[8]\,
      I3 => R(8),
      O => \gtOp_carry__0_i_4_n_0\
    );
\gtOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(15),
      I1 => \res_sum_reg_n_0_[15]\,
      I2 => R(14),
      I3 => \res_sum_reg_n_0_[14]\,
      O => \gtOp_carry__0_i_5_n_0\
    );
\gtOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(13),
      I1 => \res_sum_reg_n_0_[13]\,
      I2 => R(12),
      I3 => \res_sum_reg_n_0_[12]\,
      O => \gtOp_carry__0_i_6_n_0\
    );
\gtOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(11),
      I1 => \res_sum_reg_n_0_[11]\,
      I2 => R(10),
      I3 => \res_sum_reg_n_0_[10]\,
      O => \gtOp_carry__0_i_7_n_0\
    );
\gtOp_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(9),
      I1 => \res_sum_reg_n_0_[9]\,
      I2 => R(8),
      I3 => \res_sum_reg_n_0_[8]\,
      O => \gtOp_carry__0_i_8_n_0\
    );
\gtOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_carry__0_n_0\,
      CO(3) => \gtOp_carry__1_n_0\,
      CO(2) => \gtOp_carry__1_n_1\,
      CO(1) => \gtOp_carry__1_n_2\,
      CO(0) => \gtOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \gtOp_carry__1_i_1_n_0\,
      DI(2) => \gtOp_carry__1_i_2_n_0\,
      DI(1) => \gtOp_carry__1_i_3_n_0\,
      DI(0) => \gtOp_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \gtOp_carry__1_i_5_n_0\,
      S(2) => \gtOp_carry__1_i_6_n_0\,
      S(1) => \gtOp_carry__1_i_7_n_0\,
      S(0) => \gtOp_carry__1_i_8_n_0\
    );
\gtOp_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[23]\,
      I1 => R(23),
      I2 => \res_sum_reg_n_0_[22]\,
      I3 => R(22),
      O => \gtOp_carry__1_i_1_n_0\
    );
\gtOp_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[21]\,
      I1 => R(21),
      I2 => \res_sum_reg_n_0_[20]\,
      I3 => R(20),
      O => \gtOp_carry__1_i_2_n_0\
    );
\gtOp_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[19]\,
      I1 => R(19),
      I2 => \res_sum_reg_n_0_[18]\,
      I3 => R(18),
      O => \gtOp_carry__1_i_3_n_0\
    );
\gtOp_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[17]\,
      I1 => R(17),
      I2 => \res_sum_reg_n_0_[16]\,
      I3 => R(16),
      O => \gtOp_carry__1_i_4_n_0\
    );
\gtOp_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(23),
      I1 => \res_sum_reg_n_0_[23]\,
      I2 => R(22),
      I3 => \res_sum_reg_n_0_[22]\,
      O => \gtOp_carry__1_i_5_n_0\
    );
\gtOp_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(21),
      I1 => \res_sum_reg_n_0_[21]\,
      I2 => R(20),
      I3 => \res_sum_reg_n_0_[20]\,
      O => \gtOp_carry__1_i_6_n_0\
    );
\gtOp_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(19),
      I1 => \res_sum_reg_n_0_[19]\,
      I2 => R(18),
      I3 => \res_sum_reg_n_0_[18]\,
      O => \gtOp_carry__1_i_7_n_0\
    );
\gtOp_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(17),
      I1 => \res_sum_reg_n_0_[17]\,
      I2 => R(16),
      I3 => \res_sum_reg_n_0_[16]\,
      O => \gtOp_carry__1_i_8_n_0\
    );
\gtOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_carry__1_n_0\,
      CO(3) => gtOp,
      CO(2) => \gtOp_carry__2_n_1\,
      CO(1) => \gtOp_carry__2_n_2\,
      CO(0) => \gtOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \gtOp_carry__2_i_1_n_0\,
      DI(2) => \gtOp_carry__2_i_2_n_0\,
      DI(1) => \gtOp_carry__2_i_3_n_0\,
      DI(0) => \gtOp_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \gtOp_carry__2_i_5_n_0\,
      S(2) => \gtOp_carry__2_i_6_n_0\,
      S(1) => \gtOp_carry__2_i_7_n_0\,
      S(0) => \gtOp_carry__2_i_8_n_0\
    );
\gtOp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[30]\,
      I1 => R(30),
      O => \gtOp_carry__2_i_1_n_0\
    );
\gtOp_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[29]\,
      I1 => R(29),
      I2 => \res_sum_reg_n_0_[28]\,
      I3 => R(28),
      O => \gtOp_carry__2_i_2_n_0\
    );
\gtOp_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[27]\,
      I1 => R(27),
      I2 => \res_sum_reg_n_0_[26]\,
      I3 => R(26),
      O => \gtOp_carry__2_i_3_n_0\
    );
\gtOp_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[25]\,
      I1 => R(25),
      I2 => \res_sum_reg_n_0_[24]\,
      I3 => R(24),
      O => \gtOp_carry__2_i_4_n_0\
    );
\gtOp_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(30),
      I1 => \res_sum_reg_n_0_[30]\,
      O => \gtOp_carry__2_i_5_n_0\
    );
\gtOp_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(29),
      I1 => \res_sum_reg_n_0_[29]\,
      I2 => R(28),
      I3 => \res_sum_reg_n_0_[28]\,
      O => \gtOp_carry__2_i_6_n_0\
    );
\gtOp_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(27),
      I1 => \res_sum_reg_n_0_[27]\,
      I2 => R(26),
      I3 => \res_sum_reg_n_0_[26]\,
      O => \gtOp_carry__2_i_7_n_0\
    );
\gtOp_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(25),
      I1 => \res_sum_reg_n_0_[25]\,
      I2 => R(24),
      I3 => \res_sum_reg_n_0_[24]\,
      O => \gtOp_carry__2_i_8_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[7]\,
      I1 => R(7),
      I2 => \res_sum_reg_n_0_[6]\,
      I3 => R(6),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[5]\,
      I1 => R(5),
      I2 => \res_sum_reg_n_0_[4]\,
      I3 => R(4),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[3]\,
      I1 => R(3),
      I2 => \res_sum_reg_n_0_[2]\,
      I3 => R(2),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \res_sum_reg_n_0_[1]\,
      I1 => R(1),
      I2 => \res_sum_reg_n_0_[0]\,
      I3 => R(0),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(7),
      I1 => \res_sum_reg_n_0_[7]\,
      I2 => R(6),
      I3 => \res_sum_reg_n_0_[6]\,
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(5),
      I1 => \res_sum_reg_n_0_[5]\,
      I2 => R(4),
      I3 => \res_sum_reg_n_0_[4]\,
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(3),
      I1 => \res_sum_reg_n_0_[3]\,
      I2 => R(2),
      I3 => \res_sum_reg_n_0_[2]\,
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(1),
      I1 => \res_sum_reg_n_0_[1]\,
      I2 => R(0),
      I3 => \res_sum_reg_n_0_[0]\,
      O => gtOp_carry_i_8_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(7),
      I1 => \res_sum_reg_n_0_[7]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(6),
      I1 => \res_sum_reg_n_0_[6]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(5),
      I1 => \res_sum_reg_n_0_[5]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(4),
      I1 => \res_sum_reg_n_0_[4]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(11),
      I1 => \res_sum_reg_n_0_[11]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(10),
      I1 => \res_sum_reg_n_0_[10]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(9),
      I1 => \res_sum_reg_n_0_[9]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(8),
      I1 => \res_sum_reg_n_0_[8]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(15),
      I1 => \res_sum_reg_n_0_[15]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(14),
      I1 => \res_sum_reg_n_0_[14]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(13),
      I1 => \res_sum_reg_n_0_[13]\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(12),
      I1 => \res_sum_reg_n_0_[12]\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(19),
      I1 => \res_sum_reg_n_0_[19]\,
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(18),
      I1 => \res_sum_reg_n_0_[18]\,
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(17),
      I1 => \res_sum_reg_n_0_[17]\,
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(16),
      I1 => \res_sum_reg_n_0_[16]\,
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(23),
      I1 => \res_sum_reg_n_0_[23]\,
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(22),
      I1 => \res_sum_reg_n_0_[22]\,
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(21),
      I1 => \res_sum_reg_n_0_[21]\,
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(20),
      I1 => \res_sum_reg_n_0_[20]\,
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(27),
      I1 => \res_sum_reg_n_0_[27]\,
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(26),
      I1 => \res_sum_reg_n_0_[26]\,
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(25),
      I1 => \res_sum_reg_n_0_[25]\,
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(24),
      I1 => \res_sum_reg_n_0_[24]\,
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(30),
      I1 => \res_sum_reg_n_0_[30]\,
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(29),
      I1 => \res_sum_reg_n_0_[29]\,
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(28),
      I1 => \res_sum_reg_n_0_[28]\,
      O => \i__carry__6_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(3),
      I1 => \res_sum_reg_n_0_[3]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(2),
      I1 => \res_sum_reg_n_0_[2]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(1),
      I1 => \res_sum_reg_n_0_[1]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(0),
      I1 => \res_sum_reg_n_0_[0]\,
      O => \i__carry_i_4_n_0\
    );
\index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000400040"
    )
        port map (
      I0 => \^index_reg[0]_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => \^index_reg[1]_0\,
      I5 => \^index_reg[2]_0\,
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000400080"
    )
        port map (
      I0 => \^index_reg[0]_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => \^index_reg[1]_0\,
      I5 => \^index_reg[2]_0\,
      O => \index[1]_i_1_n_0\
    );
\index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FF"
    )
        port map (
      I0 => clock_wait,
      I1 => Enable,
      I2 => \^valid_reg_0\,
      I3 => Reset,
      O => res_sum(0)
    );
\index[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C000800000"
    )
        port map (
      I0 => \^index_reg[0]_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => \^index_reg[1]_0\,
      I5 => \^index_reg[2]_0\,
      O => \index[2]_i_2_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \index[0]_i_1_n_0\,
      Q => \^index_reg[0]_0\,
      R => '0'
    );
\index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \index[1]_i_1_n_0\,
      Q => \^index_reg[1]_0\,
      R => '0'
    );
\index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \index[2]_i_2_n_0\,
      Q => \^index_reg[2]_0\,
      R => '0'
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => R(3 downto 0),
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => minusOp_carry_i_4_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R(7 downto 4),
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(7),
      I1 => \res_sum_reg_n_0_[7]\,
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(6),
      I1 => \res_sum_reg_n_0_[6]\,
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(5),
      I1 => \res_sum_reg_n_0_[5]\,
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(4),
      I1 => \res_sum_reg_n_0_[4]\,
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R(11 downto 8),
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(11),
      I1 => \res_sum_reg_n_0_[11]\,
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(10),
      I1 => \res_sum_reg_n_0_[10]\,
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(9),
      I1 => \res_sum_reg_n_0_[9]\,
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(8),
      I1 => \res_sum_reg_n_0_[8]\,
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R(15 downto 12),
      O(3) => \minusOp_carry__2_n_4\,
      O(2) => \minusOp_carry__2_n_5\,
      O(1) => \minusOp_carry__2_n_6\,
      O(0) => \minusOp_carry__2_n_7\,
      S(3) => \minusOp_carry__2_i_1_n_0\,
      S(2) => \minusOp_carry__2_i_2_n_0\,
      S(1) => \minusOp_carry__2_i_3_n_0\,
      S(0) => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(15),
      I1 => \res_sum_reg_n_0_[15]\,
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(14),
      I1 => \res_sum_reg_n_0_[14]\,
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(13),
      I1 => \res_sum_reg_n_0_[13]\,
      O => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(12),
      I1 => \res_sum_reg_n_0_[12]\,
      O => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__2_n_0\,
      CO(3) => \minusOp_carry__3_n_0\,
      CO(2) => \minusOp_carry__3_n_1\,
      CO(1) => \minusOp_carry__3_n_2\,
      CO(0) => \minusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R(19 downto 16),
      O(3) => \minusOp_carry__3_n_4\,
      O(2) => \minusOp_carry__3_n_5\,
      O(1) => \minusOp_carry__3_n_6\,
      O(0) => \minusOp_carry__3_n_7\,
      S(3) => \minusOp_carry__3_i_1_n_0\,
      S(2) => \minusOp_carry__3_i_2_n_0\,
      S(1) => \minusOp_carry__3_i_3_n_0\,
      S(0) => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(19),
      I1 => \res_sum_reg_n_0_[19]\,
      O => \minusOp_carry__3_i_1_n_0\
    );
\minusOp_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(18),
      I1 => \res_sum_reg_n_0_[18]\,
      O => \minusOp_carry__3_i_2_n_0\
    );
\minusOp_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(17),
      I1 => \res_sum_reg_n_0_[17]\,
      O => \minusOp_carry__3_i_3_n_0\
    );
\minusOp_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(16),
      I1 => \res_sum_reg_n_0_[16]\,
      O => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__3_n_0\,
      CO(3) => \minusOp_carry__4_n_0\,
      CO(2) => \minusOp_carry__4_n_1\,
      CO(1) => \minusOp_carry__4_n_2\,
      CO(0) => \minusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R(23 downto 20),
      O(3) => \minusOp_carry__4_n_4\,
      O(2) => \minusOp_carry__4_n_5\,
      O(1) => \minusOp_carry__4_n_6\,
      O(0) => \minusOp_carry__4_n_7\,
      S(3) => \minusOp_carry__4_i_1_n_0\,
      S(2) => \minusOp_carry__4_i_2_n_0\,
      S(1) => \minusOp_carry__4_i_3_n_0\,
      S(0) => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(23),
      I1 => \res_sum_reg_n_0_[23]\,
      O => \minusOp_carry__4_i_1_n_0\
    );
\minusOp_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(22),
      I1 => \res_sum_reg_n_0_[22]\,
      O => \minusOp_carry__4_i_2_n_0\
    );
\minusOp_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(21),
      I1 => \res_sum_reg_n_0_[21]\,
      O => \minusOp_carry__4_i_3_n_0\
    );
\minusOp_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(20),
      I1 => \res_sum_reg_n_0_[20]\,
      O => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__4_n_0\,
      CO(3) => \minusOp_carry__5_n_0\,
      CO(2) => \minusOp_carry__5_n_1\,
      CO(1) => \minusOp_carry__5_n_2\,
      CO(0) => \minusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R(27 downto 24),
      O(3) => \minusOp_carry__5_n_4\,
      O(2) => \minusOp_carry__5_n_5\,
      O(1) => \minusOp_carry__5_n_6\,
      O(0) => \minusOp_carry__5_n_7\,
      S(3) => \minusOp_carry__5_i_1_n_0\,
      S(2) => \minusOp_carry__5_i_2_n_0\,
      S(1) => \minusOp_carry__5_i_3_n_0\,
      S(0) => \minusOp_carry__5_i_4_n_0\
    );
\minusOp_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(27),
      I1 => \res_sum_reg_n_0_[27]\,
      O => \minusOp_carry__5_i_1_n_0\
    );
\minusOp_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(26),
      I1 => \res_sum_reg_n_0_[26]\,
      O => \minusOp_carry__5_i_2_n_0\
    );
\minusOp_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(25),
      I1 => \res_sum_reg_n_0_[25]\,
      O => \minusOp_carry__5_i_3_n_0\
    );
\minusOp_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(24),
      I1 => \res_sum_reg_n_0_[24]\,
      O => \minusOp_carry__5_i_4_n_0\
    );
\minusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_minusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_carry__6_n_2\,
      CO(0) => \minusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => R(29 downto 28),
      O(3) => \NLW_minusOp_carry__6_O_UNCONNECTED\(3),
      O(2) => \minusOp_carry__6_n_5\,
      O(1) => \minusOp_carry__6_n_6\,
      O(0) => \minusOp_carry__6_n_7\,
      S(3) => '0',
      S(2) => \minusOp_carry__6_i_1_n_0\,
      S(1) => \minusOp_carry__6_i_2_n_0\,
      S(0) => \minusOp_carry__6_i_3_n_0\
    );
\minusOp_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(30),
      I1 => \res_sum_reg_n_0_[30]\,
      O => \minusOp_carry__6_i_1_n_0\
    );
\minusOp_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(29),
      I1 => \res_sum_reg_n_0_[29]\,
      O => \minusOp_carry__6_i_2_n_0\
    );
\minusOp_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(28),
      I1 => \res_sum_reg_n_0_[28]\,
      O => \minusOp_carry__6_i_3_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(3),
      I1 => \res_sum_reg_n_0_[3]\,
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(2),
      I1 => \res_sum_reg_n_0_[2]\,
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(1),
      I1 => \res_sum_reg_n_0_[1]\,
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(0),
      I1 => \res_sum_reg_n_0_[0]\,
      O => minusOp_carry_i_4_n_0
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \res_sum_reg_n_0_[3]\,
      DI(2) => \res_sum_reg_n_0_[2]\,
      DI(1) => \res_sum_reg_n_0_[1]\,
      DI(0) => \res_sum_reg_n_0_[0]\,
      O(3) => \minusOp_inferred__0/i__carry_n_4\,
      O(2) => \minusOp_inferred__0/i__carry_n_5\,
      O(1) => \minusOp_inferred__0/i__carry_n_6\,
      O(0) => \minusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[7]\,
      DI(2) => \res_sum_reg_n_0_[6]\,
      DI(1) => \res_sum_reg_n_0_[5]\,
      DI(0) => \res_sum_reg_n_0_[4]\,
      O(3) => \minusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[11]\,
      DI(2) => \res_sum_reg_n_0_[10]\,
      DI(1) => \res_sum_reg_n_0_[9]\,
      DI(0) => \res_sum_reg_n_0_[8]\,
      O(3) => \minusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[15]\,
      DI(2) => \res_sum_reg_n_0_[14]\,
      DI(1) => \res_sum_reg_n_0_[13]\,
      DI(0) => \res_sum_reg_n_0_[12]\,
      O(3) => \minusOp_inferred__0/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[19]\,
      DI(2) => \res_sum_reg_n_0_[18]\,
      DI(1) => \res_sum_reg_n_0_[17]\,
      DI(0) => \res_sum_reg_n_0_[16]\,
      O(3) => \minusOp_inferred__0/i__carry__3_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__3_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__3_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__4_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__4_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__4_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[23]\,
      DI(2) => \res_sum_reg_n_0_[22]\,
      DI(1) => \res_sum_reg_n_0_[21]\,
      DI(0) => \res_sum_reg_n_0_[20]\,
      O(3) => \minusOp_inferred__0/i__carry__4_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__4_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__4_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__4_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__5_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__5_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__5_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[27]\,
      DI(2) => \res_sum_reg_n_0_[26]\,
      DI(1) => \res_sum_reg_n_0_[25]\,
      DI(0) => \res_sum_reg_n_0_[24]\,
      O(3) => \minusOp_inferred__0/i__carry__5_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__5_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__5_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__5_n_7\,
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_inferred__0/i__carry__6_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \res_sum_reg_n_0_[29]\,
      DI(0) => \res_sum_reg_n_0_[28]\,
      O(3) => \NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2) => \minusOp_inferred__0/i__carry__6_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__6_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__6_n_7\,
      S(3) => '0',
      S(2) => \i__carry__6_i_1_n_0\,
      S(1) => \i__carry__6_i_2_n_0\,
      S(0) => \i__carry__6_i_3_n_0\
    );
multOp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => Input_Value(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_multOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 14) => B"0000",
      B(13 downto 0) => w_in(30 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_multOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_multOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_multOp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_multOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_multOp_OVERFLOW_UNCONNECTED,
      P(47) => multOp_n_58,
      P(46) => multOp_n_59,
      P(45) => multOp_n_60,
      P(44) => multOp_n_61,
      P(43) => multOp_n_62,
      P(42) => multOp_n_63,
      P(41) => multOp_n_64,
      P(40) => multOp_n_65,
      P(39) => multOp_n_66,
      P(38) => multOp_n_67,
      P(37) => multOp_n_68,
      P(36) => multOp_n_69,
      P(35) => multOp_n_70,
      P(34) => multOp_n_71,
      P(33) => multOp_n_72,
      P(32) => multOp_n_73,
      P(31) => multOp_n_74,
      P(30) => multOp_n_75,
      P(29) => multOp_n_76,
      P(28) => multOp_n_77,
      P(27) => multOp_n_78,
      P(26) => multOp_n_79,
      P(25) => multOp_n_80,
      P(24) => multOp_n_81,
      P(23) => multOp_n_82,
      P(22) => multOp_n_83,
      P(21) => multOp_n_84,
      P(20) => multOp_n_85,
      P(19) => multOp_n_86,
      P(18) => multOp_n_87,
      P(17) => multOp_n_88,
      P(16) => multOp_n_89,
      P(15) => multOp_n_90,
      P(14) => multOp_n_91,
      P(13) => multOp_n_92,
      P(12) => multOp_n_93,
      P(11) => multOp_n_94,
      P(10) => multOp_n_95,
      P(9) => multOp_n_96,
      P(8) => multOp_n_97,
      P(7) => multOp_n_98,
      P(6) => multOp_n_99,
      P(5) => multOp_n_100,
      P(4) => multOp_n_101,
      P(3) => multOp_n_102,
      P(2) => multOp_n_103,
      P(1) => multOp_n_104,
      P(0) => multOp_n_105,
      PATTERNBDETECT => NLW_multOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_multOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => multOp_n_106,
      PCOUT(46) => multOp_n_107,
      PCOUT(45) => multOp_n_108,
      PCOUT(44) => multOp_n_109,
      PCOUT(43) => multOp_n_110,
      PCOUT(42) => multOp_n_111,
      PCOUT(41) => multOp_n_112,
      PCOUT(40) => multOp_n_113,
      PCOUT(39) => multOp_n_114,
      PCOUT(38) => multOp_n_115,
      PCOUT(37) => multOp_n_116,
      PCOUT(36) => multOp_n_117,
      PCOUT(35) => multOp_n_118,
      PCOUT(34) => multOp_n_119,
      PCOUT(33) => multOp_n_120,
      PCOUT(32) => multOp_n_121,
      PCOUT(31) => multOp_n_122,
      PCOUT(30) => multOp_n_123,
      PCOUT(29) => multOp_n_124,
      PCOUT(28) => multOp_n_125,
      PCOUT(27) => multOp_n_126,
      PCOUT(26) => multOp_n_127,
      PCOUT(25) => multOp_n_128,
      PCOUT(24) => multOp_n_129,
      PCOUT(23) => multOp_n_130,
      PCOUT(22) => multOp_n_131,
      PCOUT(21) => multOp_n_132,
      PCOUT(20) => multOp_n_133,
      PCOUT(19) => multOp_n_134,
      PCOUT(18) => multOp_n_135,
      PCOUT(17) => multOp_n_136,
      PCOUT(16) => multOp_n_137,
      PCOUT(15) => multOp_n_138,
      PCOUT(14) => multOp_n_139,
      PCOUT(13) => multOp_n_140,
      PCOUT(12) => multOp_n_141,
      PCOUT(11) => multOp_n_142,
      PCOUT(10) => multOp_n_143,
      PCOUT(9) => multOp_n_144,
      PCOUT(8) => multOp_n_145,
      PCOUT(7) => multOp_n_146,
      PCOUT(6) => multOp_n_147,
      PCOUT(5) => multOp_n_148,
      PCOUT(4) => multOp_n_149,
      PCOUT(3) => multOp_n_150,
      PCOUT(2) => multOp_n_151,
      PCOUT(1) => multOp_n_152,
      PCOUT(0) => multOp_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_multOp_UNDERFLOW_UNCONNECTED
    );
\multOp__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 14) => B"0000000000000000",
      A(13 downto 0) => w_in(30 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_multOp__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 14) => B"0000",
      B(13 downto 0) => Input_Value(30 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_multOp__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_multOp__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_multOp__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_multOp__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_multOp__0_OVERFLOW_UNCONNECTED\,
      P(47) => \multOp__0_n_58\,
      P(46) => \multOp__0_n_59\,
      P(45) => \multOp__0_n_60\,
      P(44) => \multOp__0_n_61\,
      P(43) => \multOp__0_n_62\,
      P(42) => \multOp__0_n_63\,
      P(41) => \multOp__0_n_64\,
      P(40) => \multOp__0_n_65\,
      P(39) => \multOp__0_n_66\,
      P(38) => \multOp__0_n_67\,
      P(37) => \multOp__0_n_68\,
      P(36) => \multOp__0_n_69\,
      P(35) => \multOp__0_n_70\,
      P(34) => \multOp__0_n_71\,
      P(33) => \multOp__0_n_72\,
      P(32) => \multOp__0_n_73\,
      P(31) => \multOp__0_n_74\,
      P(30) => \multOp__0_n_75\,
      P(29) => \multOp__0_n_76\,
      P(28) => \multOp__0_n_77\,
      P(27) => \multOp__0_n_78\,
      P(26) => \multOp__0_n_79\,
      P(25) => \multOp__0_n_80\,
      P(24) => \multOp__0_n_81\,
      P(23) => \multOp__0_n_82\,
      P(22) => \multOp__0_n_83\,
      P(21) => \multOp__0_n_84\,
      P(20) => \multOp__0_n_85\,
      P(19) => \multOp__0_n_86\,
      P(18) => \multOp__0_n_87\,
      P(17) => \multOp__0_n_88\,
      P(16) => \multOp__0_n_89\,
      P(15) => \multOp__0_n_90\,
      P(14) => \multOp__0_n_91\,
      P(13) => \multOp__0_n_92\,
      P(12) => \multOp__0_n_93\,
      P(11) => \multOp__0_n_94\,
      P(10) => \multOp__0_n_95\,
      P(9) => \multOp__0_n_96\,
      P(8) => \multOp__0_n_97\,
      P(7) => \multOp__0_n_98\,
      P(6) => \multOp__0_n_99\,
      P(5) => \multOp__0_n_100\,
      P(4) => \multOp__0_n_101\,
      P(3) => \multOp__0_n_102\,
      P(2) => \multOp__0_n_103\,
      P(1) => \multOp__0_n_104\,
      P(0) => \multOp__0_n_105\,
      PATTERNBDETECT => \NLW_multOp__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_multOp__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => multOp_n_106,
      PCIN(46) => multOp_n_107,
      PCIN(45) => multOp_n_108,
      PCIN(44) => multOp_n_109,
      PCIN(43) => multOp_n_110,
      PCIN(42) => multOp_n_111,
      PCIN(41) => multOp_n_112,
      PCIN(40) => multOp_n_113,
      PCIN(39) => multOp_n_114,
      PCIN(38) => multOp_n_115,
      PCIN(37) => multOp_n_116,
      PCIN(36) => multOp_n_117,
      PCIN(35) => multOp_n_118,
      PCIN(34) => multOp_n_119,
      PCIN(33) => multOp_n_120,
      PCIN(32) => multOp_n_121,
      PCIN(31) => multOp_n_122,
      PCIN(30) => multOp_n_123,
      PCIN(29) => multOp_n_124,
      PCIN(28) => multOp_n_125,
      PCIN(27) => multOp_n_126,
      PCIN(26) => multOp_n_127,
      PCIN(25) => multOp_n_128,
      PCIN(24) => multOp_n_129,
      PCIN(23) => multOp_n_130,
      PCIN(22) => multOp_n_131,
      PCIN(21) => multOp_n_132,
      PCIN(20) => multOp_n_133,
      PCIN(19) => multOp_n_134,
      PCIN(18) => multOp_n_135,
      PCIN(17) => multOp_n_136,
      PCIN(16) => multOp_n_137,
      PCIN(15) => multOp_n_138,
      PCIN(14) => multOp_n_139,
      PCIN(13) => multOp_n_140,
      PCIN(12) => multOp_n_141,
      PCIN(11) => multOp_n_142,
      PCIN(10) => multOp_n_143,
      PCIN(9) => multOp_n_144,
      PCIN(8) => multOp_n_145,
      PCIN(7) => multOp_n_146,
      PCIN(6) => multOp_n_147,
      PCIN(5) => multOp_n_148,
      PCIN(4) => multOp_n_149,
      PCIN(3) => multOp_n_150,
      PCIN(2) => multOp_n_151,
      PCIN(1) => multOp_n_152,
      PCIN(0) => multOp_n_153,
      PCOUT(47 downto 0) => \NLW_multOp__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_multOp__0_UNDERFLOW_UNCONNECTED\
    );
\multOp__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => w_in(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \multOp__1_n_24\,
      ACOUT(28) => \multOp__1_n_25\,
      ACOUT(27) => \multOp__1_n_26\,
      ACOUT(26) => \multOp__1_n_27\,
      ACOUT(25) => \multOp__1_n_28\,
      ACOUT(24) => \multOp__1_n_29\,
      ACOUT(23) => \multOp__1_n_30\,
      ACOUT(22) => \multOp__1_n_31\,
      ACOUT(21) => \multOp__1_n_32\,
      ACOUT(20) => \multOp__1_n_33\,
      ACOUT(19) => \multOp__1_n_34\,
      ACOUT(18) => \multOp__1_n_35\,
      ACOUT(17) => \multOp__1_n_36\,
      ACOUT(16) => \multOp__1_n_37\,
      ACOUT(15) => \multOp__1_n_38\,
      ACOUT(14) => \multOp__1_n_39\,
      ACOUT(13) => \multOp__1_n_40\,
      ACOUT(12) => \multOp__1_n_41\,
      ACOUT(11) => \multOp__1_n_42\,
      ACOUT(10) => \multOp__1_n_43\,
      ACOUT(9) => \multOp__1_n_44\,
      ACOUT(8) => \multOp__1_n_45\,
      ACOUT(7) => \multOp__1_n_46\,
      ACOUT(6) => \multOp__1_n_47\,
      ACOUT(5) => \multOp__1_n_48\,
      ACOUT(4) => \multOp__1_n_49\,
      ACOUT(3) => \multOp__1_n_50\,
      ACOUT(2) => \multOp__1_n_51\,
      ACOUT(1) => \multOp__1_n_52\,
      ACOUT(0) => \multOp__1_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => Input_Value(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_multOp__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_multOp__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_multOp__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_multOp__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_multOp__1_OVERFLOW_UNCONNECTED\,
      P(47) => \multOp__1_n_58\,
      P(46) => \multOp__1_n_59\,
      P(45) => \multOp__1_n_60\,
      P(44) => \multOp__1_n_61\,
      P(43) => \multOp__1_n_62\,
      P(42) => \multOp__1_n_63\,
      P(41) => \multOp__1_n_64\,
      P(40) => \multOp__1_n_65\,
      P(39) => \multOp__1_n_66\,
      P(38) => \multOp__1_n_67\,
      P(37) => \multOp__1_n_68\,
      P(36) => \multOp__1_n_69\,
      P(35) => \multOp__1_n_70\,
      P(34) => \multOp__1_n_71\,
      P(33) => \multOp__1_n_72\,
      P(32) => \multOp__1_n_73\,
      P(31) => \multOp__1_n_74\,
      P(30) => \multOp__1_n_75\,
      P(29) => \multOp__1_n_76\,
      P(28) => \multOp__1_n_77\,
      P(27) => \multOp__1_n_78\,
      P(26) => \multOp__1_n_79\,
      P(25) => \multOp__1_n_80\,
      P(24) => \multOp__1_n_81\,
      P(23) => \multOp__1_n_82\,
      P(22) => \multOp__1_n_83\,
      P(21) => \multOp__1_n_84\,
      P(20) => \multOp__1_n_85\,
      P(19) => \multOp__1_n_86\,
      P(18) => \multOp__1_n_87\,
      P(17) => \multOp__1_n_88\,
      P(16) => \multOp__1_n_89\,
      P(15) => \multOp__1_n_90\,
      P(14) => \multOp__1_n_91\,
      P(13) => \multOp__1_n_92\,
      P(12) => \multOp__1_n_93\,
      P(11) => \multOp__1_n_94\,
      P(10) => \multOp__1_n_95\,
      P(9) => \multOp__1_n_96\,
      P(8) => \multOp__1_n_97\,
      P(7) => \multOp__1_n_98\,
      P(6) => \multOp__1_n_99\,
      P(5) => \multOp__1_n_100\,
      P(4) => \multOp__1_n_101\,
      P(3) => \multOp__1_n_102\,
      P(2) => \multOp__1_n_103\,
      P(1) => \multOp__1_n_104\,
      P(0) => \multOp__1_n_105\,
      PATTERNBDETECT => \NLW_multOp__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_multOp__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \multOp__1_n_106\,
      PCOUT(46) => \multOp__1_n_107\,
      PCOUT(45) => \multOp__1_n_108\,
      PCOUT(44) => \multOp__1_n_109\,
      PCOUT(43) => \multOp__1_n_110\,
      PCOUT(42) => \multOp__1_n_111\,
      PCOUT(41) => \multOp__1_n_112\,
      PCOUT(40) => \multOp__1_n_113\,
      PCOUT(39) => \multOp__1_n_114\,
      PCOUT(38) => \multOp__1_n_115\,
      PCOUT(37) => \multOp__1_n_116\,
      PCOUT(36) => \multOp__1_n_117\,
      PCOUT(35) => \multOp__1_n_118\,
      PCOUT(34) => \multOp__1_n_119\,
      PCOUT(33) => \multOp__1_n_120\,
      PCOUT(32) => \multOp__1_n_121\,
      PCOUT(31) => \multOp__1_n_122\,
      PCOUT(30) => \multOp__1_n_123\,
      PCOUT(29) => \multOp__1_n_124\,
      PCOUT(28) => \multOp__1_n_125\,
      PCOUT(27) => \multOp__1_n_126\,
      PCOUT(26) => \multOp__1_n_127\,
      PCOUT(25) => \multOp__1_n_128\,
      PCOUT(24) => \multOp__1_n_129\,
      PCOUT(23) => \multOp__1_n_130\,
      PCOUT(22) => \multOp__1_n_131\,
      PCOUT(21) => \multOp__1_n_132\,
      PCOUT(20) => \multOp__1_n_133\,
      PCOUT(19) => \multOp__1_n_134\,
      PCOUT(18) => \multOp__1_n_135\,
      PCOUT(17) => \multOp__1_n_136\,
      PCOUT(16) => \multOp__1_n_137\,
      PCOUT(15) => \multOp__1_n_138\,
      PCOUT(14) => \multOp__1_n_139\,
      PCOUT(13) => \multOp__1_n_140\,
      PCOUT(12) => \multOp__1_n_141\,
      PCOUT(11) => \multOp__1_n_142\,
      PCOUT(10) => \multOp__1_n_143\,
      PCOUT(9) => \multOp__1_n_144\,
      PCOUT(8) => \multOp__1_n_145\,
      PCOUT(7) => \multOp__1_n_146\,
      PCOUT(6) => \multOp__1_n_147\,
      PCOUT(5) => \multOp__1_n_148\,
      PCOUT(4) => \multOp__1_n_149\,
      PCOUT(3) => \multOp__1_n_150\,
      PCOUT(2) => \multOp__1_n_151\,
      PCOUT(1) => \multOp__1_n_152\,
      PCOUT(0) => \multOp__1_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_multOp__1_UNDERFLOW_UNCONNECTED\
    );
\multOp__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => \multOp__1_n_24\,
      ACIN(28) => \multOp__1_n_25\,
      ACIN(27) => \multOp__1_n_26\,
      ACIN(26) => \multOp__1_n_27\,
      ACIN(25) => \multOp__1_n_28\,
      ACIN(24) => \multOp__1_n_29\,
      ACIN(23) => \multOp__1_n_30\,
      ACIN(22) => \multOp__1_n_31\,
      ACIN(21) => \multOp__1_n_32\,
      ACIN(20) => \multOp__1_n_33\,
      ACIN(19) => \multOp__1_n_34\,
      ACIN(18) => \multOp__1_n_35\,
      ACIN(17) => \multOp__1_n_36\,
      ACIN(16) => \multOp__1_n_37\,
      ACIN(15) => \multOp__1_n_38\,
      ACIN(14) => \multOp__1_n_39\,
      ACIN(13) => \multOp__1_n_40\,
      ACIN(12) => \multOp__1_n_41\,
      ACIN(11) => \multOp__1_n_42\,
      ACIN(10) => \multOp__1_n_43\,
      ACIN(9) => \multOp__1_n_44\,
      ACIN(8) => \multOp__1_n_45\,
      ACIN(7) => \multOp__1_n_46\,
      ACIN(6) => \multOp__1_n_47\,
      ACIN(5) => \multOp__1_n_48\,
      ACIN(4) => \multOp__1_n_49\,
      ACIN(3) => \multOp__1_n_50\,
      ACIN(2) => \multOp__1_n_51\,
      ACIN(1) => \multOp__1_n_52\,
      ACIN(0) => \multOp__1_n_53\,
      ACOUT(29 downto 0) => \NLW_multOp__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 14) => B"0000",
      B(13 downto 0) => Input_Value(30 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_multOp__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_multOp__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_multOp__2_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_multOp__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_multOp__2_OVERFLOW_UNCONNECTED\,
      P(47) => \multOp__2_n_58\,
      P(46) => \multOp__2_n_59\,
      P(45) => \multOp__2_n_60\,
      P(44) => \multOp__2_n_61\,
      P(43) => \multOp__2_n_62\,
      P(42) => \multOp__2_n_63\,
      P(41) => \multOp__2_n_64\,
      P(40) => \multOp__2_n_65\,
      P(39) => \multOp__2_n_66\,
      P(38) => \multOp__2_n_67\,
      P(37) => \multOp__2_n_68\,
      P(36) => \multOp__2_n_69\,
      P(35) => \multOp__2_n_70\,
      P(34) => \multOp__2_n_71\,
      P(33) => \multOp__2_n_72\,
      P(32) => \multOp__2_n_73\,
      P(31) => \multOp__2_n_74\,
      P(30) => \multOp__2_n_75\,
      P(29) => \multOp__2_n_76\,
      P(28) => \multOp__2_n_77\,
      P(27) => \multOp__2_n_78\,
      P(26) => \multOp__2_n_79\,
      P(25) => \multOp__2_n_80\,
      P(24) => \multOp__2_n_81\,
      P(23) => \multOp__2_n_82\,
      P(22) => \multOp__2_n_83\,
      P(21) => \multOp__2_n_84\,
      P(20) => \multOp__2_n_85\,
      P(19) => \multOp__2_n_86\,
      P(18) => \multOp__2_n_87\,
      P(17) => \multOp__2_n_88\,
      P(16) => \multOp__2_n_89\,
      P(15) => \multOp__2_n_90\,
      P(14) => \multOp__2_n_91\,
      P(13) => \multOp__2_n_92\,
      P(12) => \multOp__2_n_93\,
      P(11) => \multOp__2_n_94\,
      P(10) => \multOp__2_n_95\,
      P(9) => \multOp__2_n_96\,
      P(8) => \multOp__2_n_97\,
      P(7) => \multOp__2_n_98\,
      P(6) => \multOp__2_n_99\,
      P(5) => \multOp__2_n_100\,
      P(4) => \multOp__2_n_101\,
      P(3) => \multOp__2_n_102\,
      P(2) => \multOp__2_n_103\,
      P(1) => \multOp__2_n_104\,
      P(0) => \multOp__2_n_105\,
      PATTERNBDETECT => \NLW_multOp__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_multOp__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \multOp__1_n_106\,
      PCIN(46) => \multOp__1_n_107\,
      PCIN(45) => \multOp__1_n_108\,
      PCIN(44) => \multOp__1_n_109\,
      PCIN(43) => \multOp__1_n_110\,
      PCIN(42) => \multOp__1_n_111\,
      PCIN(41) => \multOp__1_n_112\,
      PCIN(40) => \multOp__1_n_113\,
      PCIN(39) => \multOp__1_n_114\,
      PCIN(38) => \multOp__1_n_115\,
      PCIN(37) => \multOp__1_n_116\,
      PCIN(36) => \multOp__1_n_117\,
      PCIN(35) => \multOp__1_n_118\,
      PCIN(34) => \multOp__1_n_119\,
      PCIN(33) => \multOp__1_n_120\,
      PCIN(32) => \multOp__1_n_121\,
      PCIN(31) => \multOp__1_n_122\,
      PCIN(30) => \multOp__1_n_123\,
      PCIN(29) => \multOp__1_n_124\,
      PCIN(28) => \multOp__1_n_125\,
      PCIN(27) => \multOp__1_n_126\,
      PCIN(26) => \multOp__1_n_127\,
      PCIN(25) => \multOp__1_n_128\,
      PCIN(24) => \multOp__1_n_129\,
      PCIN(23) => \multOp__1_n_130\,
      PCIN(22) => \multOp__1_n_131\,
      PCIN(21) => \multOp__1_n_132\,
      PCIN(20) => \multOp__1_n_133\,
      PCIN(19) => \multOp__1_n_134\,
      PCIN(18) => \multOp__1_n_135\,
      PCIN(17) => \multOp__1_n_136\,
      PCIN(16) => \multOp__1_n_137\,
      PCIN(15) => \multOp__1_n_138\,
      PCIN(14) => \multOp__1_n_139\,
      PCIN(13) => \multOp__1_n_140\,
      PCIN(12) => \multOp__1_n_141\,
      PCIN(11) => \multOp__1_n_142\,
      PCIN(10) => \multOp__1_n_143\,
      PCIN(9) => \multOp__1_n_144\,
      PCIN(8) => \multOp__1_n_145\,
      PCIN(7) => \multOp__1_n_146\,
      PCIN(6) => \multOp__1_n_147\,
      PCIN(5) => \multOp__1_n_148\,
      PCIN(4) => \multOp__1_n_149\,
      PCIN(3) => \multOp__1_n_150\,
      PCIN(2) => \multOp__1_n_151\,
      PCIN(1) => \multOp__1_n_152\,
      PCIN(0) => \multOp__1_n_153\,
      PCOUT(47 downto 0) => \NLW_multOp__2_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_multOp__2_UNDERFLOW_UNCONNECTED\
    );
\res_mul_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(29),
      G => ltOp,
      GE => '1',
      Q => R(0)
    );
\res_mul_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(30),
      G => ltOp,
      GE => '1',
      Q => R(1)
    );
\res_mul_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(31),
      G => ltOp,
      GE => '1',
      Q => R(2)
    );
\res_mul_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[31]_i_2_n_0\,
      CO(3) => \res_mul_reg[31]_i_1_n_0\,
      CO(2) => \res_mul_reg[31]_i_1_n_1\,
      CO(1) => \res_mul_reg[31]_i_1_n_2\,
      CO(0) => \res_mul_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_91\,
      DI(2) => \multOp__2_n_92\,
      DI(1) => \multOp__2_n_93\,
      DI(0) => \multOp__2_n_94\,
      O(3 downto 1) => \multOp__3\(31 downto 29),
      O(0) => \NLW_res_mul_reg[31]_i_1_O_UNCONNECTED\(0),
      S(3) => \res_mul_reg[31]_i_3_n_0\,
      S(2) => \res_mul_reg[31]_i_4_n_0\,
      S(1) => \res_mul_reg[31]_i_5_n_0\,
      S(0) => \res_mul_reg[31]_i_6_n_0\
    );
\res_mul_reg[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_97\,
      I1 => multOp_n_97,
      O => \res_mul_reg[31]_i_10_n_0\
    );
\res_mul_reg[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_98\,
      I1 => multOp_n_98,
      O => \res_mul_reg[31]_i_11_n_0\
    );
\res_mul_reg[31]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \res_mul_reg[31]_i_12_n_0\,
      CO(2) => \res_mul_reg[31]_i_12_n_1\,
      CO(1) => \res_mul_reg[31]_i_12_n_2\,
      CO(0) => \res_mul_reg[31]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_103\,
      DI(2) => \multOp__2_n_104\,
      DI(1) => \multOp__2_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_res_mul_reg[31]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3) => \res_mul_reg[31]_i_17_n_0\,
      S(2) => \res_mul_reg[31]_i_18_n_0\,
      S(1) => \res_mul_reg[31]_i_19_n_0\,
      S(0) => \multOp__1_n_89\
    );
\res_mul_reg[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_99\,
      I1 => multOp_n_99,
      O => \res_mul_reg[31]_i_13_n_0\
    );
\res_mul_reg[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_100\,
      I1 => multOp_n_100,
      O => \res_mul_reg[31]_i_14_n_0\
    );
\res_mul_reg[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_101\,
      I1 => multOp_n_101,
      O => \res_mul_reg[31]_i_15_n_0\
    );
\res_mul_reg[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_102\,
      I1 => multOp_n_102,
      O => \res_mul_reg[31]_i_16_n_0\
    );
\res_mul_reg[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_103\,
      I1 => multOp_n_103,
      O => \res_mul_reg[31]_i_17_n_0\
    );
\res_mul_reg[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_104\,
      I1 => multOp_n_104,
      O => \res_mul_reg[31]_i_18_n_0\
    );
\res_mul_reg[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_105\,
      I1 => multOp_n_105,
      O => \res_mul_reg[31]_i_19_n_0\
    );
\res_mul_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[31]_i_7_n_0\,
      CO(3) => \res_mul_reg[31]_i_2_n_0\,
      CO(2) => \res_mul_reg[31]_i_2_n_1\,
      CO(1) => \res_mul_reg[31]_i_2_n_2\,
      CO(0) => \res_mul_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_95\,
      DI(2) => \multOp__2_n_96\,
      DI(1) => \multOp__2_n_97\,
      DI(0) => \multOp__2_n_98\,
      O(3 downto 0) => \NLW_res_mul_reg[31]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \res_mul_reg[31]_i_8_n_0\,
      S(2) => \res_mul_reg[31]_i_9_n_0\,
      S(1) => \res_mul_reg[31]_i_10_n_0\,
      S(0) => \res_mul_reg[31]_i_11_n_0\
    );
\res_mul_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_91\,
      I1 => multOp_n_91,
      O => \res_mul_reg[31]_i_3_n_0\
    );
\res_mul_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_92\,
      I1 => multOp_n_92,
      O => \res_mul_reg[31]_i_4_n_0\
    );
\res_mul_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_93\,
      I1 => multOp_n_93,
      O => \res_mul_reg[31]_i_5_n_0\
    );
\res_mul_reg[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_94\,
      I1 => multOp_n_94,
      O => \res_mul_reg[31]_i_6_n_0\
    );
\res_mul_reg[31]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[31]_i_12_n_0\,
      CO(3) => \res_mul_reg[31]_i_7_n_0\,
      CO(2) => \res_mul_reg[31]_i_7_n_1\,
      CO(1) => \res_mul_reg[31]_i_7_n_2\,
      CO(0) => \res_mul_reg[31]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_99\,
      DI(2) => \multOp__2_n_100\,
      DI(1) => \multOp__2_n_101\,
      DI(0) => \multOp__2_n_102\,
      O(3 downto 0) => \NLW_res_mul_reg[31]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \res_mul_reg[31]_i_13_n_0\,
      S(2) => \res_mul_reg[31]_i_14_n_0\,
      S(1) => \res_mul_reg[31]_i_15_n_0\,
      S(0) => \res_mul_reg[31]_i_16_n_0\
    );
\res_mul_reg[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_95\,
      I1 => multOp_n_95,
      O => \res_mul_reg[31]_i_8_n_0\
    );
\res_mul_reg[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_96\,
      I1 => multOp_n_96,
      O => \res_mul_reg[31]_i_9_n_0\
    );
\res_mul_reg[32]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(32),
      G => ltOp,
      GE => '1',
      Q => R(3)
    );
\res_mul_reg[33]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(33),
      G => ltOp,
      GE => '1',
      Q => R(4)
    );
\res_mul_reg[34]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(34),
      G => ltOp,
      GE => '1',
      Q => R(5)
    );
\res_mul_reg[35]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(35),
      G => ltOp,
      GE => '1',
      Q => R(6)
    );
\res_mul_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[31]_i_1_n_0\,
      CO(3) => \res_mul_reg[35]_i_1_n_0\,
      CO(2) => \res_mul_reg[35]_i_1_n_1\,
      CO(1) => \res_mul_reg[35]_i_1_n_2\,
      CO(0) => \res_mul_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_87\,
      DI(2) => \multOp__2_n_88\,
      DI(1) => \multOp__2_n_89\,
      DI(0) => \multOp__2_n_90\,
      O(3 downto 0) => \multOp__3\(35 downto 32),
      S(3) => \res_mul_reg[35]_i_2_n_0\,
      S(2) => \res_mul_reg[35]_i_3_n_0\,
      S(1) => \res_mul_reg[35]_i_4_n_0\,
      S(0) => \res_mul_reg[35]_i_5_n_0\
    );
\res_mul_reg[35]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_87\,
      I1 => \multOp__0_n_104\,
      O => \res_mul_reg[35]_i_2_n_0\
    );
\res_mul_reg[35]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_88\,
      I1 => \multOp__0_n_105\,
      O => \res_mul_reg[35]_i_3_n_0\
    );
\res_mul_reg[35]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_89\,
      I1 => multOp_n_89,
      O => \res_mul_reg[35]_i_4_n_0\
    );
\res_mul_reg[35]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_90\,
      I1 => multOp_n_90,
      O => \res_mul_reg[35]_i_5_n_0\
    );
\res_mul_reg[36]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(36),
      G => ltOp,
      GE => '1',
      Q => R(7)
    );
\res_mul_reg[37]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(37),
      G => ltOp,
      GE => '1',
      Q => R(8)
    );
\res_mul_reg[38]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(38),
      G => ltOp,
      GE => '1',
      Q => R(9)
    );
\res_mul_reg[39]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(39),
      G => ltOp,
      GE => '1',
      Q => R(10)
    );
\res_mul_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[35]_i_1_n_0\,
      CO(3) => \res_mul_reg[39]_i_1_n_0\,
      CO(2) => \res_mul_reg[39]_i_1_n_1\,
      CO(1) => \res_mul_reg[39]_i_1_n_2\,
      CO(0) => \res_mul_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_83\,
      DI(2) => \multOp__2_n_84\,
      DI(1) => \multOp__2_n_85\,
      DI(0) => \multOp__2_n_86\,
      O(3 downto 0) => \multOp__3\(39 downto 36),
      S(3) => \res_mul_reg[39]_i_2_n_0\,
      S(2) => \res_mul_reg[39]_i_3_n_0\,
      S(1) => \res_mul_reg[39]_i_4_n_0\,
      S(0) => \res_mul_reg[39]_i_5_n_0\
    );
\res_mul_reg[39]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_83\,
      I1 => \multOp__0_n_100\,
      O => \res_mul_reg[39]_i_2_n_0\
    );
\res_mul_reg[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_84\,
      I1 => \multOp__0_n_101\,
      O => \res_mul_reg[39]_i_3_n_0\
    );
\res_mul_reg[39]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_85\,
      I1 => \multOp__0_n_102\,
      O => \res_mul_reg[39]_i_4_n_0\
    );
\res_mul_reg[39]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_86\,
      I1 => \multOp__0_n_103\,
      O => \res_mul_reg[39]_i_5_n_0\
    );
\res_mul_reg[40]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(40),
      G => ltOp,
      GE => '1',
      Q => R(11)
    );
\res_mul_reg[41]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(41),
      G => ltOp,
      GE => '1',
      Q => R(12)
    );
\res_mul_reg[42]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(42),
      G => ltOp,
      GE => '1',
      Q => R(13)
    );
\res_mul_reg[43]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(43),
      G => ltOp,
      GE => '1',
      Q => R(14)
    );
\res_mul_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[39]_i_1_n_0\,
      CO(3) => \res_mul_reg[43]_i_1_n_0\,
      CO(2) => \res_mul_reg[43]_i_1_n_1\,
      CO(1) => \res_mul_reg[43]_i_1_n_2\,
      CO(0) => \res_mul_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_79\,
      DI(2) => \multOp__2_n_80\,
      DI(1) => \multOp__2_n_81\,
      DI(0) => \multOp__2_n_82\,
      O(3 downto 0) => \multOp__3\(43 downto 40),
      S(3) => \res_mul_reg[43]_i_2_n_0\,
      S(2) => \res_mul_reg[43]_i_3_n_0\,
      S(1) => \res_mul_reg[43]_i_4_n_0\,
      S(0) => \res_mul_reg[43]_i_5_n_0\
    );
\res_mul_reg[43]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_79\,
      I1 => \multOp__0_n_96\,
      O => \res_mul_reg[43]_i_2_n_0\
    );
\res_mul_reg[43]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_80\,
      I1 => \multOp__0_n_97\,
      O => \res_mul_reg[43]_i_3_n_0\
    );
\res_mul_reg[43]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_81\,
      I1 => \multOp__0_n_98\,
      O => \res_mul_reg[43]_i_4_n_0\
    );
\res_mul_reg[43]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_82\,
      I1 => \multOp__0_n_99\,
      O => \res_mul_reg[43]_i_5_n_0\
    );
\res_mul_reg[44]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(44),
      G => ltOp,
      GE => '1',
      Q => R(15)
    );
\res_mul_reg[45]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(45),
      G => ltOp,
      GE => '1',
      Q => R(16)
    );
\res_mul_reg[46]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(46),
      G => ltOp,
      GE => '1',
      Q => R(17)
    );
\res_mul_reg[47]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(47),
      G => ltOp,
      GE => '1',
      Q => R(18)
    );
\res_mul_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[43]_i_1_n_0\,
      CO(3) => \res_mul_reg[47]_i_1_n_0\,
      CO(2) => \res_mul_reg[47]_i_1_n_1\,
      CO(1) => \res_mul_reg[47]_i_1_n_2\,
      CO(0) => \res_mul_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_75\,
      DI(2) => \multOp__2_n_76\,
      DI(1) => \multOp__2_n_77\,
      DI(0) => \multOp__2_n_78\,
      O(3 downto 0) => \multOp__3\(47 downto 44),
      S(3) => \res_mul_reg[47]_i_2_n_0\,
      S(2) => \res_mul_reg[47]_i_3_n_0\,
      S(1) => \res_mul_reg[47]_i_4_n_0\,
      S(0) => \res_mul_reg[47]_i_5_n_0\
    );
\res_mul_reg[47]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_75\,
      I1 => \multOp__0_n_92\,
      O => \res_mul_reg[47]_i_2_n_0\
    );
\res_mul_reg[47]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_76\,
      I1 => \multOp__0_n_93\,
      O => \res_mul_reg[47]_i_3_n_0\
    );
\res_mul_reg[47]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_77\,
      I1 => \multOp__0_n_94\,
      O => \res_mul_reg[47]_i_4_n_0\
    );
\res_mul_reg[47]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_78\,
      I1 => \multOp__0_n_95\,
      O => \res_mul_reg[47]_i_5_n_0\
    );
\res_mul_reg[48]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(48),
      G => ltOp,
      GE => '1',
      Q => R(19)
    );
\res_mul_reg[49]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(49),
      G => ltOp,
      GE => '1',
      Q => R(20)
    );
\res_mul_reg[50]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(50),
      G => ltOp,
      GE => '1',
      Q => R(21)
    );
\res_mul_reg[51]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(51),
      G => ltOp,
      GE => '1',
      Q => R(22)
    );
\res_mul_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[47]_i_1_n_0\,
      CO(3) => \res_mul_reg[51]_i_1_n_0\,
      CO(2) => \res_mul_reg[51]_i_1_n_1\,
      CO(1) => \res_mul_reg[51]_i_1_n_2\,
      CO(0) => \res_mul_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_71\,
      DI(2) => \multOp__2_n_72\,
      DI(1) => \multOp__2_n_73\,
      DI(0) => \multOp__2_n_74\,
      O(3 downto 0) => \multOp__3\(51 downto 48),
      S(3) => \res_mul_reg[51]_i_2_n_0\,
      S(2) => \res_mul_reg[51]_i_3_n_0\,
      S(1) => \res_mul_reg[51]_i_4_n_0\,
      S(0) => \res_mul_reg[51]_i_5_n_0\
    );
\res_mul_reg[51]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_71\,
      I1 => \multOp__0_n_88\,
      O => \res_mul_reg[51]_i_2_n_0\
    );
\res_mul_reg[51]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_72\,
      I1 => \multOp__0_n_89\,
      O => \res_mul_reg[51]_i_3_n_0\
    );
\res_mul_reg[51]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_73\,
      I1 => \multOp__0_n_90\,
      O => \res_mul_reg[51]_i_4_n_0\
    );
\res_mul_reg[51]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_74\,
      I1 => \multOp__0_n_91\,
      O => \res_mul_reg[51]_i_5_n_0\
    );
\res_mul_reg[52]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(52),
      G => ltOp,
      GE => '1',
      Q => R(23)
    );
\res_mul_reg[53]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(53),
      G => ltOp,
      GE => '1',
      Q => R(24)
    );
\res_mul_reg[54]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(54),
      G => ltOp,
      GE => '1',
      Q => R(25)
    );
\res_mul_reg[55]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(55),
      G => ltOp,
      GE => '1',
      Q => R(26)
    );
\res_mul_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[51]_i_1_n_0\,
      CO(3) => \res_mul_reg[55]_i_1_n_0\,
      CO(2) => \res_mul_reg[55]_i_1_n_1\,
      CO(1) => \res_mul_reg[55]_i_1_n_2\,
      CO(0) => \res_mul_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__2_n_67\,
      DI(2) => \multOp__2_n_68\,
      DI(1) => \multOp__2_n_69\,
      DI(0) => \multOp__2_n_70\,
      O(3 downto 0) => \multOp__3\(55 downto 52),
      S(3) => \res_mul_reg[55]_i_2_n_0\,
      S(2) => \res_mul_reg[55]_i_3_n_0\,
      S(1) => \res_mul_reg[55]_i_4_n_0\,
      S(0) => \res_mul_reg[55]_i_5_n_0\
    );
\res_mul_reg[55]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_67\,
      I1 => \multOp__0_n_84\,
      O => \res_mul_reg[55]_i_2_n_0\
    );
\res_mul_reg[55]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_68\,
      I1 => \multOp__0_n_85\,
      O => \res_mul_reg[55]_i_3_n_0\
    );
\res_mul_reg[55]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_69\,
      I1 => \multOp__0_n_86\,
      O => \res_mul_reg[55]_i_4_n_0\
    );
\res_mul_reg[55]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_70\,
      I1 => \multOp__0_n_87\,
      O => \res_mul_reg[55]_i_5_n_0\
    );
\res_mul_reg[56]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(56),
      G => ltOp,
      GE => '1',
      Q => R(27)
    );
\res_mul_reg[57]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(57),
      G => ltOp,
      GE => '1',
      Q => R(28)
    );
\res_mul_reg[58]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(58),
      G => ltOp,
      GE => '1',
      Q => R(29)
    );
\res_mul_reg[59]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \multOp__3\(59),
      G => ltOp,
      GE => '1',
      Q => R(30)
    );
\res_mul_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_mul_reg[55]_i_1_n_0\,
      CO(3) => \NLW_res_mul_reg[59]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \res_mul_reg[59]_i_1_n_1\,
      CO(1) => \res_mul_reg[59]_i_1_n_2\,
      CO(0) => \res_mul_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \multOp__2_n_64\,
      DI(1) => \multOp__2_n_65\,
      DI(0) => \multOp__2_n_66\,
      O(3 downto 0) => \multOp__3\(59 downto 56),
      S(3) => \res_mul_reg[59]_i_2_n_0\,
      S(2) => \res_mul_reg[59]_i_3_n_0\,
      S(1) => \res_mul_reg[59]_i_4_n_0\,
      S(0) => \res_mul_reg[59]_i_5_n_0\
    );
\res_mul_reg[59]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_63\,
      I1 => \multOp__0_n_80\,
      O => \res_mul_reg[59]_i_2_n_0\
    );
\res_mul_reg[59]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_64\,
      I1 => \multOp__0_n_81\,
      O => \res_mul_reg[59]_i_3_n_0\
    );
\res_mul_reg[59]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_65\,
      I1 => \multOp__0_n_82\,
      O => \res_mul_reg[59]_i_4_n_0\
    );
\res_mul_reg[59]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__2_n_66\,
      I1 => \multOp__0_n_83\,
      O => \res_mul_reg[59]_i_5_n_0\
    );
\res_mul_reg[63]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mul_sign,
      G => ltOp,
      GE => '1',
      Q => R(31)
    );
\res_mul_reg[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Input_Value(31),
      I1 => w_in(31),
      O => mul_sign
    );
\res_mul_reg[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^index_reg[2]_0\,
      I1 => \^index_reg[1]_0\,
      I2 => \^index_reg[0]_0\,
      O => ltOp
    );
\res_sum[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => minusOp_carry_n_7,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry_n_7\,
      I4 => eqOp,
      I5 => \res_sum[0]_i_2_n_0\,
      O => \res_sum[0]_i_1_n_0\
    );
\res_sum[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(0),
      O => \res_sum[0]_i_2_n_0\
    );
\res_sum[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__1_n_5\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__1_n_5\,
      I4 => eqOp,
      I5 => \res_sum[10]_i_2_n_0\,
      O => \res_sum[10]_i_1_n_0\
    );
\res_sum[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(10),
      O => \res_sum[10]_i_2_n_0\
    );
\res_sum[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__1_n_4\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__1_n_4\,
      I4 => eqOp,
      I5 => \res_sum[11]_i_2_n_0\,
      O => \res_sum[11]_i_1_n_0\
    );
\res_sum[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(11),
      O => \res_sum[11]_i_2_n_0\
    );
\res_sum[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[11]\,
      I1 => R(11),
      O => \res_sum[11]_i_4_n_0\
    );
\res_sum[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[10]\,
      I1 => R(10),
      O => \res_sum[11]_i_5_n_0\
    );
\res_sum[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[9]\,
      I1 => R(9),
      O => \res_sum[11]_i_6_n_0\
    );
\res_sum[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[8]\,
      I1 => R(8),
      O => \res_sum[11]_i_7_n_0\
    );
\res_sum[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \res_sum[12]_i_2_n_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => Reset,
      O => \res_sum[12]_i_1_n_0\
    );
\res_sum[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \minusOp_carry__2_n_7\,
      I1 => gtOp,
      I2 => \minusOp_inferred__0/i__carry__2_n_7\,
      I3 => eqOp,
      I4 => \res_sum[29]_i_2_n_0\,
      I5 => data1(12),
      O => \res_sum[12]_i_2_n_0\
    );
\res_sum[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[15]\,
      I1 => R(15),
      O => \res_sum[12]_i_4_n_0\
    );
\res_sum[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[14]\,
      I1 => R(14),
      O => \res_sum[12]_i_5_n_0\
    );
\res_sum[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[13]\,
      I1 => R(13),
      O => \res_sum[12]_i_6_n_0\
    );
\res_sum[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[12]\,
      I1 => R(12),
      O => \res_sum[12]_i_7_n_0\
    );
\res_sum[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__2_n_6\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__2_n_6\,
      I4 => eqOp,
      I5 => \res_sum[13]_i_2_n_0\,
      O => \res_sum[13]_i_1_n_0\
    );
\res_sum[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(13),
      O => \res_sum[13]_i_2_n_0\
    );
\res_sum[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__2_n_5\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__2_n_5\,
      I4 => eqOp,
      I5 => \res_sum[14]_i_2_n_0\,
      O => \res_sum[14]_i_1_n_0\
    );
\res_sum[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(14),
      O => \res_sum[14]_i_2_n_0\
    );
\res_sum[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__2_n_4\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__2_n_4\,
      I4 => eqOp,
      I5 => \res_sum[15]_i_2_n_0\,
      O => \res_sum[15]_i_1_n_0\
    );
\res_sum[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(15),
      O => \res_sum[15]_i_2_n_0\
    );
\res_sum[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \res_sum[16]_i_2_n_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => Reset,
      O => \res_sum[16]_i_1_n_0\
    );
\res_sum[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D08FFFF0D080000"
    )
        port map (
      I0 => gtOp,
      I1 => \minusOp_inferred__0/i__carry__3_n_7\,
      I2 => eqOp,
      I3 => \minusOp_carry__3_n_7\,
      I4 => \res_sum[29]_i_2_n_0\,
      I5 => data1(16),
      O => \res_sum[16]_i_2_n_0\
    );
\res_sum[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__3_n_6\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__3_n_6\,
      I4 => eqOp,
      I5 => \res_sum[17]_i_2_n_0\,
      O => \res_sum[17]_i_1_n_0\
    );
\res_sum[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(17),
      O => \res_sum[17]_i_2_n_0\
    );
\res_sum[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \res_sum[18]_i_2_n_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => Reset,
      O => \res_sum[18]_i_1_n_0\
    );
\res_sum[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \minusOp_carry__3_n_5\,
      I1 => gtOp,
      I2 => \minusOp_inferred__0/i__carry__3_n_5\,
      I3 => eqOp,
      I4 => \res_sum[29]_i_2_n_0\,
      I5 => data1(18),
      O => \res_sum[18]_i_2_n_0\
    );
\res_sum[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[19]\,
      I1 => R(19),
      O => \res_sum[18]_i_4_n_0\
    );
\res_sum[18]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[18]\,
      I1 => R(18),
      O => \res_sum[18]_i_5_n_0\
    );
\res_sum[18]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[17]\,
      I1 => R(17),
      O => \res_sum[18]_i_6_n_0\
    );
\res_sum[18]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[16]\,
      I1 => R(16),
      O => \res_sum[18]_i_7_n_0\
    );
\res_sum[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__3_n_4\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__3_n_4\,
      I4 => eqOp,
      I5 => \res_sum[19]_i_2_n_0\,
      O => \res_sum[19]_i_1_n_0\
    );
\res_sum[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(19),
      O => \res_sum[19]_i_2_n_0\
    );
\res_sum[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \res_sum[1]_i_2_n_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => Reset,
      O => \res_sum[1]_i_1_n_0\
    );
\res_sum[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D08FFFF0D080000"
    )
        port map (
      I0 => gtOp,
      I1 => \minusOp_inferred__0/i__carry_n_6\,
      I2 => eqOp,
      I3 => minusOp_carry_n_6,
      I4 => \res_sum[29]_i_2_n_0\,
      I5 => data1(1),
      O => \res_sum[1]_i_2_n_0\
    );
\res_sum[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__4_n_7\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__4_n_7\,
      I4 => eqOp,
      I5 => \res_sum[20]_i_2_n_0\,
      O => \res_sum[20]_i_1_n_0\
    );
\res_sum[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(20),
      O => \res_sum[20]_i_2_n_0\
    );
\res_sum[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__4_n_6\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__4_n_6\,
      I4 => eqOp,
      I5 => \res_sum[21]_i_2_n_0\,
      O => \res_sum[21]_i_1_n_0\
    );
\res_sum[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(21),
      O => \res_sum[21]_i_2_n_0\
    );
\res_sum[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__4_n_5\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__4_n_5\,
      I4 => eqOp,
      I5 => \res_sum[22]_i_2_n_0\,
      O => \res_sum[22]_i_1_n_0\
    );
\res_sum[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(22),
      O => \res_sum[22]_i_2_n_0\
    );
\res_sum[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__4_n_4\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__4_n_4\,
      I4 => eqOp,
      I5 => \res_sum[23]_i_2_n_0\,
      O => \res_sum[23]_i_1_n_0\
    );
\res_sum[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(23),
      O => \res_sum[23]_i_2_n_0\
    );
\res_sum[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[23]\,
      I1 => R(23),
      O => \res_sum[23]_i_4_n_0\
    );
\res_sum[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[22]\,
      I1 => R(22),
      O => \res_sum[23]_i_5_n_0\
    );
\res_sum[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[21]\,
      I1 => R(21),
      O => \res_sum[23]_i_6_n_0\
    );
\res_sum[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[20]\,
      I1 => R(20),
      O => \res_sum[23]_i_7_n_0\
    );
\res_sum[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__5_n_7\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__5_n_7\,
      I4 => eqOp,
      I5 => \res_sum[24]_i_2_n_0\,
      O => \res_sum[24]_i_1_n_0\
    );
\res_sum[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(24),
      O => \res_sum[24]_i_2_n_0\
    );
\res_sum[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__5_n_6\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__5_n_6\,
      I4 => eqOp,
      I5 => \res_sum[25]_i_2_n_0\,
      O => \res_sum[25]_i_1_n_0\
    );
\res_sum[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(25),
      O => \res_sum[25]_i_2_n_0\
    );
\res_sum[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__5_n_5\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__5_n_5\,
      I4 => eqOp,
      I5 => \res_sum[26]_i_2_n_0\,
      O => \res_sum[26]_i_1_n_0\
    );
\res_sum[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(26),
      O => \res_sum[26]_i_2_n_0\
    );
\res_sum[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__5_n_4\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__5_n_4\,
      I4 => eqOp,
      I5 => \res_sum[27]_i_2_n_0\,
      O => \res_sum[27]_i_1_n_0\
    );
\res_sum[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(27),
      O => \res_sum[27]_i_2_n_0\
    );
\res_sum[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[27]\,
      I1 => R(27),
      O => \res_sum[27]_i_4_n_0\
    );
\res_sum[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[26]\,
      I1 => R(26),
      O => \res_sum[27]_i_5_n_0\
    );
\res_sum[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[25]\,
      I1 => R(25),
      O => \res_sum[27]_i_6_n_0\
    );
\res_sum[27]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[24]\,
      I1 => R(24),
      O => \res_sum[27]_i_7_n_0\
    );
\res_sum[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \res_sum[28]_i_2_n_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => Reset,
      O => \res_sum[28]_i_1_n_0\
    );
\res_sum[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \minusOp_carry__6_n_7\,
      I1 => gtOp,
      I2 => \minusOp_inferred__0/i__carry__6_n_7\,
      I3 => eqOp,
      I4 => \res_sum[29]_i_2_n_0\,
      I5 => data1(28),
      O => \res_sum[28]_i_2_n_0\
    );
\res_sum[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__6_n_6\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__6_n_6\,
      I4 => eqOp,
      I5 => \res_sum[29]_i_3_n_0\,
      O => \res_sum[29]_i_1_n_0\
    );
\res_sum[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => R(31),
      O => \res_sum[29]_i_2_n_0\
    );
\res_sum[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(29),
      O => \res_sum[29]_i_3_n_0\
    );
\res_sum[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \res_sum[2]_i_2_n_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => Reset,
      O => \res_sum[2]_i_1_n_0\
    );
\res_sum[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D08FFFF0D080000"
    )
        port map (
      I0 => gtOp,
      I1 => \minusOp_inferred__0/i__carry_n_5\,
      I2 => eqOp,
      I3 => minusOp_carry_n_5,
      I4 => \res_sum[29]_i_2_n_0\,
      I5 => data1(2),
      O => \res_sum[2]_i_2_n_0\
    );
\res_sum[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[3]\,
      I1 => R(3),
      O => \res_sum[2]_i_4_n_0\
    );
\res_sum[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[2]\,
      I1 => R(2),
      O => \res_sum[2]_i_5_n_0\
    );
\res_sum[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[1]\,
      I1 => R(1),
      O => \res_sum[2]_i_6_n_0\
    );
\res_sum[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[0]\,
      I1 => R(0),
      O => \res_sum[2]_i_7_n_0\
    );
\res_sum[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \res_sum[30]_i_2_n_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => Reset,
      O => \res_sum[30]_i_1_n_0\
    );
\res_sum[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D08FFFF0D080000"
    )
        port map (
      I0 => gtOp,
      I1 => \minusOp_inferred__0/i__carry__6_n_5\,
      I2 => eqOp,
      I3 => \minusOp_carry__6_n_5\,
      I4 => \res_sum[29]_i_2_n_0\,
      I5 => data1(30),
      O => \res_sum[30]_i_2_n_0\
    );
\res_sum[30]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[30]\,
      I1 => R(30),
      O => \res_sum[30]_i_4_n_0\
    );
\res_sum[30]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[29]\,
      I1 => R(29),
      O => \res_sum[30]_i_5_n_0\
    );
\res_sum[30]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[28]\,
      I1 => R(28),
      O => \res_sum[30]_i_6_n_0\
    );
\res_sum[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0E40000"
    )
        port map (
      I0 => gtOp,
      I1 => R(31),
      I2 => p_0_in,
      I3 => eqOp,
      I4 => \res_sum[31]_i_2_n_0\,
      O => \res_sum[31]_i_1_n_0\
    );
\res_sum[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clock_wait,
      I1 => Enable,
      I2 => \^valid_reg_0\,
      O => \res_sum[31]_i_2_n_0\
    );
\res_sum[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => minusOp_carry_n_4,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry_n_4\,
      I4 => eqOp,
      I5 => \res_sum[3]_i_2_n_0\,
      O => \res_sum[3]_i_1_n_0\
    );
\res_sum[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(3),
      O => \res_sum[3]_i_2_n_0\
    );
\res_sum[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__0_n_7\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__0_n_7\,
      I4 => eqOp,
      I5 => \res_sum[4]_i_2_n_0\,
      O => \res_sum[4]_i_1_n_0\
    );
\res_sum[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(4),
      O => \res_sum[4]_i_2_n_0\
    );
\res_sum[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__0_n_6\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__0_n_6\,
      I4 => eqOp,
      I5 => \res_sum[5]_i_2_n_0\,
      O => \res_sum[5]_i_1_n_0\
    );
\res_sum[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(5),
      O => \res_sum[5]_i_2_n_0\
    );
\res_sum[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \res_sum[6]_i_2_n_0\,
      I1 => clock_wait,
      I2 => Enable,
      I3 => \^valid_reg_0\,
      I4 => Reset,
      O => \res_sum[6]_i_1_n_0\
    );
\res_sum[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D08FFFF0D080000"
    )
        port map (
      I0 => gtOp,
      I1 => \minusOp_inferred__0/i__carry__0_n_5\,
      I2 => eqOp,
      I3 => \minusOp_carry__0_n_5\,
      I4 => \res_sum[29]_i_2_n_0\,
      I5 => data1(6),
      O => \res_sum[6]_i_2_n_0\
    );
\res_sum[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[7]\,
      I1 => R(7),
      O => \res_sum[6]_i_4_n_0\
    );
\res_sum[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[6]\,
      I1 => R(6),
      O => \res_sum[6]_i_5_n_0\
    );
\res_sum[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[5]\,
      I1 => R(5),
      O => \res_sum[6]_i_6_n_0\
    );
\res_sum[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \res_sum_reg_n_0_[4]\,
      I1 => R(4),
      O => \res_sum[6]_i_7_n_0\
    );
\res_sum[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__0_n_4\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__0_n_4\,
      I4 => eqOp,
      I5 => \res_sum[7]_i_2_n_0\,
      O => \res_sum[7]_i_1_n_0\
    );
\res_sum[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(7),
      O => \res_sum[7]_i_2_n_0\
    );
\res_sum[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__1_n_7\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__1_n_7\,
      I4 => eqOp,
      I5 => \res_sum[8]_i_2_n_0\,
      O => \res_sum[8]_i_1_n_0\
    );
\res_sum[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(8),
      O => \res_sum[8]_i_2_n_0\
    );
\res_sum[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD5D"
    )
        port map (
      I0 => \res_sum[29]_i_2_n_0\,
      I1 => \minusOp_carry__1_n_6\,
      I2 => gtOp,
      I3 => \minusOp_inferred__0/i__carry__1_n_6\,
      I4 => eqOp,
      I5 => \res_sum[9]_i_2_n_0\,
      O => \res_sum[9]_i_1_n_0\
    );
\res_sum[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBFFFBFBFFF"
    )
        port map (
      I0 => \^valid_reg_0\,
      I1 => Enable,
      I2 => clock_wait,
      I3 => p_0_in,
      I4 => R(31),
      I5 => data1(9),
      O => \res_sum[9]_i_2_n_0\
    );
\res_sum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[0]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[0]\,
      R => '0'
    );
\res_sum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[10]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[10]\,
      R => '0'
    );
\res_sum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[11]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[11]\,
      R => '0'
    );
\res_sum_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_sum_reg[6]_i_3_n_0\,
      CO(3) => \res_sum_reg[11]_i_3_n_0\,
      CO(2) => \res_sum_reg[11]_i_3_n_1\,
      CO(1) => \res_sum_reg[11]_i_3_n_2\,
      CO(0) => \res_sum_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[11]\,
      DI(2) => \res_sum_reg_n_0_[10]\,
      DI(1) => \res_sum_reg_n_0_[9]\,
      DI(0) => \res_sum_reg_n_0_[8]\,
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \res_sum[11]_i_4_n_0\,
      S(2) => \res_sum[11]_i_5_n_0\,
      S(1) => \res_sum[11]_i_6_n_0\,
      S(0) => \res_sum[11]_i_7_n_0\
    );
\res_sum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[12]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[12]\,
      R => '0'
    );
\res_sum_reg[12]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_sum_reg[11]_i_3_n_0\,
      CO(3) => \res_sum_reg[12]_i_3_n_0\,
      CO(2) => \res_sum_reg[12]_i_3_n_1\,
      CO(1) => \res_sum_reg[12]_i_3_n_2\,
      CO(0) => \res_sum_reg[12]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[15]\,
      DI(2) => \res_sum_reg_n_0_[14]\,
      DI(1) => \res_sum_reg_n_0_[13]\,
      DI(0) => \res_sum_reg_n_0_[12]\,
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \res_sum[12]_i_4_n_0\,
      S(2) => \res_sum[12]_i_5_n_0\,
      S(1) => \res_sum[12]_i_6_n_0\,
      S(0) => \res_sum[12]_i_7_n_0\
    );
\res_sum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[13]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[13]\,
      R => '0'
    );
\res_sum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[14]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[14]\,
      R => '0'
    );
\res_sum_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[15]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[15]\,
      R => '0'
    );
\res_sum_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[16]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[16]\,
      R => '0'
    );
\res_sum_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[17]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[17]\,
      R => '0'
    );
\res_sum_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[18]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[18]\,
      R => '0'
    );
\res_sum_reg[18]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_sum_reg[12]_i_3_n_0\,
      CO(3) => \res_sum_reg[18]_i_3_n_0\,
      CO(2) => \res_sum_reg[18]_i_3_n_1\,
      CO(1) => \res_sum_reg[18]_i_3_n_2\,
      CO(0) => \res_sum_reg[18]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[19]\,
      DI(2) => \res_sum_reg_n_0_[18]\,
      DI(1) => \res_sum_reg_n_0_[17]\,
      DI(0) => \res_sum_reg_n_0_[16]\,
      O(3 downto 0) => data1(19 downto 16),
      S(3) => \res_sum[18]_i_4_n_0\,
      S(2) => \res_sum[18]_i_5_n_0\,
      S(1) => \res_sum[18]_i_6_n_0\,
      S(0) => \res_sum[18]_i_7_n_0\
    );
\res_sum_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[19]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[19]\,
      R => '0'
    );
\res_sum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[1]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[1]\,
      R => '0'
    );
\res_sum_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[20]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[20]\,
      R => '0'
    );
\res_sum_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[21]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[21]\,
      R => '0'
    );
\res_sum_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[22]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[22]\,
      R => '0'
    );
\res_sum_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[23]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[23]\,
      R => '0'
    );
\res_sum_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_sum_reg[18]_i_3_n_0\,
      CO(3) => \res_sum_reg[23]_i_3_n_0\,
      CO(2) => \res_sum_reg[23]_i_3_n_1\,
      CO(1) => \res_sum_reg[23]_i_3_n_2\,
      CO(0) => \res_sum_reg[23]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[23]\,
      DI(2) => \res_sum_reg_n_0_[22]\,
      DI(1) => \res_sum_reg_n_0_[21]\,
      DI(0) => \res_sum_reg_n_0_[20]\,
      O(3 downto 0) => data1(23 downto 20),
      S(3) => \res_sum[23]_i_4_n_0\,
      S(2) => \res_sum[23]_i_5_n_0\,
      S(1) => \res_sum[23]_i_6_n_0\,
      S(0) => \res_sum[23]_i_7_n_0\
    );
\res_sum_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[24]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[24]\,
      R => '0'
    );
\res_sum_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[25]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[25]\,
      R => '0'
    );
\res_sum_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[26]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[26]\,
      R => '0'
    );
\res_sum_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[27]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[27]\,
      R => '0'
    );
\res_sum_reg[27]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_sum_reg[23]_i_3_n_0\,
      CO(3) => \res_sum_reg[27]_i_3_n_0\,
      CO(2) => \res_sum_reg[27]_i_3_n_1\,
      CO(1) => \res_sum_reg[27]_i_3_n_2\,
      CO(0) => \res_sum_reg[27]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[27]\,
      DI(2) => \res_sum_reg_n_0_[26]\,
      DI(1) => \res_sum_reg_n_0_[25]\,
      DI(0) => \res_sum_reg_n_0_[24]\,
      O(3 downto 0) => data1(27 downto 24),
      S(3) => \res_sum[27]_i_4_n_0\,
      S(2) => \res_sum[27]_i_5_n_0\,
      S(1) => \res_sum[27]_i_6_n_0\,
      S(0) => \res_sum[27]_i_7_n_0\
    );
\res_sum_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[28]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[28]\,
      R => '0'
    );
\res_sum_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[29]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[29]\,
      R => '0'
    );
\res_sum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[2]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[2]\,
      R => '0'
    );
\res_sum_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \res_sum_reg[2]_i_3_n_0\,
      CO(2) => \res_sum_reg[2]_i_3_n_1\,
      CO(1) => \res_sum_reg[2]_i_3_n_2\,
      CO(0) => \res_sum_reg[2]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[3]\,
      DI(2) => \res_sum_reg_n_0_[2]\,
      DI(1) => \res_sum_reg_n_0_[1]\,
      DI(0) => \res_sum_reg_n_0_[0]\,
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \res_sum[2]_i_4_n_0\,
      S(2) => \res_sum[2]_i_5_n_0\,
      S(1) => \res_sum[2]_i_6_n_0\,
      S(0) => \res_sum[2]_i_7_n_0\
    );
\res_sum_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[30]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[30]\,
      R => '0'
    );
\res_sum_reg[30]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_sum_reg[27]_i_3_n_0\,
      CO(3 downto 2) => \NLW_res_sum_reg[30]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \res_sum_reg[30]_i_3_n_2\,
      CO(0) => \res_sum_reg[30]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \res_sum_reg_n_0_[29]\,
      DI(0) => \res_sum_reg_n_0_[28]\,
      O(3) => \NLW_res_sum_reg[30]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(30 downto 28),
      S(3) => '0',
      S(2) => \res_sum[30]_i_4_n_0\,
      S(1) => \res_sum[30]_i_5_n_0\,
      S(0) => \res_sum[30]_i_6_n_0\
    );
\res_sum_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[31]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
\res_sum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[3]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[3]\,
      R => '0'
    );
\res_sum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[4]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[4]\,
      R => '0'
    );
\res_sum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[5]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[5]\,
      R => '0'
    );
\res_sum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[6]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[6]\,
      R => '0'
    );
\res_sum_reg[6]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \res_sum_reg[2]_i_3_n_0\,
      CO(3) => \res_sum_reg[6]_i_3_n_0\,
      CO(2) => \res_sum_reg[6]_i_3_n_1\,
      CO(1) => \res_sum_reg[6]_i_3_n_2\,
      CO(0) => \res_sum_reg[6]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \res_sum_reg_n_0_[7]\,
      DI(2) => \res_sum_reg_n_0_[6]\,
      DI(1) => \res_sum_reg_n_0_[5]\,
      DI(0) => \res_sum_reg_n_0_[4]\,
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \res_sum[6]_i_4_n_0\,
      S(2) => \res_sum[6]_i_5_n_0\,
      S(1) => \res_sum[6]_i_6_n_0\,
      S(0) => \res_sum[6]_i_7_n_0\
    );
\res_sum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[7]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[7]\,
      R => '0'
    );
\res_sum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[8]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[8]\,
      R => '0'
    );
\res_sum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => Clock,
      CE => res_sum(0),
      D => \res_sum[9]_i_1_n_0\,
      Q => \res_sum_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Perceptron_BRAM_0_0 is
  port (
    Enable : in STD_LOGIC;
    Input_Value : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Clock : in STD_LOGIC;
    Reset : in STD_LOGIC;
    w_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Valid : out STD_LOGIC;
    Output_Value : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Perceptron_BRAM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Perceptron_BRAM_0_0 : entity is "design_1_Perceptron_BRAM_0_0,Perceptron_BRAM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Perceptron_BRAM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Perceptron_BRAM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Perceptron_BRAM_0_0 : entity is "Perceptron_BRAM,Vivado 2025.2";
end design_1_Perceptron_BRAM_0_0;

architecture STRUCTURE of design_1_Perceptron_BRAM_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^output_value\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^addr\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of Clock : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME Clock, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute X_INTERFACE_MODE of Reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  Output_Value(31) <= \<const0>\;
  Output_Value(30 downto 0) <= \^output_value\(30 downto 0);
  addr(7) <= \<const0>\;
  addr(6) <= \<const0>\;
  addr(5) <= \<const0>\;
  addr(4) <= \<const0>\;
  addr(3) <= \<const0>\;
  addr(2 downto 0) <= \^addr\(2 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_Perceptron_BRAM_0_0_Perceptron_BRAM
     port map (
      Clock => Clock,
      Enable => Enable,
      Input_Value(31 downto 0) => Input_Value(31 downto 0),
      Output_Value(30 downto 0) => \^output_value\(30 downto 0),
      Reset => Reset,
      Valid_reg_0 => Valid,
      \index_reg[0]_0\ => \^addr\(0),
      \index_reg[1]_0\ => \^addr\(1),
      \index_reg[2]_0\ => \^addr\(2),
      w_in(31 downto 0) => w_in(31 downto 0)
    );
end STRUCTURE;
