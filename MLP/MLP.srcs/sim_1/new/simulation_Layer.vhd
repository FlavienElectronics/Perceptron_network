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
    
    type image_array is array (0 to 783) of std_logic_vector(31 downto 0);
    
constant DIGIT_8 : image_array := (
    96 => x"20000000",
    97 => x"20000000",
    98 => x"20000000",
    99 => x"20000000",
    100 => x"20000000",
    122 => x"20000000",
    123 => x"20000000",
    124 => x"20000000",
    128 => x"20000000",
    129 => x"20000000",
    150 => x"20000000",
    157 => x"20000000",
    178 => x"20000000",
    179 => x"20000000",
    184 => x"20000000",
    185 => x"20000000",
    207 => x"20000000",
    208 => x"20000000",
    211 => x"20000000",
    212 => x"20000000",
    236 => x"20000000",
    238 => x"20000000",
    239 => x"20000000",
    264 => x"20000000",
    265 => x"20000000",
    266 => x"20000000",
    291 => x"20000000",
    292 => x"20000000",
    293 => x"20000000",
    294 => x"20000000",
    318 => x"20000000",
    319 => x"20000000",
    322 => x"20000000",
    323 => x"20000000",
    346 => x"20000000",
    351 => x"20000000",
    352 => x"20000000",
    374 => x"20000000",
    380 => x"20000000",
    381 => x"20000000",
    382 => x"20000000",
    401 => x"20000000",
    402 => x"20000000",
    410 => x"20000000",
    429 => x"20000000",
    438 => x"20000000",
    439 => x"20000000",
    457 => x"20000000",
    467 => x"20000000",
    485 => x"20000000",
    486 => x"20000000",
    495 => x"20000000",
    514 => x"20000000",
    523 => x"20000000",
    542 => x"20000000",
    543 => x"20000000",
    544 => x"20000000",
    551 => x"20000000",
    572 => x"20000000",
    573 => x"20000000",
    574 => x"20000000",
    577 => x"20000000",
    578 => x"20000000",
    579 => x"20000000",
    603 => x"20000000",
    604 => x"20000000",
    605 => x"20000000",
    others => x"00000000"
);

constant MOYENNE_CLASSE : image_array := (
    124 => x"20000000",
    125 => x"20000000",
    126 => x"20000000",
    127 => x"20000000",
    151 => x"20000000",
    152 => x"20000000",
    155 => x"20000000",
    156 => x"20000000",
    178 => x"20000000",
    179 => x"20000000",
    184 => x"20000000",
    185 => x"20000000",
    205 => x"20000000",
    206 => x"20000000",
    213 => x"20000000",
    214 => x"20000000",
    232 => x"20000000",
    233 => x"20000000",
    242 => x"20000000",
    243 => x"20000000",
    260 => x"20000000",
    271 => x"20000000",
    287 => x"20000000",
    288 => x"20000000",
    299 => x"20000000",
    315 => x"20000000",
    327 => x"20000000",
    328 => x"20000000",
    343 => x"20000000",
    356 => x"20000000",
    371 => x"20000000",
    384 => x"20000000",
    399 => x"20000000",
    412 => x"20000000",
    427 => x"20000000",
    439 => x"20000000",
    440 => x"20000000",
    455 => x"20000000",
    467 => x"20000000",
    483 => x"20000000",
    495 => x"20000000",
    511 => x"20000000",
    523 => x"20000000",
    540 => x"20000000",
    550 => x"20000000",
    551 => x"20000000",
    568 => x"20000000",
    569 => x"20000000",
    577 => x"20000000",
    578 => x"20000000",
    597 => x"20000000",
    598 => x"20000000",
    605 => x"20000000",
    626 => x"20000000",
    627 => x"20000000",
    628 => x"20000000",
    629 => x"20000000",
    630 => x"20000000",
    631 => x"20000000",
    632 => x"20000000",
    633 => x"20000000",
    others => x"00000000"
);
    
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
        INPUT <= x"00000000";
        ENABLE <= '0';
        RESET <= '0';
        wait for 20 ns;
        RESET <= '1';
        ENABLE <= '1';
        
        for i in 0 to 783 loop
            INPUT <= DIGIT_8(i);
            wait for 40 ns;
        end loop;        
        wait;
    end process;
end Bench;
