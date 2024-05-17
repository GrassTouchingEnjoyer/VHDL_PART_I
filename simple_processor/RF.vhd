----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:17 04/28/2024 
-- Design Name: 
-- Module Name:    RF - Behavioral 
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF is
    Port ( Ard1  : in   STD_LOGIC_VECTOR(4  DOWNTO 0);
           Ard2  : in   STD_LOGIC_VECTOR(4  DOWNTO 0);
           Awr   : in   STD_LOGIC_VECTOR(4  DOWNTO 0);
           Din   : in   STD_LOGIC_VECTOR(31 DOWNTO 0);
           WrEn  : in   STD_LOGIC                    ;
           Clk   : in   STD_LOGIC                    ;
			  RST   : in   STD_LOGIC                    ;
           Dout1 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
           Dout2 : out  STD_LOGIC_VECTOR(31 DOWNTO 0)
			  );
end RF;

architecture Structural of RF is

----------------------------|DECODER SIGNALS|--------------------------------------------
signal decoder_out0,decoder_out1,decoder_out2,decoder_out3,decoder_out4      : STD_LOGIC;
signal decoder_out5,decoder_out6,decoder_out7,decoder_out8,decoder_out9      : STD_LOGIC;
signal decoder_out10,decoder_out11,decoder_out12,decoder_out13,decoder_out14 : STD_LOGIC;
signal decoder_out15,decoder_out16,decoder_out17,decoder_out18,decoder_out19 : STD_LOGIC;
signal decoder_out20,decoder_out21,decoder_out22,decoder_out23,decoder_out24 : STD_LOGIC;
signal decoder_out25,decoder_out26,decoder_out27,decoder_out28,decoder_out29 : STD_LOGIC;
signal decoder_out30,decoder_out31                                           : STD_LOGIC;
----------------------------|AND-GATES 0-31 SIGNALS|--------------------------------------------------------------
signal and_out0,and_out1,and_out2,and_out3     :STD_LOGIC;
signal and_out4,and_out5,and_out6,and_out7     :STD_LOGIC;
signal and_out8,and_out9,and_out10,and_out11   :STD_LOGIC;
signal and_out12,and_out13,and_out14,and_out15 :STD_LOGIC;
signal and_out16,and_out17,and_out18,and_out19 :STD_LOGIC;
signal and_out20,and_out21,and_out22,and_out23 :STD_LOGIC;
signal and_out24,and_out25,and_out26,and_out27 :STD_LOGIC;
signal and_out28,and_out29,and_out30,and_out31 :STD_LOGIC;
----------------------------|REGISTERS 0-31 SIGNALS|--------------------------------------------------------------------------------------
signal reg_out0,reg_out1,reg_out2,reg_out3     :STD_LOGIC_VECTOR(31 DOWNTO 0);
signal reg_out4,reg_out5,reg_out6,reg_out7     :STD_LOGIC_VECTOR(31 DOWNTO 0);
signal reg_out8,reg_out9,reg_out10,reg_out11   :STD_LOGIC_VECTOR(31 DOWNTO 0);
signal reg_out12,reg_out13,reg_out14,reg_out15 :STD_LOGIC_VECTOR(31 DOWNTO 0);
signal reg_out16,reg_out17,reg_out18,reg_out19 :STD_LOGIC_VECTOR(31 DOWNTO 0);
signal reg_out20,reg_out21,reg_out22,reg_out23 :STD_LOGIC_VECTOR(31 DOWNTO 0);
signal reg_out24,reg_out25,reg_out26,reg_out27 :STD_LOGIC_VECTOR(31 DOWNTO 0);
signal reg_out28,reg_out29,reg_out30,reg_out31 :STD_LOGIC_VECTOR(31 DOWNTO 0);

component DECODER5x32

