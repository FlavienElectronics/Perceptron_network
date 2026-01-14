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
    constant weight_array_size : integer := 5; -- Désigne la taille du vecteur de poids
    
    constant size_integral_32bit : integer := 2; -- Désigne le nombre de bit codant la partie entière du mot de 32 bits
    constant size_integral_64bit : integer := size_integral_32bit * 2; -- Désigne le nombre de bit codant la partie entière du mot de 64 bits
    constant dead_bit_word_64bit : integer := 1; -- Bit inutilisé
    
    type Weights_type is array(0 to weight_array_size-1) of std_logic_vector (31 downto  0);
    signal Weight : Weights_type := (others => X"00000000");
    signal actualWeight : std_logic_vector (31 downto  0);
    --signal w1 : integer := W;
    signal res_mul: std_logic_vector(63 downto 0);
    signal mul_mask: std_logic_vector(63 downto 0);
    
    -- S = signe / I = partie intégrale / D = partie décimale / X = bit inutile
    
    -- res_sum (binary) : 0000 0000 0000 0000 0000 0000 0000 0000
    --                    SIID DDDD DDDD DDDD DDDD DDDD DDDD DDDD 
    -- Signe : 31
    -- Integral : [30,29]
    -- Decimal : [28,0]
    
    -- res_mul (binary) : 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
    --                    SXII IIDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD DDDD
    -- Signe : 63
    -- Integral : [61,58]
    -- Decimal : [57,0]
    signal res_sum: std_logic_vector(31 downto 0);
    signal index: std_logic_vector(7 downto 0);
    signal intern_valid: std_logic;
    
    signal A_is_positive: std_logic;
    signal B_is_positive: std_logic;
    signal A_is_greater_than_B: std_logic;
    signal A_is_equal_to_B: std_logic;
    
    signal A: std_logic_vector(31 downto 0);
    signal B: std_logic_vector(31 downto 0);
    
    
    signal mul_sign: std_logic;
    signal dif_pos : std_logic;
begin
    process(Clock)
    begin
        if rising_edge(Clock) then
            if Reset = '0' then
                index <= x"00";
                valid <= '0';
                intern_valid <= '0';
--                res_mul <= x"0000000000000000";
                res_sum <= x"00000000";
                
                -- res_sum (binary) : 0000 0000 0000 0000 0000 0000 0000 0000
                --                    SIID DDDD DDDD DDDD DDDD DDDD DDDD DDDD 
                Weight(0) <= X"30000000"; -- = 1.5
                Weight(1) <= X"10000000"; -- = 0.5
                Weight(2) <= X"A0000000"; -- = -1.0
                Weight(3) <= X"40000000"; -- =  2.0
                Weight(4) <= X"BE000000"; -- =  -1.9375
            end if;
            if intern_valid = '0' and Enable = '1' then
                --                                          ON SOMME
                --              CASE A > 0 and B > 0
                if (A_is_positive = '1' and B_is_positive = '1') then 
                    res_sum <=  ((A + B) AND not X"80000000"); -- effacement du bit de signe
                    
                --              CASE A < 0 and B < 0 
                elsif (A_is_positive = '0' and B_is_positive = '0') then 
                    res_sum <=  ((A + B) OR X"80000000"); -- mise à 1 du bit de signe
                    
                --              CASE A > 0 and B < 0   
                elsif (A_is_positive = '1' and B_is_positive = '0') then     
                    if (A_is_equal_to_B = '1') then
                        res_sum <= X"00000000";
                    elsif (A_is_greater_than_B = '1') then
                        res_sum <=  ((A - B) AND not X"80000000"); -- effacement du bit de signe
                    else 
                        res_sum <=  ((B - A) OR X"80000000"); -- mise à 1 du bit de signe
                    end if;
                    
                --              CASE A < 0 and B > 0   
                elsif (A_is_positive = '0' and B_is_positive = '1') then     
                    if (A_is_equal_to_B = '1') then
                        res_sum <= X"00000000";
                    elsif (A_is_greater_than_B = '1') then
                        res_sum <=  ((A - B) OR X"80000000"); -- mise à 1 du bit de signe
                    else 
                        res_sum <=  ((B - A) AND not X"80000000"); -- effacement du bit de signe
                    end if;
                
                else
                    res_sum <= X"00000000";
                end if;
                
                -- UPDATE INDEX
                index <= index + 1;
                if index >= (weight_array_size-1) then
                    valid <= '1';
                    intern_valid <= '1';
                    index <= x"00";
                end if;
            end if;
        end if;
    end process;
    
    actualWeight <= (Weight(TO_INTEGER(unsigned(index))));
    
    A <= res_sum;
    B <= res_mul(63) & res_mul((62 - size_integral_32bit- dead_bit_word_64bit) downto (62 - size_integral_32bit- dead_bit_word_64bit) - (32 - size_integral_32bit)); 
    
    A_is_positive <= '1' when A(31) = '0' else '0';
    B_is_positive <= '1' when B(31) = '0' else '0';
    A_is_greater_than_B <= '1' when A(30 downto 0) > B(30 downto 0) else '0';
    A_is_equal_to_B <= '1' when A(30 downto 0) = B(30 downto 0) else '0';
 
    -- MULTIPLICATEUR
    
    -- mul_sign représente le ou exclusif entre le bit de signe de la valeur d'entrée et le poid correspondant
    mul_sign <= (Weight(TO_INTEGER(unsigned(index)))(31) XOR Input_Value(31));
    -- si mul_sign = 1 alors au moins une valeur est négative sinon, les deux valeurs sont positives ou négative
    
    mul_mask <= x"0000000000000000" when mul_sign = '0' else x"8000000000000000" ;
    
    res_mul <= ((Weight(TO_INTEGER(unsigned(index))) AND not X"80000000") * (Input_Value AND not X"80000000")) or mul_mask when index < weight_array_size;
    
    --dif_pos <= '1' when res_sum > res_mul(47 downto 16) else '0';
    
    -- FONCTION D'ACTIVATION ReLu
    Output_Value <= x"00000000" when res_sum(31) = '1' else res_sum;
    
    -- Fonctions d'activations à mettre en concurents
    -- Gérer le signe pour les fonctions d'activations
    -- Interger N pour la taille du tableau
    -- Gérer en 64 bits le résultat de l'opération de multiplication
    -- Biais à prendre en compte dans les poids
end Behavioral;
