----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:06:26 04/30/2024 
-- Design Name: 
-- Module Name:    MUX_2x1 - Behavioral 
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

entity MUX_2x1 is

port(

a     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
b     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
sel   : IN  STD_LOGIC;
output: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);


end MUX_2x1;

architecture Behavioral of MUX_2x1 is

signal output_signal: STD_LOGIC_VECTOR (31 DOWNTO 0);

begin

process(a,b,sel)

begin

case sel is

--------------------|SELECT = 0|----------------------------------------------------------------

when '0' =>
output_signal <= a;

--------------------|SELECT = 1|----------------------------------------------------------------

when '1' =>
output_signal <= b; 

when others =>
----nothing

end case;
	end process;

output <= output_signal;

end Behavioral;
