----------------------------------------------------------------------------------
-- Company: INSA
-- Engineer: CARVALHO - LESPIAUCQ
-- 
-- Create Date: 10/16/2024 05:53:22 PM
-- Design Name: 
-- Module Name: BancMemoire - Behavioral
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
use IEEE.NUMERIC_STD.ALL;


entity BancInstructions is
    Port ( addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (31 downto 0));
end BancInstructions;

architecture Behavioral of BancInstructions is
    type mem_type is array(0 to 255) of STD_LOGIC_VECTOR(31 downto 0);
    signal data_mem : mem_type := (
    
	0 => x"00000000",
	
    -- AFC R0,#119
    1 => x"06007700",   							-- R0 = 0x77 /
    
    -- AFC R1,#85 
    2 => x"06015500",   							-- R1 = 0x55 /
    
	-- COP R2, R1       	(R2 <- R1)
	3 => x"05020100",   							-- R2 = 0x55 / 	DATA HAZARD PROTECTED
	
    -- AFC R2,#34
    4 => x"06022200",   							-- R2 = 0x22 /
    
    -- AFC R3,#17
    5 => x"06031100",   							-- R3 = 0x11 /
    
    -- AFC R4,#6
    6 => x"06040600",    							-- R4 = 0x06 /
    
    -- COP R10,R0           (R10 <- R0)
    7 => x"050A0000",   							-- R10 = 0x77 /
    
    -- COP R11,R1           (R11 <- R1)
    8 => x"050B0100",   							-- R11 =  0x55 /
    
   -- ADD R5,R1,R3          (R5 <- R1 + R3)
    9 => x"01050103",   							-- R5 =  0x66 /
    
    -- MUL R6,R4,R2         (R6 <- R4 × R2)
    10 => x"02060402",   							-- R6 =  0xCC / 
    
    -- SOU R7,R1,R2         (R7 <- R1 - R2)
    11 => x"03070102",   							-- R7 = 0x33  /  
    
    -- AFC R10,#223
    12 => x"060ADF00",  							-- R10 =  0xDF /
    
    -- STORE @7,R10
    13 => x"08070A00",  							-- @7 <-  0xDF /  DATA HAZARD PROTECTED
    
    -- STORE @117,R0
    14 => x"08750000",  							-- @117 <-  0x77 /
    
    -- STORE @2,R6
    15 => x"08020600",  							-- @2 <-  0xCC  /
    
    -- LOAD R4,@7
    16 => x"07040700",  							-- R4 =  0xDF / 
    
     -- LOAD R8,@117
    17 => x"07087500",  							-- R8 =  0x77 /
	
	 -- BAD INSTRUCTION
    18 => x"66ACC099", 		-- Marker *******  AFC/COP HAZARD PROTECTION
	
	-- AFC R5,#136 
    19 => x"06058800",   							-- R5 =  0x88 /
    
	-- COP R6, R5        	(R6 <- R5)
	20 => x"05060500",   							-- R6 =  0x88 / DATA HAZARD PROTECTED
	
	-- AFC R7,#255 
    21 => x"0607FF00",   							-- R7 = 0xFF /
    
	-- COP R6, R7       	(R6 <- R7)
	22 => x"05060700",   							-- R6 =  0xFF /   DATA HAZARD PROTECTED
	
	-- AFC R6,#207 
    23 => x"0606CF00",   							-- R6 =  0xCF /
    
	-- COP R7, R6       	(R7 <- R6)
	24 => x"05070600",   							-- R7 =  0xCF / DATA HAZARD PROTECTED
	
	-- AFC R0,#207 
    25 => x"0600F000",   							-- R0 =  0xF0 / 
    
	-- AFC R1,#1 
    26 => x"06010100",   							-- R1 =  0x01 /
	
	-- COP R1, R0       	(R1 <- R0)
	28 => x"05010000",   							-- R1 =  0xF0 / 
	
	-- BAD INSTRUCTION
    29 => x"FFFFFFFF", 		-- Marker ******* AFC/COP HAZARD PROTECTION
    
	-- AFC R15,#9 
    30 => x"060F0900",   							-- R15 =  0x09 / 
	
	-- COP R12, R5       	(R12 <- R5)
	31 => x"050C0100",   							-- R12 =  0x88 / 
	
	-- ADD R6,R6,R6 		(R6 <- R6 + R6)
    32 => x"01060606",   							-- R6 =  0x9E (carry) / 
    
	-- COP R14,R15 			(R14 <- R15)
    33 => x"050E0F00",   							-- R14 =  0x09 / NO DATA HAZARD
    
	-- COP R6, R6       	(R6 <- R6)
	34 => x"05060600",   							-- R6 =  0x9E /
	
	-- BAD INSTRUCTION
    35 => x"F9FFFF9F", 		-- Marker ******* AFC/STORE HAZARD PROTECTION
	
	-- AFC R0,#49
    36 => x"06003100",  							-- R0 =  0x31 /
    
    -- STORE @0,R0
    38 => x"08000000",  							-- @0 <-  0x31 /  DATA HAZARD PROTECTED
	
	-- LOAD R1,@0
    39 => x"07010000",  							-- R1 =  0x31 /	
	
	-- BAD INSTRUCTION
    40 => x"11223344", 		-- Marker ******* LOAD/ADD HAZARD PROTECTION
	
	-- STORE @2,R15
    41 => x"08020F00",  							-- @2 <-  0x09 / 
	
	-- LOAD R2,@2
    42 => x"07020200",  							-- R2 =  0x09 /	
	
	-- ADD R3,R2,R2          (R3 <- R2 + R2)
    43 => x"01030202",   							-- R3 =  0x12 / DATA HAZARD PROTECTED
	
	-- BAD INSTRUCTION
    44 => x"AABBCCDD", 		-- Marker ******* 	ADD/ADD HAZARD PROTECTION
	
	-- AFC R1,#2          	
    45 => x"06010200",   							-- R1 =  0x2 / 
	
	-- ADD R2,R1,R1          (R2 <- R1 + R1)
    46 => x"01020101",   							-- R2 =  0x4 / DATA HAZARD PROTECTED
	
	-- ADD R3,R2,R2          (R3 <- R2 + R2)
    47 => x"01030202",   							-- R3 =  0x8 / DATA HAZARD PROTECTED
	
		-- BAD INSTRUCTION
    48 => x"AABBCCDD", 		-- Marker ******* AFC/ADD/SOU HASARD PROTECTION
	
	-- AFC R1,#10          	
    49 => x"06010A00",   							-- R1 =  0xA / 
	
	-- AFC R0,#100          	
    50 => x"06006400",   							-- R0 =  0x64 / 
	
	-- ADD R2,R1,R1          (R2 <- R1 + R1)
    51 => x"01020101",   							-- R2 =  0x14 / DATA HAZARD PROTECTED
	
	-- SOU R0,R0,R2          (R0 <- R0 - R2)
    52 => x"01000002",   							-- R0 =  0x50 / DATA HAZARD NOT PROTECTED
	
	
	
	
    
	
	
    
    others => X"00000000"
    );
begin       
    process(CLK)
    begin
        if rising_edge(CLK) then
            -- LECTURE
            data_out <= data_mem(TO_INTEGER (unsigned (addr)));
        end if;
    end process;
	
end Behavioral;
