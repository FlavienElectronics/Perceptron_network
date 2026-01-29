-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Jan 29 13:31:33 2026
-- Host        : fixe_flavien running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/flavi/Desktop/Perceptron_network/MLP/MLP.gen/sources_1/bd/design_1/ip/design_1_BRAM_user_0_0/design_1_BRAM_user_0_0_sim_netlist.vhdl
-- Design      : design_1_BRAM_user_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BRAM_user_0_0_BRAM_user is
  port (
    data_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_BRAM_user_0_0_BRAM_user : entity is "BRAM_user";
end design_1_BRAM_user_0_0_BRAM_user;

architecture STRUCTURE of design_1_BRAM_user_0_0_BRAM_user is
  signal \data_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[31]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[20]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[21]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[24]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[26]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[27]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[28]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[30]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[31]_i_1\ : label is "soft_lutpair1";
begin
\data_out[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addr(0),
      I1 => \data_out[31]_i_2_n_0\,
      I2 => addr(2),
      I3 => addr(1),
      O => \data_out[20]_i_1_n_0\
    );
\data_out[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addr(1),
      I1 => \data_out[31]_i_2_n_0\,
      I2 => addr(2),
      I3 => addr(0),
      O => \data_out[21]_i_1_n_0\
    );
\data_out[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4080"
    )
        port map (
      I0 => addr(0),
      I1 => addr(2),
      I2 => \data_out[31]_i_2_n_0\,
      I3 => addr(1),
      O => \data_out[24]_i_1_n_0\
    );
\data_out[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => addr(0),
      I1 => \data_out[31]_i_2_n_0\,
      I2 => addr(2),
      I3 => addr(1),
      O => \data_out[26]_i_1_n_0\
    );
\data_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(2),
      I1 => \data_out[31]_i_2_n_0\,
      I2 => addr(0),
      O => \data_out[27]_i_1_n_0\
    );
\data_out[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7050"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      I2 => \data_out[31]_i_2_n_0\,
      I3 => addr(2),
      O => \data_out[28]_i_1_n_0\
    );
\data_out[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => addr(7),
      I1 => addr(6),
      I2 => addr(5),
      I3 => addr(4),
      I4 => addr(3),
      I5 => addr(0),
      O => \data_out[29]_i_1_n_0\
    );
\data_out[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => \data_out[31]_i_2_n_0\,
      I1 => addr(2),
      I2 => addr(1),
      I3 => addr(0),
      O => \data_out[30]_i_1_n_0\
    );
\data_out[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3040"
    )
        port map (
      I0 => addr(0),
      I1 => addr(1),
      I2 => \data_out[31]_i_2_n_0\,
      I3 => addr(2),
      O => \data_out[31]_i_1_n_0\
    );
\data_out[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => addr(3),
      I1 => addr(4),
      I2 => addr(5),
      I3 => addr(6),
      I4 => addr(7),
      O => \data_out[31]_i_2_n_0\
    );
\data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[20]_i_1_n_0\,
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[21]_i_1_n_0\,
      Q => data_out(1),
      R => '0'
    );
\data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[24]_i_1_n_0\,
      Q => data_out(2),
      R => '0'
    );
\data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[26]_i_1_n_0\,
      Q => data_out(3),
      R => '0'
    );
\data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[27]_i_1_n_0\,
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[28]_i_1_n_0\,
      Q => data_out(5),
      R => '0'
    );
\data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[29]_i_1_n_0\,
      Q => data_out(6),
      R => '0'
    );
\data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[30]_i_1_n_0\,
      Q => data_out(7),
      R => '0'
    );
\data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \data_out[31]_i_1_n_0\,
      Q => data_out(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_BRAM_user_0_0 is
  port (
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_BRAM_user_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_BRAM_user_0_0 : entity is "design_1_BRAM_user_0_0,BRAM_user,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_BRAM_user_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_BRAM_user_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_BRAM_user_0_0 : entity is "BRAM_user,Vivado 2025.2";
end design_1_BRAM_user_0_0;

architecture STRUCTURE of design_1_BRAM_user_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 31 downto 18 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of CLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  data_out(31 downto 28) <= \^data_out\(31 downto 28);
  data_out(27) <= \^data_out\(25);
  data_out(26 downto 25) <= \^data_out\(26 downto 25);
  data_out(24) <= \^data_out\(23);
  data_out(23) <= \^data_out\(23);
  data_out(22) <= \^data_out\(23);
  data_out(21 downto 20) <= \^data_out\(19 downto 18);
  data_out(19 downto 18) <= \^data_out\(19 downto 18);
  data_out(17) <= \^data_out\(23);
  data_out(16) <= \^data_out\(23);
  data_out(15) <= \^data_out\(19);
  data_out(14) <= \<const0>\;
  data_out(13) <= \<const0>\;
  data_out(12) <= \<const0>\;
  data_out(11) <= \^data_out\(18);
  data_out(10 downto 9) <= \^data_out\(19 downto 18);
  data_out(8) <= \^data_out\(19);
  data_out(7) <= \<const0>\;
  data_out(6) <= \<const0>\;
  data_out(5) <= \^data_out\(18);
  data_out(4) <= \^data_out\(23);
  data_out(3) <= \^data_out\(23);
  data_out(2) <= \^data_out\(23);
  data_out(1 downto 0) <= \^data_out\(19 downto 18);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_BRAM_user_0_0_BRAM_user
     port map (
      CLK => CLK,
      addr(7 downto 0) => addr(7 downto 0),
      data_out(8 downto 5) => \^data_out\(31 downto 28),
      data_out(4) => \^data_out\(25),
      data_out(3) => \^data_out\(26),
      data_out(2) => \^data_out\(23),
      data_out(1 downto 0) => \^data_out\(19 downto 18)
    );
end STRUCTURE;
