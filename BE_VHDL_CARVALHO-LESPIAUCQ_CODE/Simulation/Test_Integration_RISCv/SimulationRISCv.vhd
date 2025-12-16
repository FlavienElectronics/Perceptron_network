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


entity SimulationRISCv is
--  Port ( );
end SimulationRISCv;

architecture Bench of SimulationRISCv is
    signal CLK : std_logic := '0';
    signal RST : std_logic := '1';

    component  RISC_V is
        Port ( CLK, RST : in STD_LOGIC);
    end component;

begin

    uut: RISC_V port map(
        RST => RST,
        CLK => CLK
    );

    CLK <= not CLK after 5 ns;
    
    stimulus : process
    begin
        
        RST <= '0';
        wait for 50 ns;
        RST <= '1';
        
        wait;
    end process;

end Bench;
