----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:29 05/01/2024 
-- Design Name: 
-- Module Name:    Immediate_to_32bit_Converter - Behavioral 
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

entity Immediate_to_32bit_Converter is

PORT(

Imm16         : in STD_LOGIC_VECTOR(16-1 DOWNTO 0)  ;
fill_mode_sel  : in STD_LOGIC                        ; 
Imm32	        : out STD_LOGIC_VECTOR(32-1 DOWNTO 0) 

);

end Immediate_to_32bit_Converter;


architecture Behavioral of Immediate_to_32bit_Converter is

---------------------/Include signals/-----------------------------
signal output_signal : STD_LOGIC_VECTOR(32-1 DOWNTO 0) := (others => '0') ;
-------------------------------------------------------------------

begin

process(Imm16,fill_mode_sel)

begin

case fill_mode_sel is

when '0' =>--ZERO FILLING--
	output_signal <= std_logic_vector(resize(unsigned(Imm16),output_signal'length));
	
when '1' =>--SIGN EXTENSION--	
	output_signal <= std_logic_vector(resize(signed(Imm16),output_signal'length));
	
when others =>
	--nothing
	
end case;


end process;

Imm32	<= output_signal;


end Behavioral;
