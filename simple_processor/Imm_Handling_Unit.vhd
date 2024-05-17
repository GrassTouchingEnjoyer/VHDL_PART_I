----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:27 05/01/2024 
-- Design Name: 
-- Module Name:    Imm_Handling_Unit - Behavioral 
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

entity Imm_Handling_Unit is

Port(

Imm          : in  STD_LOGIC_VECTOR(16-1 DOWNTO 0) ;
fill_mode_sel : in  STD_LOGIC                       ;
shift_en     : in  STD_LOGIC                       ;
Imm32        : out STD_LOGIC_VECTOR(32-1 DOWNTO 0)

);

end Imm_Handling_Unit;

architecture Behavioral of Imm_Handling_Unit is

signal converter_output_signal: STD_LOGIC_VECTOR(32-1 DOWNTO 0);

---------------------------------------------------------------

component Immediate_to_32bit_Converter

PORT(

Imm16         : in STD_LOGIC_VECTOR(16-1 DOWNTO 0)  ;
fill_mode_sel  : in STD_LOGIC                        ; 
Imm32	        : out STD_LOGIC_VECTOR(32-1 DOWNTO 0) 

);

end component;


---------------------------------------------------------------


component shift_left2_unit

PORT(

a 		   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
shift_en : IN  STD_LOGIC                    ;
shift_out: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)

);

end component;

begin


Converter_16bit_to_32bit: Immediate_to_32bit_Converter 

PORT MAP(

Imm16 => Imm ,
fill_mode_sel => fill_mode_sel,
Imm32	=> converter_output_signal

);

sl2: shift_left2_unit

PORT MAP(

a => converter_output_signal,
shift_en => shift_en ,
shift_out => Imm32 

);


end Behavioral;
