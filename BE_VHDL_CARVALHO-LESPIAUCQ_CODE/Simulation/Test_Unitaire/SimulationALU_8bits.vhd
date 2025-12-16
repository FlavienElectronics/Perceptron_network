library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

entity SimulationALU_8bits is
   
end SimulationALU_8bits;

architecture Behavioral of SimulationALU_8bits is

    -- Déclaration des signaux pour relier à l'ALU
    signal A : STD_LOGIC_VECTOR(7 downto 0);
    signal B : STD_LOGIC_VECTOR(7 downto 0);
    signal Ctrl : STD_LOGIC_VECTOR(2 downto 0);
    signal S : STD_LOGIC_VECTOR(7 downto 0);
    signal Carry : STD_LOGIC;
    signal Overflow : STD_LOGIC;
    signal Negatif : STD_LOGIC;

begin

    -- Instanciation de l'ALU
    ALU: entity work.ALU_8bits
        port map (
            A => A,
            B => B,
            Ctrl => Ctrl,
            S => S,
            Carry => Carry,
            Overflow => Overflow,
            Negatif => Negatif
        );

    -- Processus de simulation
    process
    begin

        -- Addition A + B, avec Carry
        A <= "00001111"; -- A = 15
        B <= "00001111"; -- B = 15
        Ctrl <= "000"; -- Addition
        wait for 10 ns;

        -- Addition avec dépassement (Carry)
        A <= "11111111"; -- A = 255
        B <= "00000001"; -- B = 1
        Ctrl <= "000"; -- Addition
        wait for 10 ns;

        -- Soustraction A - B sans emprunt
        A <= "00001111"; -- A = 15
        B <= "00000001"; -- B = 1
        Ctrl <= "001"; -- Soustraction
        wait for 10 ns;

        -- Soustraction avec emprunt
        A <= "00000000"; -- A = 0
        B <= "00000001"; -- B = 1
        Ctrl <= "001"; -- Soustraction
        wait for 10 ns;

        -- Multiplication
        A <= "00000011"; -- A = 3
        B <= "00000010"; -- B = 2
        Ctrl <= "010"; -- Multiplication
        wait for 20 ns; 

        -- Multiplication avec Overflow
        A <= "11111111"; -- A = 255
        B <= "00000010"; -- B = 2
        Ctrl <= "010"; -- Multiplication
        wait for 20 ns;
        
        -- Multiplication        
        A <= "00001010"; -- A = 10
        B <= "00000011"; -- B = 3
        Ctrl <= "010"; -- Multiplication
        wait for 20 ns;

        -- AND logique
        A <= "10101010"; -- A = 170
        B <= "11001100"; -- B = 204
        Ctrl <= "011"; -- AND
        wait for 10 ns;

        -- OR logique
        A <= "10101010"; -- A = 170
        B <= "11001100"; -- B = 204
        Ctrl <= "100"; -- OR
        wait for 10 ns;

        -- XOR logique
        A <= "10101010"; -- A = 170
        B <= "11001100"; -- B = 204
        Ctrl <= "101"; -- XOR
        wait for 10 ns;

        -- NOT logique
        A <= "10101010"; -- A = 170
        Ctrl <= "110"; -- NOT
        wait for 10 ns;

        -- Flag négatif
        A <= "10000000"; -- A = -128 (complément à 2)
        B <= "00000001"; -- B = 1
        Ctrl <= "001"; -- Soustraction
        wait for 10 ns;

        -- Default case (autre valeur de contrôle)
        Ctrl <= "111"; -- Default case
        wait for 10 ns;

        wait;
    end process;

end Behavioral;