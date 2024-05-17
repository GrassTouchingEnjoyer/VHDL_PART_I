----------------------------------------------------------------------------------

-- Company: 

-- Engineer: 

-- 

-- Create Date:    14:19:12 05/06/2024 

-- Design Name: 

-- Module Name:    Control_unit - Behavioral 

-- Project Name: 

-- Target Devices: 

-- Tool versions: 

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



-- Uncomment the following library declaration if using

-- arithmetic functions with Signed or Unsigned values

--use IEEE.NUMERIC_STD.ALL;



-- Uncomment the following library declaration if instantiating

-- any Xilinx primitives in this code.

--library UNISIM;

--use UNISIM.VComponents.all;



entity Control_unit is

    Port ( 

			  Instr : in  STD_LOGIC_VECTOR (31 downto 0);
			  
			  Rst  : in  STD_LOGIC;

           PC_sel : out  STD_LOGIC;

           PC_LdEn : out  STD_LOGIC;

           RF_WrEn : out  STD_LOGIC;

           RF_WrData_sel : out  STD_LOGIC;

           RF_B_sel : out  STD_LOGIC;

           fill_mode_sel : out  STD_LOGIC;

           shift_en : out  STD_LOGIC;

           ALU_BIN_sel : out  STD_LOGIC;

           ALU_func : out  STD_LOGIC_VECTOR(3 DOWNTO 0);

           sel_16_immed : out  STD_LOGIC;

           li_sel : out  STD_LOGIC;

           MEM_WrEn : out  STD_LOGIC;

           sel_rfd_mask : out  STD_LOGIC;

           sel_mem_mask : out  STD_LOGIC);



end Control_unit;



architecture Behavioral of Control_unit is



---------------------|SIGNALS|------------------------

signal Opcode: STD_LOGIC_VECTOR (5 downto 0);
signal Func  : STD_LOGIC_VECTOR( 5 DOWNTO 0);



signal	signal_PC_sel  	   : STD_LOGIC;

signal   signal_PC_LdEn		   : STD_LOGIC;

signal   signal_RF_WrEn       : STD_LOGIC;

signal   signal_RF_WrData_sel : STD_LOGIC;

signal   signal_RF_B_sel      : STD_LOGIC;

signal   signal_fill_mode_sel : STD_LOGIC;

signal   signal_shift_en      : STD_LOGIC;

signal   signal_ALU_BIN_sel   : STD_LOGIC;

signal   signal_ALU_func	   : STD_LOGIC_VECTOR(3 downto 0);

signal   signal_sel_16_immed  : STD_LOGIC;

signal   signal_li_sel   	   : STD_LOGIC;

signal   signal_MEM_WrEn 	   : STD_LOGIC;

signal   signal_sel_rfd_mask  : STD_LOGIC;

signal   signal_sel_mem_mask  : STD_LOGIC;

------------------------------------------------------



begin

