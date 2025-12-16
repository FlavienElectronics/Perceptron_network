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
    signal Weight : Weights_type := (others => X"00");
    --signal w1 : integer := W;
    signal res_mul: std_logic_vector(31 downto 0);
    signal res_sum: std_logic_vector(31 downto 0);
    signal index: std_logic_vector(7 downto 0);
    signal intern_valid: std_logic;
begin
    process(Clock)
    begin
        if rising_edge(Clock) then
            if Reset = '0' then
                index <= x"00";
                valid <= '0';
                intern_valid <= '0';
                res_mul <= x"0000";
                res_sum <= x"0000";
            end if;
            if intern_valid = '0' then
                -- MULTIPLICATEUR
                res_mul <= Weight(TO_INTEGER(unsigned(index))) * Input_Value;
                -- SUMMATEUR
                res_sum <= res_sum + res_mul;
                -- FONCTION D'ACTIVATION ReLu
                if res_sum < 0 then
                    Output_Value <= x"0000";
                else
                    Output_Value <= res_sum;
                end if;
                -- UPDATE INDEX
                index <= index + 1;
                if index >= 3 then
                    valid <= '1';
                    intern_valid <= '1';
                end if;
            end if;
        end if;
    end process;
end Behavioral;
