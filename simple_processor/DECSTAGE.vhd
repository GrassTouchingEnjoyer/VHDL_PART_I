----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:20 05/01/2024 
-- Design Name: 
-- Module Name:    DECSTAGE - Behavioral 
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
library IEEE               ;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL   ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DECSTAGE is

Port(

Instr         : in STD_LOGIC_VECTOR(31 DOWNTO 0) ;
RF_WrEn       : in STD_LOGIC                     ;
ALU_out       : in STD_LOGIC_VECTOR(31 DOWNTO 0) ;
MEM_out       : in STD_LOGIC_VECTOR(31 DOWNTO 0) ;
RF_WrData_sel : in STD_LOGIC                     ;
RF_B_sel		  : in STD_LOGIC					       ;
Clk			  : in STD_LOGIC						    ;
Reset			  : in STD_LOGIC						    ;
fill_mode_sel : in STD_LOGIC                     ; -- fill_mode_sel and shift_en
shift_en      : in STD_LOGIC                     ; -- will be control signals later on
Immed			  : out STD_LOGIC_VECTOR(31 DOWNTO 0);
RF_A			  : out STD_LOGIC_VECTOR(31 DOWNTO 0);
RF_B		     : out STD_LOGIC_VECTOR(31 DOWNTO 0)

);

end DECSTAGE;

architecture Structural of DECSTAGE is

-------------------------|OPERAND SIGNAL|--------------------------------------------------------
signal operand_out_signal : STD_LOGIC_VECTOR(4 DOWNTO 0);

-------------------------|Register File Din signal - coming from the output of the 2x1 MUX|------------------------
signal rf_write_data_signal: STD_LOGIC_VECTOR(31 DOWNTO 0);

----------------------|MUX 2x1 - 5 bit - for choosing the right opperand|----------------------
component MUX_2x1_5bit

port(

a     : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
b     : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
sel   : IN  STD_LOGIC;
output: OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
);

end component;

----------------------|MUX 2x1 - 32 bit - choose between MEM and ALU output|----------------------

component MUX_2x1

port(

a     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
b     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
sel   : IN  STD_LOGIC;
output: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);

end component;


----------------------|Register File|-------------------------------

component RF

Port ( 	  Ard1  : in   STD_LOGIC_VECTOR(4  DOWNTO 0);
           Ard2  : in   STD_LOGIC_VECTOR(4  DOWNTO 0);
           Awr   : in   STD_LOGIC_VECTOR(4  DOWNTO 0);
           Din   : in   STD_LOGIC_VECTOR(31 DOWNTO 0);
           WrEn  : in   STD_LOGIC                    ;
           Clk   : in   STD_LOGIC                    ;
			  RST   : in   STD_LOGIC                    ;
           Dout1 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
           Dout2 : out  STD_LOGIC_VECTOR(31 DOWNTO 0)
			  );

end component;


-------------------------|Immediate Handling Unit|------------------------------

component Imm_Handling_Unit

Port(

Imm           : in  STD_LOGIC_VECTOR(16-1 DOWNTO 0) ;
fill_mode_sel : in  STD_LOGIC                       ;
shift_en      : in  STD_LOGIC                       ;
Imm32         : out STD_LOGIC_VECTOR(32-1 DOWNTO 0)

);

end component;

--------------------------------------------------------------------------------


begin

mux_choose_operand: MUX_2x1_5bit

PORT MAP(

a(4 DOWNTO 0) => Instr(15 DOWNTO 11),  
b(4 DOWNTO 0) => Instr(20 DOWNTO 16),   
sel           => RF_B_sel,	 
output        => operand_out_signal

);

Register_File: RF

PORT MAP(

Ard1(4 DOWNTO 0) => Instr(25 DOWNTO 21),  
Ard2(4 DOWNTO 0) => operand_out_signal   , 
Awr              => Instr(20 DOWNTO 16)  ,
Din              => rf_write_data_signal ,
WrEn             => RF_WrEn              , 
Clk              => Clk	                 ,
RST              => Reset                ,	
Dout1            => RF_A                 ,
Dout2            => RF_B


);

write_data_RF: MUX_2x1

PORT MAP(

a      => ALU_out,     
b      => MEM_out,    
sel    => RF_WrData_sel, 
output => rf_write_data_signal

);


immediate_conversion: Imm_Handling_Unit

PORT MAP(

Imm(16-1 DOWNTO 0) => Instr(16-1 DOWNTO 0),
fill_mode_sel => fill_mode_sel, 
shift_en => shift_en,
Imm32 => Immed

);

end Structural;
