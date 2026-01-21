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

entity simulation_Layer is
end simulation_Layer;

architecture Bench of simulation_Layer is
    signal ENABLE       : STD_LOGIC;
    signal INPUT        : STD_LOGIC_VECTOR (31 downto 0);
    signal CLOCK        : STD_LOGIC := '0';
    signal RESET        : STD_LOGIC := '1';
    signal VALID        : STD_LOGIC;
    signal OUTPUT       : STD_LOGIC_VECTOR (31 downto 0);
    
    component Layer is
        generic(weight_array_size : integer := 10);
        Port(
                clock_L :  in  std_logic;
                Enable_L : in STD_LOGIC;
                Reset_L :  in STD_LOGIC;
                Input_L :  in std_logic_vector (31 downto 0);
                Valid_L :  out STD_LOGIC;
                Output_L : out std_logic_vector (31 downto 0)
             );
    end component;

begin

    laye: Layer port map(
       Enable_L    =>      ENABLE,
       Input_L     =>      INPUT,
       clock_L     =>      CLOCK, 
       Reset_L     =>      RESET,
       Valid_L     =>      VALID,
       Output_L    =>      OUTPUT
    );
    
    CLOCK <= not CLOCK after 5 ns;
    stimulus: process
    begin
        RESET <= '0';
        wait for 20 ns;
        RESET <= '1';
        INPUT <= x"20000000"; -- = 1.0
        wait for 20 ns;
        ENABLE <= '1';
        
        wait;
    end process;
end Bench;
