library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

entity Perceptron_BRAM is
    generic(weight_array_size : integer := 784; -- Désigne la taille du vecteur de poids
            size_integral_32bit : integer := 2); -- Désigne le nombre de bit codant la partie entière du mot de 32 bits)
            
    Port ( Enable : in STD_LOGIC;
           Input_Value : in STD_LOGIC_VECTOR (31 downto 0);
           Clock : in STD_LOGIC;
           Reset : in STD_LOGIC;
           w_in : in STD_LOGIC_VECTOR (31 downto 0);
           Valid : out STD_LOGIC;
           Output_Value : out STD_LOGIC_VECTOR (31 downto 0);
           addr : out STD_LOGIC_VECTOR (9 downto 0));
end Perceptron_BRAM;

architecture Behavioral of Perceptron_BRAM is
    constant size_integral_64bit : integer := size_integral_32bit * 2; -- Désigne le nombre de bit codant la partie entière du mot de 64 bits
    constant dead_bit_word_64bit : integer := 1; -- Bit inutilisé
    
    signal actualWeight : std_logic_vector (31 downto  0);
    --signal w1 : integer := W;
    signal res_mul: std_logic_vector(63 downto 0);
    signal mul_mask: std_logic_vector(63 downto 0);
    
    signal res_sum: std_logic_vector(31 downto 0);
    signal index: std_logic_vector(9 downto 0);
    signal intern_valid: std_logic;
    
    signal A_is_positive: std_logic;
    signal B_is_positive: std_logic;
    signal A_is_greater_than_B: std_logic;
    signal A_is_equal_to_B: std_logic;
    
    signal overflow_flag_sup: std_logic;
    signal overflow_flag_inf: std_logic;
    signal buffer_addition : std_logic_vector(31 downto 0);
    
    signal A: std_logic_vector(31 downto 0);
    signal B: std_logic_vector(31 downto 0);
    
    
    signal mul_sign: std_logic;
    signal dif_pos : std_logic;
    
    signal clock_wait : std_logic;
  
begin
    actualWeight <= w_in;
    addr <= index; 

    process(Clock)
    begin
        if rising_edge(Clock) then
            if Reset = '0' then
                index <= "0000000000";
                valid <= '0';
                intern_valid <= '0';
                res_sum <= x"00000000";
                clock_wait <= '0';
            end if;
            if clock_wait = '0' then
                clock_wait <= '1';
            else
                clock_wait <= '0';
                if intern_valid = '0' and Enable = '1' then
                
                if (overflow_flag_sup = '1') then
                    res_sum <= x"7FFFFFFF";
                elsif (overflow_flag_inf = '1') then
                    res_sum <= x"FFFFFFFF";
                else
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
                end if;
                
                -- UPDATE INDEX
                index <= index + 1;
                if index >= (weight_array_size-1) then
                    valid <= '1';
                    intern_valid <= '1';
                    index <= "0000000000";
                end if;
            end if;
                
            end if;
            
        end if;
    end process;
    
    buffer_addition <= (A AND not x"80000000") + (B AND not x"80000000");
    
    overflow_flag_sup <= '1' when (A_is_positive = '1') 
                            and (B_is_positive = '1')
                            and (buffer_addition(31) = '1')
                            else '0';
    overflow_flag_inf <= '1' when (A_is_positive = '0')
                            and (B_is_positive = '0')
                            and (buffer_addition(31) = '1')
                            else '0';
    A <= res_sum;
    B <= res_mul(63) & res_mul((62 - size_integral_32bit- dead_bit_word_64bit) downto (62 - size_integral_32bit- dead_bit_word_64bit) - (32 - size_integral_32bit)); 
    
    A_is_positive <= '1' when A(31) = '0' else '0';
    B_is_positive <= '1' when B(31) = '0' else '0';
    A_is_greater_than_B <= '1' when A(30 downto 0) > B(30 downto 0) else '0';
    A_is_equal_to_B <= '1' when A(30 downto 0) = B(30 downto 0) else '0';
 
    -- MULTIPLICATEUR
    -- mul_sign représente le ou exclusif entre le bit de signe de la valeur d'entrée et le poid correspondant
    mul_sign <= (actualWeight(31) XOR Input_Value(31));
    -- si mul_sign = 1 alors au moins une valeur est négative sinon, les deux valeurs sont positives ou négative
    mul_mask <= x"0000000000000000" when mul_sign = '0' else x"8000000000000000" ;
    res_mul <= (((actualWeight) AND not X"80000000") * (Input_Value AND not X"80000000")) or mul_mask when index < weight_array_size;
    
    -- FONCTION D'ACTIVATION ReLu
    Output_Value <= x"00000000" when res_sum(31) = '1' else res_sum;
--  Output_Value <= res_sum;
end Behavioral;