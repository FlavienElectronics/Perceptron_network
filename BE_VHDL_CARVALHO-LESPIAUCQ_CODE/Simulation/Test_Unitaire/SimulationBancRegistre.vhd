library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SimulationBancRegistre is
end SimulationBancRegistre;

architecture bench of SimulationBancRegistre is
    signal CLK     : std_logic := '0';
    signal RST     : std_logic := '0';
    signal W       : std_logic := '0';
    signal addr_A       : std_logic_vector(3 downto 0);
    signal addr_B       : std_logic_vector(3 downto 0);
    signal addr_W  : std_logic_vector(3 downto 0);
    signal DATA : std_logic_vector(7 downto 0);
    signal QA      : std_logic_vector(7 downto 0);
    signal QB      : std_logic_vector(7 downto 0);

    -- Instantiate the register bank
    component BancRegistre is
        Port (
            CLK     : in  std_logic;
            RST     : in  std_logic;
            W       : in  std_logic;
            addr_A       : in  std_logic_vector(3 downto 0);
            addr_B       : in  std_logic_vector(3 downto 0);
            addr_W  : in  std_logic_vector(3 downto 0);
            DATA : in  std_logic_vector(7 downto 0);
            QA      : out std_logic_vector(7 downto 0);
            QB      : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    uut: BancRegistre port map (
        CLK     => CLK,
        RST     => RST,
        W       => W,
        addr_A       => addr_A,
        addr_B       => addr_B,
        addr_W  => addr_W,
        DATA => DATA,
        QA      => QA,
        QB      => QB
    );

    -- Clock process
    CLK_process : process
    begin
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
    stimulus : process
    begin
        RST <= '0'; W <= '0'; addr_A <= "0000"; addr_B <= "0001"; addr_W <= "0000"; DATA <= "00000000";
        wait for 20 ns;
        RST <= '1';

        -- Ecriture dans le registre 0 
        addr_W <= "0000"; DATA <= "10101010"; W <= '1';
        wait for 20 ns;

        -- Ecriture dans le registre 1
        addr_W <= "0001"; DATA <= "01010101"; W <= '1';
        wait for 20 ns;

        -- Lecture des valeurs des registres 0 et 1
        W <= '0';
        addr_A <= "0000"; addr_B <= "0001";
        wait for 20 ns;

        -- Renitialisation de tout les registres
        RST <= '0';
        wait for 20 ns;
        RST <= '1';
        
        W <= '0';
        addr_A <= "0000";
        wait for 20 ns;
        
        addr_W <= x"F";
        W <= '1';
        DATA <= x"DF";
        wait for 20 ns;
        
        W <= '0';
        addr_A <= x"F";
        addr_B <= x"F";
        wait for 20 ns;

        -- Add more test cases as needed...
        wait;
    end process;

end bench;
