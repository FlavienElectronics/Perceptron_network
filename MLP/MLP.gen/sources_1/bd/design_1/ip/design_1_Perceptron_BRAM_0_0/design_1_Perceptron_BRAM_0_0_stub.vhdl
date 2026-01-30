-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Jan 29 14:31:31 2026
-- Host        : fixe_flavien running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/flavi/Desktop/Perceptron_network/MLP/MLP.gen/sources_1/bd/design_1/ip/design_1_Perceptron_BRAM_0_0/design_1_Perceptron_BRAM_0_0_stub.vhdl
-- Design      : design_1_Perceptron_BRAM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Perceptron_BRAM_0_0 is
  Port ( 
    Enable : in STD_LOGIC;
    Input_Value : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Clock : in STD_LOGIC;
    Reset : in STD_LOGIC;
    w_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Valid : out STD_LOGIC;
    Output_Value : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Perceptron_BRAM_0_0 : entity is "design_1_Perceptron_BRAM_0_0,Perceptron_BRAM,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_Perceptron_BRAM_0_0 : entity is "design_1_Perceptron_BRAM_0_0,Perceptron_BRAM,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Perceptron_BRAM,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,weight_array_size=10,size_integral_32bit=2}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Perceptron_BRAM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Perceptron_BRAM_0_0 : entity is "module_ref";
end design_1_Perceptron_BRAM_0_0;

architecture stub of design_1_Perceptron_BRAM_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "Enable,Input_Value[31:0],Clock,Reset,w_in[31:0],Valid,Output_Value[31:0],addr[9:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clock : signal is "xilinx.com:signal:clock:1.0 Clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of Clock : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clock : signal is "XIL_INTERFACENAME Clock, ASSOCIATED_RESET Reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Reset : signal is "xilinx.com:signal:reset:1.0 Reset RST";
  attribute X_INTERFACE_MODE of Reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of Reset : signal is "XIL_INTERFACENAME Reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "Perceptron_BRAM,Vivado 2025.2";
begin
end;
