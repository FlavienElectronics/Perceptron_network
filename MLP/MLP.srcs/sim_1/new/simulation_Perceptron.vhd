----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/16/2025 05:10:05 PM
-- Design Name: 
-- Module Name: simulation_Perceptron - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity simulation_Perceptron is
end simulation_Perceptron;

architecture Bench of simulation_Perceptron is
    signal ENABLE       : STD_LOGIC;
    signal INPUT        : STD_LOGIC_VECTOR (31 downto 0);
    signal CLOCK        : STD_LOGIC;
    signal RESET        : STD_LOGIC;
    signal VALID        : STD_LOGIC;
    signal OUTPUT       : STD_LOGIC_VECTOR (31 downto 0);
    
    component Perceptron is
    Port ( Enable : in STD_LOGIC;
           Input_Value : in STD_LOGIC_VECTOR (31 downto 0);
           Clock : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Valid : out STD_LOGIC;
           Output_Value : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
begin
    percep: Perceptron port map(
       Enable          =>      ENABLE,
       Input_Value     =>      INPUT,
       Clock           =>      CLOCK, 
       Reset           =>      RESET,
       Valid           =>      VALID,
       Output_Value    =>      OUTPUT
    );
    CLOCK <= not CLOCK after 5 ns;
    stimulus: process
    begin
        RESET <= '0';
        wait for 20 ns;
        RESET <= '1';
        ENABLE <= '1';
        wait for 20 ns;
        INPUT <= x"0001";
    end process;
end Bench;
