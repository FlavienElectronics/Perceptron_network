----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/16/2025 04:11:46 PM
-- Design Name: 
-- Module Name: Perceptron - Behavioral
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

entity Perceptron is
    --generic (W : integer := 40);
    Port ( Enable : in STD_LOGIC;
           Input_Value : in STD_LOGIC_VECTOR (31 downto 0);
           Clock : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Valid : out STD_LOGIC;
           Output_Value : out STD_LOGIC_VECTOR (31 downto 0));
end Perceptron;

architecture Behavioral of Perceptron is
    type Weights_type is array(0 to 3) of std_logic_vector (31 downto  0);
    signal Weight : Weights_type := (others => X"00000000");
    --signal w1 : integer := W;
    signal res_mul: std_logic_vector(63 downto 0);
    signal res_sum: std_logic_vector(31 downto 0);
    signal index: std_logic_vector(7 downto 0);
    signal intern_valid: std_logic;
    signal res_xor: std_logic;
    signal coup_dans_le_vide : std_logic;
begin
    process(Clock)
    begin
        if rising_edge(Clock) then
            if Reset = '0' then
                index <= x"00";
                valid <= '0';
                intern_valid <= '0';
                coup_dans_le_vide <= '0';
                res_mul <= x"0000000000000000";
                res_sum <= x"00000000";
                Weight(0) <= X"00050000";
                Weight(1) <= X"00020000";
                Weight(2) <= X"80080000";
                Weight(3) <= X"00030000";
            end if;
            if intern_valid = '0' and Enable = '1' then
                -- MULTIPLICATEUR
                res_mul <= (Weight(TO_INTEGER(unsigned(index))) AND not X"80000000") * (Input_Value AND not X"80000000");
                -- SUMMATEUR
                res_xor <= (Weight(TO_INTEGER(unsigned(index)))(31) XOR Input_Value(31));
                if res_xor = '1' then
                    res_sum <= (res_sum - (res_mul(47 downto 16)) OR X"80000000");
                else
                    res_sum <= (res_sum + (res_mul(47 downto 16)) AND not X"80000000");
                end if;
                -- UPDATE INDEX
                --if index = 0 then
                --    coup_dans_le_vide <= '1';
                --end if;
                --if coup_dans_le_vide = '1' then
                index <= index + 1;
                --end if;
                if index >= 3 then
                    valid <= '1';
                    intern_valid <= '1';
                end if;
            end if;
        end if;
    end process;
    
    -- FONCTION D'ACTIVATION ReLu
    Output_Value <= x"00000000" when res_sum(31) = '1' else res_sum;
    
    -- Fonctions d'activations à mettre en concurents
    -- Gérer le signe pour les fonctions d'activations
    -- Interger N pour la taille du tableau
    -- Gérer en 64 bits le résultat de l'opération de multiplication
    -- Biais à prendre en compte dans les poids
end Behavioral;
