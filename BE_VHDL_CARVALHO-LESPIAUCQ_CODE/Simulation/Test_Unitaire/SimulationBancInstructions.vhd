library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SimulationBancInstructions is
end SimulationBancInstructions;

architecture Bench of SimulationBancInstructions is
    signal CLK     : std_logic := '0';
    signal addr    : std_logic_vector(7 downto 0);
    signal OUTPUT  : std_logic_vector(31 downto 0);

    -- Instantiate the register bank
    component BancInstructions is
  
    Port ( addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (31 downto 0));
    end component;

begin
    uut: BancInstructions port map (
        CLK     => CLK,
        addr    => addr,
        data_out   => OUTPUT
    );

    -- Clock process
    clk <= not clk after 5 ns;

    -- Stimulus process
    stimulus : process
    begin
        
        for i in 0 to 255 loop
            addr <= std_logic_vector (TO_UNSIGNED (i, addr'length));
            wait for 10 ns;
        end loop;
        
        wait;
    end process;

end Bench;
