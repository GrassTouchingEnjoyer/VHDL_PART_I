----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:46:28 05/03/2024 
-- Design Name: 
-- Module Name:    EXECSTAGE - Behavioral 
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

entity EXECSTAGE is

PORT(

	RF_A         : in  STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
	RF_B         : in  STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
	Immed        : in  STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
	sel_16_immed : in STD_LOGIC                         ;
	li_sel       : in STD_LOGIC                         ;
	ALU_BIN_sel  : in  STD_LOGIC                        ;
	ALU_func     : in  STD_LOGIC_VECTOR(4-1  DOWNTO 0 ) ;
	ALU_out 	    : out STD_LOGIC_VECTOR(32-1 DOWNTO 0 )
);


end EXECSTAGE;

architecture Structural of EXECSTAGE is

signal mux_output_signal : STD_LOGIC_VECTOR(32-1 DOWNTO 0);
signal sl_16_out_signal  : STD_LOGIC_VECTOR(32-1 DOWNTO 0);
signal mask_out_signal   : STD_LOGIC_VECTOR(32-1 DOWNTO 0);
signal r0_selector_signal: STD_LOGIC_VECTOR(32-1 DOWNTO 0);



-----------------|SHIFT LEFT 16 UNIT|---------------------

component shift_left16_unit

PORT(

a 		   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
shift_en : IN  STD_LOGIC                    ;
shift_out: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)

);

end component;



--------------|MUX 2x1 - choose between RF_B or Immediate|-----------

component MUX_2x1

Port(

a     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
b     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
sel   : IN  STD_LOGIC;
output: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);

end component;


---------------------|ALU unit|--------------------------

component ALU_unit

 Port (  
			  A    : in   STD_LOGIC_VECTOR (31 downto 0 ) ;
           B    : in   STD_LOGIC_VECTOR (31 downto 0 ) ;
           Op   : in   STD_LOGIC_VECTOR (3  downto 0 ) ;
           Outt : out  STD_LOGIC_VECTOR (31 downto 0 ) ;
           Zero : out  STD_LOGIC                       ;
           Cout : out  STD_LOGIC                       ;
           Ovf  : out  STD_LOGIC
			  
			 );

end component;


-------------------------REGISTER 0 MASK---------------------------
component and_mask_R0

PORT(
a       : in STD_LOGIC_VECTOR(32-1 DOWNTO 0);
mask_out: out STD_LOGIC_VECTOR(32-1 DOWNTO 0)
);

end component;

--------------------------------------------------------------------
begin

mask_r0: and_mask_R0

PORT MAP(

a       => RF_A,
mask_out=> mask_out_signal

);

r0_selector: MUX_2x1

PORT MAP(

a      => mask_out_signal,
b      => RF_A,
sel    => li_sel,
output => r0_selector_signal

);





sl_16_immediate: shift_left16_unit

PORT MAP(

a         => Immed,
shift_en  => sel_16_immed,
shift_out => sl_16_out_signal

);


rfb_or_immediate: MUX_2x1

PORT MAP(

a      => RF_B              ,  
b      => sl_16_out_signal  ,      
sel    => ALU_BIN_sel       ,  
output => mux_output_signal

);


alu: ALU_unit

PORT MAP(

A =>    r0_selector_signal ,    
B =>    mux_output_signal  ,    
Op =>   ALU_func           ,   
Outt => ALU_out
--Zero 
--Cout 
--Ovf  
);


end Structural;

