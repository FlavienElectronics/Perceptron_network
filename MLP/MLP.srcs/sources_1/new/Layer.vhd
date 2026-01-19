----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/19/2026 11:51:51 AM
-- Design Name: 
-- Module Name: Layer - Behavioral
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

entity Layer is
    generic(weight_array_size : integer := 10);
    Port (
            clk   : in  std_logic;
            Enable : in STD_LOGIC;
            Reset : in STD_LOGIC;
            Valid : out STD_LOGIC;
            Input : in std_logic_vector (31 downto 0);
            Output : out std_logic_vector (31 downto 0)
    );
end Layer;

architecture Behavioral of Layer is

signal clk_i : std_logic;
signal addr_i : std_logic_vector (9 downto 0);
signal dout_i : std_logic_vector(32*10-1 downto 0);
 

component test_weights port(
        clk   : in  std_logic;
        addr  : in  std_logic_vector(9 downto 0); -- Same addr for all neurons within a layer
        dout  : out std_logic_vector(32*10-1 downto 0) -- DATA_WIDTH * N_NEURONS -> 320 bits
        );
end component;

component Perceptron_BRAM port(
           Enable : in STD_LOGIC;
           Input_Value : in STD_LOGIC_VECTOR (31 downto 0);
           Clock : in STD_LOGIC;
           Reset : in STD_LOGIC;
           w_in : in STD_LOGIC_VECTOR (31 downto 0);
           Valid : out STD_LOGIC;
           Output_Value : out STD_LOGIC_VECTOR (31 downto 0);
           addr : out STD_LOGIC_VECTOR (9 downto 0));
end component;

begin

WEIGHT : test_weights port map(clk,
                                addr_i,
                                dout_i
                                );

gen_dest : for i in 0 to weight_array_size generate
    percept : entity work.Perceptron_BRAM port map 
    (
      clk => Clock;
      Reset => Reset;
      input_val => Input;
      w_in => dout(32*i-1 downto 32*(i-1))
     
    );
 end generate;

end Behavioral;