Port (  		Awr    : in  STD_LOGIC_VECTOR(4  DOWNTO 0) ;
			   Out0   : out STD_LOGIC;
				Out1   : out STD_LOGIC;
				Out2   : out STD_LOGIC;
				Out3   : out STD_LOGIC;
				Out4   : out STD_LOGIC;
				Out5   : out STD_LOGIC;
				Out6   : out STD_LOGIC;
				Out7   : out STD_LOGIC;
				Out8   : out STD_LOGIC;
				Out9   : out STD_LOGIC;
				Out10  : out STD_LOGIC;
				Out11  : out STD_LOGIC;
				Out12  : out STD_LOGIC;
				Out13  : out STD_LOGIC;
				Out14  : out STD_LOGIC;
				Out15  : out STD_LOGIC;
				Out16  : out STD_LOGIC;
				Out17  : out STD_LOGIC;
				Out18  : out STD_LOGIC;
				Out19  : out STD_LOGIC;
				Out20  : out STD_LOGIC;
				Out21  : out STD_LOGIC;
				Out22  : out STD_LOGIC;
				Out23  : out STD_LOGIC;
				Out24  : out STD_LOGIC;
				Out25  : out STD_LOGIC;
				Out26  : out STD_LOGIC;
				Out27  : out STD_LOGIC;
				Out28  : out STD_LOGIC;
				Out29  : out STD_LOGIC;
				Out30  : out STD_LOGIC;
				Out31  : out STD_LOGIC
				
			);

end component;


component AND_Gate

 Port ( a : in  STD_LOGIC;
        b : in  STD_LOGIC;
        z : out  STD_LOGIC  
		);


end component;



component Registers_0_to_31

  Port ( 
	 
			 Data   : in   STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Clk    : in   STD_LOGIC;
			 RST    : in   STD_LOGIC;
           
			 WE1    : in  STD_LOGIC;
			 WE2    : in  STD_LOGIC;
			 WE3    : in  STD_LOGIC;
			 WE4    : in  STD_LOGIC;
			 WE5    : in  STD_LOGIC;
			 WE6    : in  STD_LOGIC;
			 WE7    : in  STD_LOGIC;
			 WE8    : in  STD_LOGIC;
			 WE9    : in  STD_LOGIC;
			 WE10   : in  STD_LOGIC;
			 WE11   : in  STD_LOGIC;
			 WE12   : in  STD_LOGIC;
			 WE13   : in  STD_LOGIC;
			 WE14   : in  STD_LOGIC;
			 WE15   : in  STD_LOGIC;
			 WE16   : in  STD_LOGIC;
			 WE17   : in  STD_LOGIC;
			 WE18   : in  STD_LOGIC;
			 WE19   : in  STD_LOGIC;
			 WE20   : in  STD_LOGIC;
			 WE21   : in  STD_LOGIC;
			 WE22   : in  STD_LOGIC;
			 WE23   : in  STD_LOGIC;
			 WE24   : in  STD_LOGIC;
		    WE25   : in  STD_LOGIC;
		    WE26   : in  STD_LOGIC;
		    WE27   : in  STD_LOGIC;
		    WE28   : in  STD_LOGIC;
			 WE29   : in  STD_LOGIC;
			 WE30   : in  STD_LOGIC;
			 WE31   : in  STD_LOGIC;
			 WE32   : in  STD_LOGIC;
			  
          
          Dout1  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout2  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout3  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout4  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout5  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout6  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout7  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout8  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout9  : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout10 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout11 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout12 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout13 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout14 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout15 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout16 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout17 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout18 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout19 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout20 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout21 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout22 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout23 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout24 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout25 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout26 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout27 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout28 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout29 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout30 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout31 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
			 Dout32 : out  STD_LOGIC_VECTOR(31 DOWNTO 0)
			  
			  );
			  
	end component;
	
	
component MUX32x1
	
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

end component;


begin

decoder: DECODER5x32

