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

entity BancMemoire is
    Port ( addr : in STD_LOGIC_VECTOR (7 downto 0);
           Data_in : in STD_LOGIC_VECTOR (7 downto 0);
           RW : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end BancMemoire;

architecture Behavioral of BancMemoire is
    type mem_type is array(0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
    signal data_mem : mem_type := (others => X"00");
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '0' then                   -- RESET
                data_mem <= (others => X"00");
            elsif RW = '0' then                  -- ECRITURE
                data_mem(TO_INTEGER (unsigned (addr))) <= data_in;
            else
                -- LECTURE
                data_out <= data_mem(TO_INTEGER (unsigned (addr)));
            end if;
        end if;
    end process;
    -- LECTURE
    --OUTPUT <= registre(TO_INTEGER (unsigned (addr))) when RW = '1';
end Behavioral;
