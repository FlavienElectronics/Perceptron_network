----------------------------------------------------------------------------------
-- Company: INSA
-- Engineer: CARVALHO - LESPIAUCQ
-- 
-- Create Date: 10/16/2024 05:53:22 PM
-- Design Name: 
-- Module Name: RISC_V - Behavioral
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

entity RISC_V is
    Port ( CLK, RST : in std_logic;
            QA_uP, QB_uP, S_ALU_uP : out std_logic_vector(7 downto 0));
end RISC_V;

architecture Behavioral of RISC_V is

    signal IP : std_logic_vector(7 downto 0); -- Bus d'adresse de la mémoire d'instructions

    signal OP_LI_DI : std_logic_vector(7 downto 0);
    signal A_LI_DI : std_logic_vector(7 downto 0);
    signal B_LI_DI : std_logic_vector(7 downto 0);
    signal C_LI_DI : std_logic_vector(7 downto 0);
    
    signal OP_DI_EX : std_logic_vector(7 downto 0);
    signal A_DI_EX : std_logic_vector(7 downto 0);
    signal B_DI_EX : std_logic_vector(7 downto 0);
    signal C_DI_EX : std_logic_vector(7 downto 0);
    
    signal OP_EX_MEM : std_logic_vector(7 downto 0);
    signal A_EX_MEM : std_logic_vector(7 downto 0);
    signal B_EX_MEM : std_logic_vector(7 downto 0);
    
    signal OP_MEM_RE : std_logic_vector(7 downto 0);
    signal A_MEM_RE : std_logic_vector(7 downto 0);
    signal B_MEM_RE : std_logic_vector(7 downto 0);
    
    signal INSTRUCTION_CURRENT : std_logic_vector (31 downto 0);
	
	signal INSTRUCTION_NEXT : std_logic_vector (31 downto 0);

    signal BANK_REGISTER_A_ADDR : STD_LOGIC_VECTOR (3 downto 0);
    signal BANK_REGISTER_B_ADDR : STD_LOGIC_VECTOR (3 downto 0);
    signal BANK_REGISTER_W_ADDR : STD_LOGIC_VECTOR (3 downto 0);
    signal BANK_REGISTER_W_ENABLE : STD_LOGIC;
    signal BANK_REGISTER_QA_OUTPUT : STD_LOGIC_VECTOR (7 downto 0);
    signal BANK_REGISTER_QB_OUTPUT : STD_LOGIC_VECTOR (7 downto 0);
    signal BANK_REGISTER_DATA_IN : STD_LOGIC_VECTOR (7 downto 0);
    
    signal ALU_A_INPUT : STD_LOGIC_VECTOR (7 downto 0);
    signal ALU_B_INPUT : STD_LOGIC_VECTOR (7 downto 0);
    signal ALU_S_OUTPUT : STD_LOGIC_VECTOR (7 downto 0);
    signal ALU_CONTROL : STD_LOGIC_VECTOR (2 downto 0);
    signal ALU_CARRY : STD_LOGIC;
    signal ALU_OVERFLOW_FLAG : STD_LOGIC;
    signal ALU_NEGATIVE_FLAG : STD_LOGIC;
    
    signal MEMORY_RW : STD_LOGIC;
    signal MEMORY_DATA_OUT : STD_LOGIC_VECTOR (7 downto 0);
    signal MEMORY_DATA_IN : STD_LOGIC_VECTOR (7 downto 0);
    signal MEMORY_ADDRESS : STD_LOGIC_VECTOR (7 downto 0);
	
	signal INSTRUCTION_CURRENT_OP : STD_LOGIC_VECTOR (7 downto 0);
    signal INSTRUCTION_CURRENT_A : STD_LOGIC_VECTOR (7 downto 0);
    signal INSTRUCTION_CURRENT_B : STD_LOGIC_VECTOR (7 downto 0);
    signal INSTRUCTION_CURRENT_C : STD_LOGIC_VECTOR (7 downto 0);
	
	signal INSTRUCTION_NEXT_OP : STD_LOGIC_VECTOR (7 downto 0);
    signal INSTRUCTION_NEXT_A : STD_LOGIC_VECTOR (7 downto 0);
    signal INSTRUCTION_NEXT_B : STD_LOGIC_VECTOR (7 downto 0);
    signal INSTRUCTION_NEXT_C : STD_LOGIC_VECTOR (7 downto 0);
	
	signal INHIBIT_1 : STD_LOGIC;
	signal INHIBIT_2 : STD_LOGIC;
	signal INHIBIT_3 : STD_LOGIC;
	
	signal INHIBIT_1_HISTORIC_MINUS_1 : STD_LOGIC;
	signal INHIBIT_2_HISTORIC_MINUS_1 : STD_LOGIC;
	signal INHIBIT_3_HISTORIC_MINUS_1 : STD_LOGIC;
	
	signal INHIBIT_1_HISTORIC_MINUS_2 : STD_LOGIC;
	signal INHIBIT_2_HISTORIC_MINUS_2 : STD_LOGIC;
	signal INHIBIT_3_HISTORIC_MINUS_2 : STD_LOGIC;
	
	
	signal INHIBIT_1_HISTORIC_MINUS_3 : STD_LOGIC;
	signal INHIBIT_2_HISTORIC_MINUS_3 : STD_LOGIC;
	signal INHIBIT_3_HISTORIC_MINUS_3 : STD_LOGIC;

    component BancRegistre PORT(addr_A : in STD_LOGIC_VECTOR (3 downto 0);
           addr_B : in STD_LOGIC_VECTOR (3 downto 0);
           addr_W : in STD_LOGIC_VECTOR (3 downto 0);
           W : in STD_LOGIC;
           RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0);
           DATA : in STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component BancInstructions Port ( addr : in STD_LOGIC_VECTOR (7 downto 0);
           CLK : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (31 downto 0));
    end component;
    
    component ALU_8bits Port (
            A : in STD_LOGIC_VECTOR (7 downto 0);
            B : in STD_LOGIC_VECTOR (7 downto 0);
            Ctrl : in STD_LOGIC_VECTOR (2 downto 0);
            S : out STD_LOGIC_VECTOR (7 downto 0);
            Carry : out STD_LOGIC;
            Overflow : out STD_LOGIC;
            Negatif : out STD_LOGIC);
    end component;
    
    component BancMemoire Port (
            addr : in STD_LOGIC_VECTOR (7 downto 0);
            Data_in : in STD_LOGIC_VECTOR (7 downto 0);
            RW : in STD_LOGIC;
            RST : in STD_LOGIC;
            CLK : in STD_LOGIC;
            data_out : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
begin
    
    BI : BancInstructions port map(IP, CLK, INSTRUCTION_CURRENT);
	
	BI_NEXT : BancInstructions port map(IP+1, CLK, INSTRUCTION_NEXT);
    
    BR : BancRegistre port map( BANK_REGISTER_A_ADDR,
                                BANK_REGISTER_B_ADDR,
                                BANK_REGISTER_W_ADDR,
                                BANK_REGISTER_W_ENABLE, 
                                RST, 
                                CLK, 
                                BANK_REGISTER_QA_OUTPUT, 
                                BANK_REGISTER_QB_OUTPUT, 
                                BANK_REGISTER_DATA_IN);
                                
    ALU : ALU_8bits port map(   ALU_A_INPUT,
                                ALU_B_INPUT,
                                ALU_CONTROL,
                                ALU_S_OUTPUT,
                                ALU_CARRY,
                                ALU_OVERFLOW_FLAG,
                                ALU_NEGATIVE_FLAG);
                               
    MEM : BancMemoire port map(
                                MEMORY_ADDRESS,
                                MEMORY_DATA_IN,
                                MEMORY_RW,
                                RST,
                                CLK,
                                MEMORY_DATA_OUT);
                                
                            


-- Toujours avoir un coup d'avance pour que les signaux ne soit pas en retards
-- Par exemple avec les signaux LI/DI il faut anticiper les sorties du banc de registe
-- ainsi que les entree de la memoire de donnee
-- Les sorties des composants synchrones ont besoin de deux coup d'horloge !!

process(CLK)
begin
    if rising_edge(CLK) then
        if (RST = '0') then
            -- Reset de IP et des signaux
            IP <= x"00";
            OP_LI_DI <= x"00";
            A_LI_DI <= x"00";
            B_LI_DI <= x"00";
            C_LI_DI <= x"00";
            
            OP_DI_EX <= x"00";
            A_DI_EX <= x"00";
            B_DI_EX <= x"00";
            C_DI_EX <= x"00";
            
            OP_EX_MEM <= x"00";
            A_EX_MEM <= x"00";
            B_EX_MEM <= x"00";
            
            OP_MEM_RE <= x"00";
            A_MEM_RE <= x"00";
            B_MEM_RE <= x"00";

        else
		
		INHIBIT_1_HISTORIC_MINUS_1 <= INHIBIT_1;
		INHIBIT_2_HISTORIC_MINUS_1 <= INHIBIT_2;
		INHIBIT_3_HISTORIC_MINUS_1 <= INHIBIT_3;
		
		INHIBIT_1_HISTORIC_MINUS_2 <= INHIBIT_1_HISTORIC_MINUS_1;
		INHIBIT_2_HISTORIC_MINUS_2 <= INHIBIT_2_HISTORIC_MINUS_1;
		INHIBIT_3_HISTORIC_MINUS_2 <= INHIBIT_3_HISTORIC_MINUS_1;
		
		INHIBIT_1_HISTORIC_MINUS_3 <= INHIBIT_1_HISTORIC_MINUS_2;
		INHIBIT_2_HISTORIC_MINUS_3 <= INHIBIT_2_HISTORIC_MINUS_2;
        INHIBIT_3_HISTORIC_MINUS_3 <= INHIBIT_3_HISTORIC_MINUS_2;    
		
 -- *********************************************************   

    -- Preparer les signaux de sortie du banc de registre en avance
    -- Preparer les signaux d'entree de la memoire en cas d'ecriture
            
    -- LI/DI

		if ((INHIBIT_1_HISTORIC_MINUS_2 = '1')
			or (INHIBIT_1_HISTORIC_MINUS_3 = '1')
			or (INHIBIT_2_HISTORIC_MINUS_2 = '1')) then 	
				OP_DI_EX <= x"00";
				A_DI_EX <= x"00";
				B_DI_EX <= x"00";
				C_DI_EX <= x"00";
		else 
			A_DI_EX <= A_LI_DI;
			OP_DI_EX <= OP_LI_DI;
		
			if OP_LI_DI = x"06" or OP_LI_DI = x"07" then -- AFC ou LOAD (pas de lecture dans le banc de registre)
				B_DI_EX <= B_LI_DI;
			else 
				B_DI_EX <= BANK_REGISTER_QA_OUTPUT;
				C_DI_EX <= BANK_REGISTER_QB_OUTPUT;
			end if;
		end if;

	-- END LI/DI
               
 -- *********************************************************  
    -- On prepare les signaux de sortie de la memoire en cas de lecture 
	-- DI/EX
			
		-- 01 = ADD -> 000
		-- 02 = MUL -> 010
		-- 03 = SOU -> 001    
            A_EX_MEM <= A_DI_EX;
            OP_EX_MEM <= OP_DI_EX;

            if OP_DI_EX = x"01" or OP_DI_EX = x"02" or OP_DI_EX = x"03" then
                B_EX_MEM <= ALU_S_OUTPUT;
            else  
                B_EX_MEM <= B_DI_EX;
            end if;
            
             
	-- END DI/EX
            
 -- *********************************************************  

	-- EX/MEM 

            A_MEM_RE <= A_EX_MEM;
            OP_MEM_RE <= OP_EX_MEM;

            if OP_EX_MEM /= x"07" then
                B_MEM_RE <= B_EX_MEM;
            else 
                B_MEM_RE <= MEMORY_DATA_OUT;
            end if;
            
            
	-- END  EX/MEM

 -- *********************************************************              
            
	-- MEM/RE
            
	-- END  MEM/RE
	
 -- *********************************************************          
			
		-- Memoire d'instruction	
		
		OP_LI_DI <= INSTRUCTION_CURRENT_OP;
		A_LI_DI <= INSTRUCTION_CURRENT_A;
		B_LI_DI <= INSTRUCTION_CURRENT_B;
		C_LI_DI <= INSTRUCTION_CURRENT_C;
			
		if (INHIBIT_1 /= '1' and INHIBIT_2 /= '1' and INHIBIT_1_HISTORIC_MINUS_1 /= '1') then     -- Insersion de bulle (NOP)	
			-- Instruction normale
			IP <= std_logic_vector(unsigned(IP) + 1);  			-- Incrémentation de IP (instruction pointer)
		else 
			IP <= IP; -- Bloque IP sur place
		end if;
			
		-- END Memoire d'instruction
	
               end if;
        
        end if;
        
        
    end process;
	
    -- Instructions concurrentes
	
	INSTRUCTION_CURRENT_OP <= INSTRUCTION_CURRENT(31 downto 24);
	INSTRUCTION_CURRENT_A <= INSTRUCTION_CURRENT(23 downto 16);
    INSTRUCTION_CURRENT_B <= INSTRUCTION_CURRENT(15 downto 8);
    INSTRUCTION_CURRENT_C <= INSTRUCTION_CURRENT(7 downto 0);
		
	INSTRUCTION_NEXT_OP <= INSTRUCTION_NEXT(31 downto 24);
	INSTRUCTION_NEXT_A <= INSTRUCTION_NEXT(23 downto 16);
	INSTRUCTION_NEXT_B <= INSTRUCTION_NEXT(15 downto 8);
	INSTRUCTION_NEXT_C <= INSTRUCTION_NEXT(7 downto 0);
	
	-- Inhibe l'incremment pendant 4 coups d'horloge

									-- Instructions affectant des registres (2 operandes)
	INHIBIT_1 <= '1' when 	(	(
									(	INSTRUCTION_CURRENT_OP = x"05" 	-- COP
										or INSTRUCTION_CURRENT_OP = x"06" 	-- AFC
										or INSTRUCTION_CURRENT_OP = x"07" 	-- LOAD
									)
										-- Instructions utilisant des registres
									and (		INSTRUCTION_NEXT_OP = x"01" 	-- ADD
											or INSTRUCTION_NEXT_OP = x"02" 		-- MUL
											or INSTRUCTION_NEXT_OP = x"03"		-- SOU
											or INSTRUCTION_NEXT_OP = x"05"  	-- COP								
											or INSTRUCTION_NEXT_OP = x"08" 		-- STORE
										)
										-- Les deux operandes identiques = conflit
									and (		INSTRUCTION_CURRENT_A = INSTRUCTION_NEXT_B
										)
									and INHIBIT_1_HISTORIC_MINUS_2 /= '1'
								)
							
								
									-- Instructions affectant des registres (3 operandes)										
								or
								(
									(		INSTRUCTION_CURRENT_OP = x"01" 	-- ADD
										or INSTRUCTION_CURRENT_OP = x"02" 	-- MUL
										or INSTRUCTION_CURRENT_OP = x"03" 	-- SOU
									)
										-- Instructions utilisant des registres
									and (		INSTRUCTION_NEXT_OP = x"01" 	-- ADD
											or INSTRUCTION_NEXT_OP = x"02" 		-- MUL
											or INSTRUCTION_NEXT_OP = x"03"		-- SOU
											or INSTRUCTION_NEXT_OP = x"05"  	-- COP								
											or INSTRUCTION_NEXT_OP = x"08" 		-- STORE
										)
										-- Deux des trois operandes identiques = conflit
									and (		INSTRUCTION_CURRENT_A = INSTRUCTION_NEXT_B
											or	INSTRUCTION_CURRENT_A = INSTRUCTION_NEXT_C
										)									
										and INHIBIT_1_HISTORIC_MINUS_2 /= '1'
								)
								
							)
					else '0';
								-- Instructions utilisant des registres
	INHIBIT_2 <= '1' when 	(	(		INSTRUCTION_CURRENT_OP = x"01" 		-- ADD
								or INSTRUCTION_CURRENT_OP = x"02" 	-- MUL
								or INSTRUCTION_CURRENT_OP = x"03"	-- SOU
								or INSTRUCTION_CURRENT_OP = x"05"  	-- COP								
								or INSTRUCTION_CURRENT_OP = x"08" 	-- STORE
								)
								-- Instructions affectant des registres (2 operandes)
								and (		OP_LI_DI = x"01" -- ADD
										or OP_LI_DI = x"02"	--	MUL
										or OP_LI_DI = x"03"	-- SOU
										or OP_LI_DI = x"05"	-- COP
										or OP_LI_DI = x"06" -- AFC
										or OP_LI_DI = x"07"	-- LOAD
									) 
								and (		INSTRUCTION_CURRENT_B = A_LI_DI
										or INSTRUCTION_CURRENT_C = A_LI_DI
									)
								and INHIBIT_2_HISTORIC_MINUS_2 /= '1'
							)
		
					else '0';	
					
	INHIBIT_3 <= '1' when (INSTRUCTION_CURRENT_OP = x"05" 
							and OP_DI_EX = x"06" 
							and INSTRUCTION_CURRENT_B = A_DI_EX)
					else '0';
	
	
	-- LI/DI
	
    BANK_REGISTER_A_ADDR <= B_LI_DI(3 downto 0);
    BANK_REGISTER_B_ADDR <= C_LI_DI(3 downto 0);
    
   -- DI/EX

    ALU_A_INPUT <= B_DI_EX;
    ALU_B_INPUT <= C_DI_EX;

    with OP_DI_EX select 
    ALU_CONTROL <= "000" when  x"01",    
                    "010" when  x"02",   
                    "001" when  x"03",
                    "000" when others;
    -- EX/MEM

    -- LOAD
    with OP_EX_MEM select   -- Memoire de données
    MEMORY_RW <= '0' when x"08", -- Ecriture
                   '1' when others; -- Lecture
                   
    with OP_EX_MEM select
        MEMORY_ADDRESS <= B_EX_MEM when x"07",      -- Load
                        A_EX_MEM when x"08",        -- Store
                        x"00" when others;
						
    with OP_EX_MEM select 
        MEMORY_DATA_IN <= B_EX_MEM when x"08",
                        x"00" when others; 
                   
    -- MEM/RE
    
		-- Banc de registre
        BANK_REGISTER_W_ENABLE <= '1' when OP_MEM_RE = x"01" 
										or OP_MEM_RE = x"02" 
										or OP_MEM_RE = x"03" 
										or OP_MEM_RE = x"04" 
										or OP_MEM_RE = x"05" 
										or OP_MEM_RE = x"06" 
										or OP_MEM_RE = x"07" 	-- Ecriture
							else '0';  							-- Pas d'ecriture
                                
    BANK_REGISTER_W_ADDR <= A_MEM_RE(3 downto 0);
    BANK_REGISTER_DATA_IN <= B_MEM_RE when OP_MEM_RE /= x"07" else MEMORY_DATA_OUT;
    
    QA_uP <= BANK_REGISTER_QA_OUTPUT;
    QB_uP <= BANK_REGISTER_QB_OUTPUT;
    S_ALU_uP <= ALU_S_OUTPUT;
    
end Behavioral;--------------------------------------------------------------------------------------------------------------------------------------------------------------------