process (Instr,Rst) begin



	Opcode <= Instr(31 downto 26 );

	Func   <= Instr(5  downto 0  );

	
	
	IF Rst = '1' THEN
	
		--NOTHING
	
	
	
	ELSE


		case (Opcode) is 



			when "100000" =>		--ADD--SUB--AND--NOT--OR--SRA-SLL--SRL--ROL--ROR

			IF (Func="110000") THEN    --ADD

				

				signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				signal_RF_B_sel 		<= '0';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				signal_ALU_BIN_sel   <= '0';

				signal_ALU_func	   <= "0000";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

				

			ELSIF (Func="110001") THEN --SUB
			
			signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				signal_RF_B_sel 		<= '0';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				signal_ALU_BIN_sel   <= '0';

				signal_ALU_func	   <= "0001";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

				

			

			ELSIF (Func="110010") THEN --AND
			
			signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				signal_RF_B_sel 		<= '0';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				signal_ALU_BIN_sel   <= '0';

				signal_ALU_func	   <= "0010";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

				

			

			ELSIF (Func="110100") THEN --NOT
			
			   signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				--signal_ALU_BIN_sel   <= 'X';

				signal_ALU_func	   <= "0100";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

				

			

			ELSIF (Func="110011") THEN --OR
			
			   signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				signal_RF_B_sel 		<= '0';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				signal_ALU_BIN_sel   <= '0';

				signal_ALU_func	   <= "0011";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

				

			

			ELSIF (Func="111000") THEN --SRA
			
			   signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				--signal_ALU_BIN_sel   <= 'X';

				signal_ALU_func	   <= "1000";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

				

			

			ELSIF (Func="111001") THEN --SLL
			
			   signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				--signal_ALU_BIN_sel   <= 'X';

				signal_ALU_func	   <= "1010";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

			

			ELSIF (Func="111010") THEN --SRL
			
			   signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				--signal_ALU_BIN_sel   <= 'X';

				signal_ALU_func	   <= "1001";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

			

			ELSIF (Func="111100") THEN --ROL
			
			   signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				--signal_ALU_BIN_sel   <= 'X';

				signal_ALU_func	   <= "1101";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

			

			ELSIF (Func="111101") THEN --ROR
			
			signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				--signal_fill_mode_sel <= 'X'; --?

				--signal_shift_en      <= 'X'; --?

				--signal_ALU_BIN_sel   <= 'X';

				signal_ALU_func	   <= "1100";

				--signal_sel_16_immed  <= 'X'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

			

			END IF;

	

		when "111000" =>		--LI
		
		      signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0000";

				signal_sel_16_immed  <= '0'; --?

				signal_li_sel   	 	<= '0'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

	

	

		when "111001" =>		--LUI
		
		      signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '0'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0000";

				signal_sel_16_immed  <= '1'; --?

				signal_li_sel   	 	<= '0'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

		

		when "110000" =>		--ADDI
		
		       signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0000";

				signal_sel_16_immed  <= '0'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

		

		when "110010" =>		--ANDI
		
		 signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0010";

				signal_sel_16_immed  <= '0'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?
		
		

		

		when "110011" =>		--ORI
		
		signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '0';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0011";

				signal_sel_16_immed  <= '0'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

		

		when "111111" =>		--B
		
		      signal_RF_WrEn  <= '0';

            signal_PC_sel 	<= '0'; 

				signal_PC_LdEn	<= '1'; --?	     

				--signal_RF_WrData_sel <= 'x';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '1'; --?

				--signal_ALU_BIN_sel   <= 'x';

				--signal_ALU_func	   <= 'x';

				--signal_sel_16_immed  <= 'x'; --?

				--signal_li_sel   	 	<= 'x'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?

		

		when "010000" =>		--BEQ
		
		IF (Instr(25 DOWNTO 21) = Instr(20 DOWNTO 16) ) THEN
				
				signal_RF_WrEn  <= '0';

            signal_PC_sel 	<= '0'; 

				signal_PC_LdEn	<= '1'; --?	     

				--signal_RF_WrData_sel <= 'x';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '1'; --?

				--signal_ALU_BIN_sel   <= 'x';

				--signal_ALU_func	   <= 'x';

				--signal_sel_16_immed  <= 'x'; --?

				--signal_li_sel   	 	<= 'x'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?
		
		ELSE 
			
				signal_RF_WrEn  <= '0';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				--signal_RF_WrData_sel <= 'x';

				--signal_RF_B_sel 		<= 'X';  

				--signal_fill_mode_sel <= 'x'; --?

				--signal_shift_en      <= 'x'; --?

				--signal_ALU_BIN_sel   <= 'x';

				--signal_ALU_func	   <= 'x';

				--signal_sel_16_immed  <= 'x'; --?

				--signal_li_sel   	 	<= 'x'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?
				
				END IF;

		

		when "010001" =>		--BNE
		
		IF (  Instr(25 DOWNTO 21) /= Instr(20 DOWNTO 16)  ) THEN
				
				signal_RF_WrEn  <= '0';

            signal_PC_sel 	<= '0'; 

				signal_PC_LdEn	<= '1'; --?	     

				--signal_RF_WrData_sel <= 'x';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '1'; --?

				--signal_ALU_BIN_sel   <= 'x';

				--signal_ALU_func	   <= 'x';

				--signal_sel_16_immed  <= 'x'; --?

				--signal_li_sel   	 	<= 'x'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?
		
		ELSE 
				
				signal_RF_WrEn  <= '0';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				--signal_RF_WrData_sel <= 'x';

				--signal_RF_B_sel 		<= 'X';  

				--signal_fill_mode_sel <= 'x'; --?

				--signal_shift_en      <= 'x'; --?

				--signal_ALU_BIN_sel   <= 'x';

				--signal_ALU_func	   <= 'x';

				--signal_sel_16_immed  <= 'x'; --?

				--signal_li_sel   	 	<= 'x'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				--signal_sel_mem_mask  <= 'X'; --?
				
				END IF;

		

		when "000011" =>		--LB
		
				signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '1';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0000";

				signal_sel_16_immed  <= '0'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				signal_sel_mem_mask  <= '0'; --?

		

		when "000111" =>		--SB
		
				signal_RF_WrEn <= '0';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				--signal_RF_WrData_sel <= 'x';

				signal_RF_B_sel 		<= '1';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0000";

				signal_sel_16_immed  <= '0'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '1';

				signal_sel_rfd_mask	<= '0'; --?

				--signal_sel_mem_mask  <= 'x'; --?

		

		when "001111" =>		--LW
		
				signal_RF_WrEn <= '1';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				signal_RF_WrData_sel <= '1';

				--signal_RF_B_sel 		<= 'X';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0000";

				signal_sel_16_immed  <= '0'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '0';

				--signal_sel_rfd_mask	<= 'X'; --?

				signal_sel_mem_mask  <= '1'; --?

		

		when "011111" =>		--SW
		
				signal_RF_WrEn <= '0';

            signal_PC_sel 	<= '1'; 

				signal_PC_LdEn	<= '1'; --?	     

				--signal_RF_WrData_sel <= 'x';

				signal_RF_B_sel 		<= '1';  

				signal_fill_mode_sel <= '1'; --?

				signal_shift_en      <= '0'; --?

				signal_ALU_BIN_sel   <= '1';

				signal_ALU_func	   <= "0000";

				signal_sel_16_immed  <= '0'; --?

				signal_li_sel   	 	<= '1'; 

				signal_MEM_WrEn 	   <= '1';

				signal_sel_rfd_mask	<= '1'; --?

				--signal_sel_mem_mask  <= 'x'; --?
				
				when others=>
				--nothing

	

		end case;
		
		end IF;
		
	end process;
	

           PC_sel <= signal_PC_sel;

           PC_LdEn <= signal_PC_LdEn;

           RF_WrEn <= signal_RF_WrEn;

           RF_WrData_sel <= signal_RF_WrData_sel;

           RF_B_sel <= signal_RF_B_sel;

           fill_mode_sel <= signal_fill_mode_sel;

           shift_en <= signal_shift_en;

           ALU_BIN_sel <= signal_ALU_BIN_sel;

           ALU_func <= signal_ALU_func;

           sel_16_immed <= signal_sel_16_immed;

           li_sel <= signal_li_sel;

           MEM_WrEn <= signal_MEM_WrEn;

           sel_rfd_mask <= signal_sel_rfd_mask;

           sel_mem_mask <= signal_sel_mem_mask;
	

end Behavioral;
