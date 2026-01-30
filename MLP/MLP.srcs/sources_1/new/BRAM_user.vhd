----------------------------------------------------------------------------------
-- Company: INSA
-- Engineer: CARVALHO - LESPIAUCQ
-- 
-- Create Date: 10/16/2024 05:53:22 PM
-- Design Name: 
-- Module Name: BancMemoire - Behavioral
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
--use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BRAM_user is
    generic (w0 :  STD_LOGIC_VECTOR (31 downto 0) := x"30000000";
             w1 :  STD_LOGIC_VECTOR (31 downto 0) := x"10000000";
             w2 :  STD_LOGIC_VECTOR (31 downto 0) := x"A0000000";
             w3 :  STD_LOGIC_VECTOR (31 downto 0) := x"40000000";
             w4 :  STD_LOGIC_VECTOR (31 downto 0) := x"BE000000";
             w5 :  STD_LOGIC_VECTOR (31 downto 0) := x"D1EB851E";
             w6 :  STD_LOGIC_VECTOR (31 downto 0) := x"3BD70A3D");
    Port ( addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (31 downto 0));
end BRAM_user;

architecture Behavioral of BRAM_user is
    type mem_type is array(0 to 255) of STD_LOGIC_VECTOR(31 downto 0);
    signal data_mem : mem_type := (
    0 => w0,
    1 => w1,
    2 => w2,
    3 => w3,
    4 => w4,
    5 => w5,
    6 => w6,
    others => X"00000000"
    );
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            data_out <= data_mem(TO_INTEGER (unsigned (addr)));
        end if;
    end process;
end Behavioral;