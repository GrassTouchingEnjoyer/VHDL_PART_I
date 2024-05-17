----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:27:15 04/30/2024 
-- Design Name: 
-- Module Name:    IFSTAGE - Behavioral 
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

entity IFSTAGE is

Port(
		PC_Immed: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		PC_sel  : IN  STD_LOGIC;
		PC_LdEn : IN  STD_LOGIC;
		RST     : IN  STD_LOGIC;
		CLK     : IN  STD_LOGIC;
		Instr   : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)

);


end IFSTAGE;

architecture Structural of IFSTAGE is

signal mux_out_signal  : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal pc_out_signal   : STD_LOGIC_VECTOR(31 DOWNTO 0); 
signal add4_out_signal : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal adder_out_signal: STD_LOGIC_VECTOR(31 DOWNTO 0);


----------------------|MUX 2x1|----------------------
component MUX_2x1

Port(
a     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
b     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
sel   : IN  STD_LOGIC;
output: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);

end component;

-----------------------|PROGRAM COUNTER|----------------------------------

component Register_unit

 Port (    Clk : in  STD_LOGIC;
           RST : in STD_LOGIC;
			  WE : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));

end component;

-----------------------|Adder_Plus4|----------------------------------
component Adder_Plus4

Port( 	a: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			plus_4_output: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));

end component;

-----------------------|Adder|----------------------------------
component Adder

PORT(

a      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
b      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)

);

end component;

-------------------|Instruction Register|----------------------------------------------

component Instruction_Register

PORT (
    a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC;
    spo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
end component;


begin

mux: MUX_2x1

PORT MAP(

sel => PC_sel,
a => adder_out_signal,
b => add4_out_signal,
output => mux_out_signal


);

PC: Register_unit

PORT MAP (

Clk => CLK,
RST => RST,
WE => PC_LdEn,
Data => mux_out_signal,
Dout => pc_out_signal
);


add4: Adder_Plus4

PORT MAP(

a => pc_out_signal,
plus_4_output => add4_out_signal

);

add_immediate: Adder

PORT MAP(

a => PC_Immed,   
b => add4_out_signal,    
output => adder_out_signal

);

IR: Instruction_Register

PORT MAP(

a(9 DOWNTO 0) => pc_out_signal(11 DOWNTO 2),
clk => CLK ,
spo => Instr  


);





end Structural;
