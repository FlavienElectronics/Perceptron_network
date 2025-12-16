library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SimulationBancMemoire is
end SimulationBancMemoire;

architecture Bench of SimulationBancMemoire is
    signal CLK     : std_logic := '0';
    signal RST     : std_logic := '0';
    signal RW      : std_logic := '0';
    signal addr    : std_logic_vector(7 downto 0);
    signal INPUT   : std_logic_vector(7 downto 0);
    signal OUTPUT  : std_logic_vector(7 downto 0);

    -- Instantiate the register bank
    component BancMemoire is
  
    Port ( addr : in STD_LOGIC_VECTOR (7 downto 0);
           Data_in : in STD_LOGIC_VECTOR (7 downto 0);
           RW : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

begin
    uut: BancMemoire port map (
        CLK     => CLK,
        RST     => RST,
        RW      => RW,
        addr    => addr,
        Data_in   => INPUT,
        data_out  => OUTPUT
    );

    -- Clock process
    clk <= not clk after 5 ns;

    -- Stimulus process
    stimulus : process
    begin
        RST <= '0'; addr <= x"00";
        wait for 20 ns;
        RST <= '1';

        -- Ecriture dans le registre 0 
        RW <= '0'; INPUT <= x"FC";
        wait for 20 ns;

        -- Ecriture dans le registre 1
        addr <= x"01"; INPUT <= x"DF";
        wait for 20 ns;
        
        -- Ecriture dans le registre 0F
        addr <= x"0F"; INPUT <= x"8A";
        wait for 20 ns;
        
        -- Ecriture dans le registre F0
        addr <= x"F0"; INPUT <= x"88";
        wait for 20 ns;
        
        -- Ecriture dans le registre FF
        addr <= x"FF"; INPUT <= x"9C";
        wait for 20 ns;
        
        RW <= '1';
        wait for 20 ns;
        
        for i in 0 to 255 loop
            addr <= std_logic_vector (TO_UNSIGNED (i, addr'length));
            wait for 10 ns;
        end loop;
        
        RST <= '0';
        wait for 20 ns;
        RST <= '1';
        wait for 20 ns;
        
        -- Add more test cases as needed...
        wait;
    end process;

end Bench;
