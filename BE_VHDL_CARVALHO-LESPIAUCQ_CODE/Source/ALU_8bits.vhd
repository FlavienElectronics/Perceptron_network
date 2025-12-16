----------------------------------------------------------------------------------
-- Company: INSA 
-- Engineer: CARVALHO LESPIAUCQ
-- 
-- Create Date: 10/09/2024 09:50:34 AM
-- Design Name: 
-- Module Name: ALU_8bits - Behavioral
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
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity ALU_8bits is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Ctrl : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (7 downto 0);
           Carry : out STD_LOGIC;
           Overflow : out STD_LOGIC;
           Negatif : out STD_LOGIC);
end ALU_8bits;

architecture Behavioral of ALU_8bits is
signal result,A_e,B_e: STD_LOGIC_VECTOR (15 downto 0);
begin
    A_e <= x"00" & A;
    B_e <= x"00" & B;
    with Ctrl select
        result <= A_e + B_e when "000",
                  A_e - B_e when "001",
                  A * B when "010",
                  A_e and B_e when "011",
                  A_e or B_e when "100",
                  A_e xor B_e when "101",
                  not A_e when "110",
                  not B_e when "111",
                  X"0000" when others;
    S <= result(7 downto 0);
    Carry <= '1' when result(15 downto 8) /= x"00" and Ctrl = "000" else '0';
    Overflow <= '1' when result(15 downto 8) /= x"00" and Ctrl = "010" else '0';
    Negatif <= '1' when A_e < B_e and Ctrl = "001" else '0';
end Behavioral;