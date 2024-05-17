----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:25:36 04/29/2024 
-- Design Name: 
-- Module Name:    MUX32x1 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX32x1 is

Port(

sel   : IN  STD_LOGIC_VECTOR(4  DOWNTO 0) ; 
Data0 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data1 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data2 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data3 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data4 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data5 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data6 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data7 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data8 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data9 : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data10: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data11: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data12: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data13: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data14: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data15: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data16: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data17: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data18: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data19: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data20: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data21: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data22: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data23: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data24: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data25: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data26: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data27: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data28: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data29: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data30: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
Data31: IN  STD_LOGIC_VECTOR(31 DOWNTO 0) ;
output: OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 

);

end MUX32x1;

architecture Behavioral of MUX32x1 is

signal output_signal: STD_LOGIC_VECTOR (31 DOWNTO 0);

begin

process(sel,
Data0,Data1,Data2,Data3,Data4,Data5,Data6,Data7,
Data8,Data9,Data10,Data11,Data12,Data13,Data14,Data15,
Data16,Data17,Data18,Data19,Data20,Data21,Data22,Data23,
Data24,Data25,Data26,Data27,Data28,Data29,Data30,Data31)

begin

case sel is


------------------|SELECT = 0|---------------------------------

when "00000" =>

		output_signal <= Data0;
		
		
------------------|SELECT = 1|---------------------------------

when "00001" =>

		output_signal <= Data1;

------------------|SELECT = 2|---------------------------------

when "00010" =>

		output_signal <= Data2;

------------------|SELECT = 3|---------------------------------

when "00011" =>

		output_signal <= Data3;

------------------|SELECT = 4|---------------------------------

when "00100" =>

		output_signal <= Data4;

------------------|SELECT = 5|---------------------------------

when "00101" =>

		output_signal <= Data5;

------------------|SELECT = 6|---------------------------------

when "00110" =>

		output_signal <= Data6;

------------------|SELECT = 7|---------------------------------

when "00111" =>

		output_signal <= Data7;

------------------|SELECT = 8|---------------------------------

when "01000" =>

		output_signal <= Data8;

------------------|SELECT = 9|---------------------------------

when "01001" =>

		output_signal <= Data9;

------------------|SELECT = 10|---------------------------------

when "01010" =>

		output_signal <= Data10;

------------------|SELECT = 11|---------------------------------

when "01011" =>

		output_signal <= Data11;

------------------|SELECT = 12|---------------------------------

when "01100" =>

		output_signal <= Data12;

------------------|SELECT = 13|---------------------------------

when "01101" =>

		output_signal <= Data13;

------------------|SELECT = 14|---------------------------------

when "01110" =>

		output_signal <= Data14;

------------------|SELECT = 15|---------------------------------

when "01111" =>

		output_signal <= Data15;
		
------------------|SELECT = 16|---------------------------------

when "10000" =>

		output_signal <= Data16;

------------------|SELECT = 17|---------------------------------

when "10001" =>

		output_signal <= Data17;

------------------|SELECT = 18|---------------------------------

when "10010" =>

		output_signal <= Data18;

------------------|SELECT = 19|---------------------------------

when "10011" =>

		output_signal <= Data19;

------------------|SELECT = 20|---------------------------------

when "10100" =>

		output_signal <= Data20;

------------------|SELECT = 21|---------------------------------

when "10101" =>

		output_signal <= Data21;

------------------|SELECT = 22|---------------------------------

when "10110" =>

		output_signal <= Data22;

------------------|SELECT = 23|---------------------------------

when "10111" =>

		output_signal <= Data23;

------------------|SELECT = 24|---------------------------------

when "11000" =>

		output_signal <= Data24;

------------------|SELECT = 25|---------------------------------

when "11001" =>

		output_signal <= Data25;

------------------|SELECT = 26|---------------------------------

when "11010" =>

		output_signal <= Data26;

------------------|SELECT = 27|---------------------------------

when "11011" =>

		output_signal <= Data27;

------------------|SELECT = 28|---------------------------------

when "11100" =>

		output_signal <= Data28;

------------------|SELECT = 29|---------------------------------

when "11101" =>

		output_signal <= Data29;

------------------|SELECT = 30|---------------------------------

when "11110" =>

		output_signal <= Data30;
		
------------------|SELECT = 31|---------------------------------

when "11111" =>

		output_signal <= Data31;
		
----------------------------------------------------------------

when others =>

--nothing

	end case;

		end process;
	
	   output <= output_signal;

			end Behavioral;
