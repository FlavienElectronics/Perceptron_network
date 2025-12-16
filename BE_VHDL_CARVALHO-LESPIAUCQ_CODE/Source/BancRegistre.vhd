----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2024 03:48:30 PM
-- Design Name: 
-- Module Name: BancRegistre - Behavioral
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

entity BancRegistre is
    Port ( addr_A : in STD_LOGIC_VECTOR (3 downto 0);
           addr_B : in STD_LOGIC_VECTOR (3 downto 0);
           addr_W : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0);
           DATA : in STD_LOGIC_VECTOR (7 downto 0));
end BancRegistre;

architecture Behavioral of BancRegistre is
    type registre_type is array(0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    signal registre : registre_type := (others => (others => '0'));
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '0' then                   -- RESET
                registre <= (others => (others => '0'));
            elsif W = '1' then                  -- ECRITURE
                registre(TO_INTEGER (unsigned (addr_W))) <= DATA;
            end if;
        end if;
    end process;
    -- LECTURE
    QA <=   registre(TO_INTEGER (unsigned (addr_A))) when addr_W /= addr_A else
            DATA;
    QB <=   registre(TO_INTEGER (unsigned (addr_B))) when addr_W /= addr_B else
            DATA;
end Behavioral;
