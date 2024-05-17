----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:50:48 04/21/2024 
-- Design Name: 
-- Module Name:    ALU_unit - Behavioral 
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_unit is
    
	 Port (  
			  A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Op : in  STD_LOGIC_VECTOR (3 downto 0);
           Outt : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
           Ovf : out  STD_LOGIC
			  
			 );
					  
end ALU_unit;

architecture Behavioral of ALU_unit is					  -- PROCESS -|FINISHED|

---------------------|SIGNALS|-------------------------
signal Result_signal: STD_LOGIC_VECTOR (31 downto 0);
signal Overflow_signal: STD_LOGIC;
signal Zero_signal: STD_LOGIC;
signal Cout_signal: STD_LOGIC;

---------|---------------------------------------------
 begin --|
---------|

process(Op,A,B) begin 

		case (Op) is
		
			----------------------------------------------------------------------------------|ADD|
			when "0000" => 
			---------------		
				Result_signal <= std_logic_vector(signed(A) + signed(B));	
			
				
				IF (signed(A) + signed(B)= "00000000000000000000000000000000") THEN 	-- Zero check
											
					Zero_signal <= '1';
				
				ELSE 
				
					Zero_signal <= '0';
			
				END IF;
			
				-----------------------------------------------------------------------------------|
				-- sign check for overflow, since ovf happens in calculations with same sign 
				-- only check these possibilities.
				
				IF ((A(31)= '0' AND B(31) = '0')AND Result_signal(31) = '1') THEN	    -- check for positive
				
						Overflow_signal <= '1';
						Cout_signal <= '0';
			
				
				ELSIF ((A(31)= '1' AND B(31) = '1')AND Result_signal(31) = '0') THEN  -- check for negative
				
						Overflow_signal <= '1';
						Cout_signal <= '1';
				
				ELSE																						 -- else no overflow
			
						Overflow_signal <= '0';		
						Cout_signal <= '0';						
					
				END IF;
			------------------------------------------------------------------------------------|
			
			
			
			
			
			
			-------------------------------------------------------------|SUB|
			when "0001" =>
			---------------
			
				Result_signal <= std_logic_vector(signed(A) - signed(B));		
				--------------------------------------------------------------------|
				IF (signed(A) - signed(B) = "00000000000000000000000000000000") THEN -- Zero check
											
					Zero_signal <= '1';
					Overflow_signal <= '0';
					Cout_signal <= '0';
				
				ELSE 
				
					Zero_signal <= '0';
					Overflow_signal <= '0';
					Cout_signal <= '0';
			
				END IF;	
				--------------------------------------------------------------------|
		
		
		
		
			
			
	
			----------------------------------------------------------------------------------------|AND|
			when "0010" =>
			---------------
			
				Result_signal <= A AND B;
				
				Overflow_signal <= '0';
				Cout_signal <= '0';
				
				IF((A(31 downto 0) AND B(31 downto 0)) ="00000000000000000000000000000000") THEN --zero check
					
					Zero_signal <= '1';
					
				ELSE 
					
					Zero_signal <= '0';
					
				END IF;
			---------------------------------------------------------------------------------------
			
			
			
			
			
	
			----------------------------------------------------------------------------------|OR|
			when "0011" =>
			---------------
			
				Result_signal <= A OR B;
				
				Overflow_signal <= '0';
				Cout_signal <= '0';
				
				IF((A(31 downto 0) OR B(31 downto 0)) ="00000000000000000000000000000000") THEN --zero check
					
					Zero_signal <= '1';
					
				ELSE 
					
					Zero_signal <= '0';
					
				END IF;
			--------------------------------------------------------------------------------------
			
			
			
			
		
			-------------------------------------------------------------------|NOT|
			when "0100" =>
			---------------
			
				Result_signal <= NOT A;
				
				Overflow_signal <= '0';
				Cout_signal <= '0';
				
				IF(NOT A(31 downto 0)="00000000000000000000000000000000") THEN -- zero check
					
					Zero_signal <= '1';
					
				ELSE 
					
					Zero_signal <= '0';
					
				END IF;
			--------------------------------------------------------------------
			
			
			
			
					
			-------------------------------------------------------------|Shift-MSB-right|
			when "1000" =>
			---------------
					
				Result_signal(30 downto 0) <= A(31 downto 1);
			
				Result_signal(31) <= A(31);
				
				Zero_signal <= '0';
				Overflow_signal <= '0';
				Cout_signal <= '0';
				
				IF(A(31 downto 0)="00000000000000000000000000000000") THEN -- zero check
					
					Zero_signal <= '1';
					
				ELSE 
					
					Zero_signal <= '0';
					
				END IF;
			-------------------------------------------------------------
			
			
			
			
					
			-------------------------------------------------------------|SR0|
			when "1001" =>
			---------------
			
				Result_signal(30 downto 0) <= A(31 downto 1);	

				Zero_signal <= '0';
				Overflow_signal <= '0';
				Cout_signal <= '0';				
				
				IF(A(31 downto 0)="00000000000000000000000000000001") THEN -- zero check
					
					Zero_signal <= '1';
					
				ELSE 
					
					Zero_signal <= '0';
					
				END IF;
			-------------------------------------------------------------
			
			
			
			
					
			-------------------------------------------------------------|SL0|
			when "1010" =>
			---------------
			
				Result_signal(31 downto 1) <= A(30 downto 0);
				
				Zero_signal <= '0';
				Overflow_signal <= '0';
				Cout_signal <= '0';
				
				IF(A(31 downto 0)="10000000000000000000000000000000") THEN -- zero check
					
					Zero_signal <= '1';
					
				ELSE 
					
					Zero_signal <= '0';
					
				END IF;
			-------------------------------------------------------------
			
			
					
			
			-------------------------------------------------------------|Rotate-right|
			when "1100" =>
			---------------
			
				Result_signal(31 downto 1) <= A(30 downto 0);
				
				Result_signal(0) <= A(31);	
				
				Zero_signal <= '0';
				Overflow_signal <= '0';
				Cout_signal <= '0';
				
				IF(A(31 downto 0)="00000000000000000000000000000000") THEN -- zero check
					
					Zero_signal <= '1';
					
				ELSE 
					
					Zero_signal <= '0';
					
				END IF;
			-------------------------------------------------------------
			
			
			
			
			-------------------------------------------------------------|Rotate-left|
			when "1101" =>
			---------------
			
				Result_signal(30 downto 0) <= A(31 downto 1);
				
				Result_signal(31) <= A(0);	
				
				Zero_signal <= '0';
				Overflow_signal <= '0';
				Cout_signal <= '0';
				
				IF(A(31 downto 0)="00000000000000000000000000000000") THEN -- zero check
					
					Zero_signal <= '1';
					
				ELSE 
					
					Zero_signal <= '0';
					
				END IF;
			-------------------------------------------------------------
			
			
			
			
			-------------------------------------------------------------|default|
			when others =>
			---------------
			
				Result_signal <= "00000000000000000000000000000000";
				Zero_signal <= '0';
				Overflow_signal <= '0';
				Cout_signal <= '0';
			-------------------------------------------------------------
		
		
		end case;
	

	end process;

	Outt <= Result_signal;
	Ovf <= Overflow_signal;
	Zero <= Zero_signal;
	Cout <= Cout_signal;
	
end Behavioral;