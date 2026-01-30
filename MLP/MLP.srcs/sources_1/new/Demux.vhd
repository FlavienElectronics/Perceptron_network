----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2026 11:42:01 AM
-- Design Name: 
-- Module Name: Demux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Demux is
    Port ( Input : in STD_LOGIC_VECTOR (319 downto 0);
           Out1  : out STD_LOGIC_VECTOR (31 downto 0);
           Out2  : out STD_LOGIC_VECTOR (31 downto 0);
           Out3  : out STD_LOGIC_VECTOR (31 downto 0);
           Out4  : out STD_LOGIC_VECTOR (31 downto 0);
           Out5  : out STD_LOGIC_VECTOR (31 downto 0);
           Out6  : out STD_LOGIC_VECTOR (31 downto 0);
           Out7  : out STD_LOGIC_VECTOR (31 downto 0);
           Out8  : out STD_LOGIC_VECTOR (31 downto 0);
           Out9  : out STD_LOGIC_VECTOR (31 downto 0);
           Out10  : out STD_LOGIC_VECTOR (31 downto 0)
    );
end Demux;

architecture Behavioral of Demux is

begin

    Out1 <= Input(319 downto 288);

end Behavioral;