PORT MAP	(

Awr   => Awr,
Out0  => decoder_out0,
Out1  => decoder_out1,
Out2  => decoder_out2,
Out3  => decoder_out3,
Out4  => decoder_out4,
Out5  => decoder_out5,
Out6  => decoder_out6,
Out7  => decoder_out7,
Out8  => decoder_out8,
Out9  => decoder_out9,
Out10 => decoder_out10,
Out11 => decoder_out11,
Out12 => decoder_out12,
Out13 => decoder_out13,
Out14 => decoder_out14,
Out15 => decoder_out15,
Out16 => decoder_out16,
Out17 => decoder_out17,
Out18 => decoder_out18,
Out19 => decoder_out19,
Out20 => decoder_out20,
Out21 => decoder_out21,
Out22 => decoder_out22,
Out23 => decoder_out23,
Out24 => decoder_out24,
Out25 => decoder_out25,
Out26 => decoder_out26,
Out27 => decoder_out27,
Out28 => decoder_out28,
Out29 => decoder_out29,
Out30 => decoder_out30,
Out31 => decoder_out31

);


--------------------|AND 0|----------------------

and_gate_0: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out0,
z => and_out0
);

--------------------|AND 1|----------------------

and_gate_1: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out1,
z => and_out1
);

--------------------|AND 2|----------------------

and_gate_2: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out2,
z => and_out2
);

--------------------|AND 3|----------------------

and_gate_3: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out3,
z => and_out3
);

--------------------|AND 4|----------------------

and_gate_4: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out4,
z => and_out4
);

--------------------|AND 5|----------------------

and_gate_5: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out5,
z => and_out5
);

--------------------|AND 6|----------------------

and_gate_6: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out6,
z => and_out6
);

--------------------|AND 7|----------------------

and_gate_7: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out7,
z => and_out7
);

--------------------|AND 8|----------------------

and_gate_8: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out8,
z => and_out8
);

--------------------|AND 9|----------------------

and_gate_9: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out9,
z => and_out9
);

--------------------|AND 10|----------------------

and_gate_10: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out10,
z => and_out10
);

--------------------|AND 11|----------------------

and_gate_11: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out11,
z => and_out11
);

--------------------|AND 12|----------------------

and_gate_12: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out12,
z => and_out12
);

--------------------|AND 13|----------------------

and_gate_13: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out13,
z => and_out13
);

--------------------|AND 14|----------------------

and_gate_14: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out14,
z => and_out14
);

--------------------|AND 15|----------------------

and_gate_15: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out15,
z => and_out15
);

--------------------|AND 16|----------------------

and_gate_16: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out16,
z => and_out16
);

--------------------|AND 17|----------------------

and_gate_17: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out17,
z => and_out17
);

--------------------|AND 18|----------------------

and_gate_18: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out18,
z => and_out18
);

--------------------|AND 19|----------------------

and_gate_19: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out19,
z => and_out19
);

--------------------|AND 20|----------------------

and_gate_20: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out20,
z => and_out20
);

--------------------|AND 21|----------------------

and_gate_21: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out21,
z => and_out21
);

--------------------|AND 22|----------------------

and_gate_22: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out22,
z => and_out22
);

--------------------|AND 23|----------------------

and_gate_23: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out23,
z => and_out23
);

--------------------|AND 24|----------------------

and_gate_24: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out24,
z => and_out24
);

--------------------|AND 25|----------------------

and_gate_25: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out25,
z => and_out25
);

--------------------|AND 26|----------------------

and_gate_26: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out26,
z => and_out26
);

--------------------|AND 27|----------------------

and_gate_27: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out27,
z => and_out27
);



--------------------|AND 28|----------------------

and_gate_28: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out28,
z => and_out28
);



--------------------|AND 29|----------------------

and_gate_29: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out29,
z => and_out29
);



--------------------|AND 30|----------------------

and_gate_30: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out30,
z => and_out30
);



--------------------|AND 31|----------------------

and_gate_31: AND_Gate

PORT MAP(
a => WrEn,
b => decoder_out31,
z => and_out31
);




----------------------------------------------------

registers: Registers_0_to_31

