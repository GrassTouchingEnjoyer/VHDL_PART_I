----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:26:41 04/30/2024 
-- Design Name: 
-- Module Name:    Adder_Plus4 - Behavioral 
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

entity Adder_Plus4 is

port(
	a: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	plus_4_output: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);

end Adder_Plus4;

architecture Behavioral of Adder_Plus4 is

begin

plus_4_output <= std_logic_vector(unsigned(a) + 4);

end Behavioral;
