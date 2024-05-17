----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:46:42 04/28/2024 
-- Design Name: 
-- Module Name:    Registers_0_to_31 - Behavioral 
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

entity Registers_0_to_31 is
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
			  
end Registers_0_to_31;

architecture Structural of Registers_0_to_31 is


component Register_unit

Port ( Clk    : in  STD_LOGIC;
       RST    : in  STD_LOGIC;
		 WE     : in  STD_LOGIC;
       Data   : in  STD_LOGIC_VECTOR (31 downto 0);
       Dout   : out STD_LOGIC_VECTOR (31 downto 0)
		 );
end component;


begin


--------------|Register 1|---------------------------------

r1: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE1, 
   Data => Data,
   Dout => Dout1

);

--------------|Register 2|---------------------------------

r2: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE2, 
   Data => Data,
   Dout => Dout2

);


--------------|Register 3|---------------------------------

r3: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE3, 
   Data => Data,
   Dout => Dout3

);

--------------|Register 4|---------------------------------

r4: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE4, 
   Data => Data,
   Dout => Dout4

);

--------------|Register 5|---------------------------------

r5: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE5, 
   Data => Data,
   Dout => Dout5

);

--------------|Register 6|---------------------------------

r6: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE6, 
   Data => Data,
   Dout => Dout6

);

--------------|Register 7|---------------------------------

r7: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE7, 
   Data => Data,
   Dout => Dout7

);

--------------|Register 8|---------------------------------

r8: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE8, 
   Data => Data,
   Dout => Dout8

);

--------------|Register 9|---------------------------------

r9: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE9, 
   Data => Data,
   Dout => Dout9

);


--------------|Register 10|---------------------------------

r10: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE10, 
   Data => Data,
   Dout => Dout10

);

--------------|Register 11|---------------------------------

r11: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE11, 
   Data => Data,
   Dout => Dout11

);

--------------|Register 12|---------------------------------

r12: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE12, 
   Data => Data,
   Dout => Dout12

);

--------------|Register 13|---------------------------------

r13: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE13, 
   Data => Data,
   Dout => Dout13

);


--------------|Register 14|---------------------------------

r14: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE14, 
   Data => Data,
   Dout => Dout14

);


--------------|Register 15|---------------------------------

r15: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE15, 
   Data => Data,
   Dout => Dout15

);


--------------|Register 16|---------------------------------

r16: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE16, 
   Data => Data,
   Dout => Dout16

);


--------------|Register 17|---------------------------------

r17: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE17, 
   Data => Data,
   Dout => Dout17

);


--------------|Register 18|---------------------------------

r18: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE18, 
   Data => Data,
   Dout => Dout18

);


--------------|Register 19|---------------------------------

r19: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE19, 
   Data => Data,
   Dout => Dout19

);


--------------|Register 20|---------------------------------

r20: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE20, 
   Data => Data,
   Dout => Dout20

);

--------------|Register 21|---------------------------------

r21: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE21, 
   Data => Data,
   Dout => Dout21

);

--------------|Register 22|---------------------------------

r22: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE22, 
   Data => Data,
   Dout => Dout22

);

--------------|Register 23|---------------------------------

r23: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE23, 
   Data => Data,
   Dout => Dout23

);

--------------|Register 24|---------------------------------

r24: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE24, 
   Data => Data,
   Dout => Dout24

);

--------------|Register 25|---------------------------------

r25: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE25, 
   Data => Data,
   Dout => Dout25

);

--------------|Register 26|---------------------------------

r26: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE26, 
   Data => Data,
   Dout => Dout26
	

);

--------------|Register 27|---------------------------------

r27: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE27, 
   Data => Data,
   Dout => Dout27

);


--------------|Register 28|---------------------------------

r28: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE28, 
   Data => Data,
   Dout => Dout28

);

--------------|Register 29|---------------------------------

r29: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE29, 
   Data => Data,
   Dout => Dout29

);

--------------|Register 30|---------------------------------

r30: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE30, 
   Data => Data,
   Dout => Dout30

);

--------------|Register 31|---------------------------------

r31: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE31, 
   Data => Data,
   Dout => Dout31

);

--------------|Register 32|---------------------------------

r32: Register_unit

PORT MAP	
(
	Clk  => Clk,
   RST  => RST, 
   WE   => WE32, 
   Data => Data,
   Dout => Dout32

);



end Structural;