PORT MAP (

Data  => Din,
Clk   => Clk,
RST   => RST,
WE1   => and_out0,
WE2   => and_out1,
WE3   => and_out2,
WE4   => and_out3,
WE5   => and_out4,
WE6   => and_out5,
WE7   => and_out6,
WE8   => and_out7,
WE9   => and_out8,
WE10  => and_out9,
WE11  => and_out10,
WE12  => and_out11,
WE13  => and_out12,
WE14  => and_out13,
WE15  => and_out14,
WE16  => and_out15,
WE17  => and_out16,
WE18  => and_out17,
WE19  => and_out18,
WE20  => and_out19,
WE21  => and_out20,
WE22  => and_out21,
WE23  => and_out22,
WE24  => and_out23,
WE25  => and_out24,
WE26  => and_out25,
WE27  => and_out26,
WE28  => and_out27,
WE29  => and_out28,
WE30  => and_out29,
WE31  => and_out30,
WE32  => and_out31,

Dout1  => reg_out0,
Dout2  => reg_out1,
Dout3  => reg_out2,
Dout4  => reg_out3,
Dout5  => reg_out4,
Dout6  => reg_out5,
Dout7  => reg_out6,
Dout8  => reg_out7,
Dout9  => reg_out8,
Dout10 => reg_out9,
Dout11 => reg_out10,
Dout12 => reg_out11,
Dout13 => reg_out12,
Dout14 => reg_out13,
Dout15 => reg_out14,
Dout16 => reg_out15,
Dout17 => reg_out16,
Dout18 => reg_out17,
Dout19 => reg_out18,
Dout20 => reg_out19,
Dout21 => reg_out20,
Dout22 => reg_out21,
Dout23 => reg_out22,
Dout24 => reg_out23,
Dout25 => reg_out24,
Dout26 => reg_out25,
Dout27 => reg_out26,
Dout28 => reg_out27,
Dout29 => reg_out28,
Dout30 => reg_out29,
Dout31 => reg_out30,
Dout32 => reg_out31

);

---------------------|MUX 1|-----------------------------------

mux1: MUX32x1

PORT MAP(

sel     => Ard1    ,
Data0   => reg_out0,
Data1   => reg_out1,
Data2   => reg_out2,
Data3   => reg_out3,
Data4   => reg_out4,
Data5   => reg_out5,
Data6   => reg_out6,
Data7   => reg_out7,
Data8   => reg_out8,
Data9   => reg_out9,
Data10  => reg_out10,
Data11  => reg_out11,
Data12  => reg_out12,
Data13  => reg_out13,
Data14  => reg_out14,
Data15  => reg_out15,
Data16  => reg_out16,
Data17  => reg_out17,
Data18  => reg_out18,
Data19  => reg_out19,
Data20  => reg_out20,
Data21  => reg_out21,
Data22  => reg_out22,
Data23  => reg_out23,
Data24  => reg_out24,
Data25  => reg_out25,
Data26  => reg_out26,
Data27  => reg_out27,
Data28  => reg_out28,
Data29  => reg_out29,
Data30  => reg_out30,
Data31  => reg_out31,
output  => Dout1

);

-----------------------------|MUX 2|-------------------------------------

mux2: MUX32x1

PORT MAP(

sel     => Ard2    ,
Data0   => reg_out0,
Data1   => reg_out1,
Data2   => reg_out2,
Data3   => reg_out3,
Data4   => reg_out4,
Data5   => reg_out5,
Data6   => reg_out6,
Data7   => reg_out7,
Data8   => reg_out8,
Data9   => reg_out9,
Data10  => reg_out10,
Data11  => reg_out11,
Data12  => reg_out12,
Data13  => reg_out13,
Data14  => reg_out14,
Data15  => reg_out15,
Data16  => reg_out16,
Data17  => reg_out17,
Data18  => reg_out18,
Data19  => reg_out19,
Data20  => reg_out20,
Data21  => reg_out21,
Data22  => reg_out22,
Data23  => reg_out23,
Data24  => reg_out24,
Data25  => reg_out25,
Data26  => reg_out26,
Data27  => reg_out27,
Data28  => reg_out28,
Data29  => reg_out29,
Data30  => reg_out30,
Data31  => reg_out31,
output  => Dout2

);




end Structural;
