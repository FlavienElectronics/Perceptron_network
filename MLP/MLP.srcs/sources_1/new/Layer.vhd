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
            clock_L :  in  std_logic;
            Enable_L : in STD_LOGIC;
            Reset_L :  in STD_LOGIC;
            Input_L :  in std_logic_vector (31 downto 0);
            Valid_L :  out STD_LOGIC;
            Output_L : out std_logic_vector (31 downto 0)
    );
end Layer;

architecture Behavioral of Layer is

signal clk_i : std_logic;
signal addr_i : std_logic_vector (9 downto 0);
signal dout_i : std_logic_vector(32*weight_array_size-1 downto 0);
 

component WEIGHTS port(
        clk_W   : in  std_logic;
        addr_W  : in  std_logic_vector(9 downto 0); -- Same addr for all neurons within a layer
        dout_W  : out std_logic_vector(32*weight_array_size-1 downto 0) -- DATA_WIDTH * N_NEURONS -> 320 bits
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

WEIGHT : WEIGHTS port map( clk_w => clock_L,
                           addr_w => addr_i,
                           dout_W => dout_i);

gen_dest : for i in 1 to weight_array_size+1 generate
    percept : entity work.Perceptron_BRAM port map(
      Clock         => clock_L,
      Reset         => Reset_L,
      Input_Value   => Input_L,
      w_in          => dout_i(32*i-1 downto 32*(i-1)),
      addr          => addr_i,
      Valid         => open,
      Enable        => Enable_L,
      Ouput_Value   => open);
end generate gen_dest;

end Behavioral;
