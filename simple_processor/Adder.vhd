----------------------------------------------------------------------------------
-- Company 
-- Engineer 
-- 
-- Create Date    210715 04302024 
-- Design Name 
-- Module Name    Adder - Behavioral 
-- Project Name 
-- Target Devices 
-- Tool versions 
-- Description 
--
-- Dependencies 
--
-- Revision 
-- Revision 0.01 - File Created
-- Additional Comments 
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

entity Adder is

PORT(

	a:       IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
	b:       IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
	output:  OUT STD_LOGIC_VECTOR(31 DOWNTO 0)

);

	end Adder;

	architecture Behavioral of Adder is

begin

	output <= std_logic_vector(unsigned(a) + unsigned(b));


end Behavioral;