----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:38 04/26/2024 
-- Design Name: 
-- Module Name:    Register_unit - Behavioral 
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

entity Register_unit is

    Port ( Clk : in  STD_LOGIC;
           RST : in STD_LOGIC;
			  WE : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end Register_unit;

architecture Behavioral of Register_unit is

----------------|SIGNALS|----------------------
signal Memory: STD_LOGIC_VECTOR (31 downto 0);
-----------------------------------------------

begin

	process(CLK, RST) begin
		
		IF rising_edge(CLK) THEN
			
			Memory <= Data;
			
			IF RST = '1' THEN
				
				Memory <= "00000000000000000000000000000000";
            
			ELSIF WE = '1' THEN
				
            Memory <= Data;
			
			ELSIF WE = '0' THEN
			
				Memory <= Memory;	
				
			END IF;
		 
		END IF;
				
		Dout <= Memory;
		
	end process;	
	
end Behavioral;