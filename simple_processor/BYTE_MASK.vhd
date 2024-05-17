----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:55:55 05/04/2024 
-- Design Name: 
-- Module Name:    BYTE_MASK - Behavioral 
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

entity BYTE_MASK is

PORT(

a        : in  STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
mask_out : out STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) 

);

end BYTE_MASK;

architecture Behavioral of BYTE_MASK is

begin

mask_out <= a AND B"0000_0000_0000_0000_0000_0000_11111111";


end Behavioral;

