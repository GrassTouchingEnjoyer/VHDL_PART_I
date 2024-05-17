----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:59:36 04/26/2024 
-- Design Name: 
-- Module Name:    DECODER5x32 - Behavioral 
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

entity DECODER5x32 is
    Port (  Awr    : in  STD_LOGIC_VECTOR(4  DOWNTO 0) ;
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
			
end DECODER5x32;

architecture Behavioral of DECODER5x32 is

signal output_signal0 : STD_LOGIC;
signal output_signal1 : STD_LOGIC;
signal output_signal2 : STD_LOGIC;
signal output_signal3 : STD_LOGIC;
signal output_signal4 : STD_LOGIC;
signal output_signal5 : STD_LOGIC;
signal output_signal6 : STD_LOGIC;
signal output_signal7 : STD_LOGIC;
signal output_signal8 : STD_LOGIC;
signal output_signal9: STD_LOGIC;
signal output_signal10: STD_LOGIC;
signal output_signal11: STD_LOGIC;
signal output_signal12: STD_LOGIC;
signal output_signal13: STD_LOGIC;
signal output_signal14: STD_LOGIC;
signal output_signal15: STD_LOGIC;
signal output_signal16: STD_LOGIC;
signal output_signal17: STD_LOGIC;
signal output_signal18: STD_LOGIC;
signal output_signal19: STD_LOGIC;
signal output_signal20: STD_LOGIC;
signal output_signal21: STD_LOGIC;
signal output_signal22: STD_LOGIC;
signal output_signal23: STD_LOGIC;
signal output_signal24: STD_LOGIC;
signal output_signal25: STD_LOGIC;
signal output_signal26: STD_LOGIC;
signal output_signal27: STD_LOGIC;
signal output_signal28: STD_LOGIC;
signal output_signal29: STD_LOGIC;
signal output_signal30: STD_LOGIC;
signal output_signal31: STD_LOGIC;

begin

process(Awr)

begin

case Awr is

when "00000" => --0
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0'; 

when "00001" => --1
output_signal0 <= '0'; 
output_signal1 <= '1'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';    

when "00010" => --2
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '1'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';  

when "00011" => --3
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '1'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9<= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0'; 

when "00100" => --4
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '1'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9<= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0'; 

when "00101" => --5

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '1'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0'; 


when "00110" => --6

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '1'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';   


when "00111" => --7

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '1'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0'; 


when "01000" => --8

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '1'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';  


when "01001" => --9

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '1';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0'; 


when "01010" => --10

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '1';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "01011" => --11

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '1';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "01100" => --12

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '1';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0'; 


when "01101" => --13

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '1';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';  


when "01110" => --14

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '1';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';  


when "01111" => --15

output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '1';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "10000" => --16
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '1';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';

when "10001" => --17
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9<= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '1';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "10010" => --18
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '1';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "10011" => --19
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '1'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "10100" => --20
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '1'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "10101" => --21
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '1'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';
  

when "10110" => --22
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9<= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '1'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';
 

when "10111" => --23
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '1'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';
 

when "11000" => --24
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '1'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';
 

when "11001" => --25
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9<= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '1'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';
  

when "11010" => --26
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '1'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';
 

when "11011" => --27
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9<= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '1'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';
 

when "11100" => --28
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '1'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "11101" => --29
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9<= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '1'; 
output_signal30<= '0'; 
output_signal31<= '0';


when "11110" => --30
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9<= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '1'; 
output_signal31<= '0';
 

when "11111" => --31
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '1';  

when others => 
output_signal0 <= '0'; 
output_signal1 <= '0'; 
output_signal2 <= '0'; 
output_signal3 <= '0'; 
output_signal4 <= '0'; 
output_signal5 <= '0'; 
output_signal6 <= '0'; 
output_signal7 <= '0'; 
output_signal8 <= '0'; 
output_signal9 <= '0';
output_signal10<= '0';
output_signal11<= '0';
output_signal12<= '0';
output_signal13<= '0';
output_signal14<= '0';
output_signal15<= '0';
output_signal16<= '0';
output_signal17<= '0';
output_signal18<= '0';
output_signal19<= '0'; 
output_signal20<= '0'; 
output_signal21<= '0'; 
output_signal22<= '0'; 
output_signal23<= '0'; 
output_signal24<= '0'; 
output_signal25<= '0'; 
output_signal26<= '0'; 
output_signal27<= '0'; 
output_signal28<= '0'; 
output_signal29<= '0'; 
output_signal30<= '0'; 
output_signal31<= '0';  


			end case;
		end process;
		
	Out0  <= output_signal0;
	Out1  <= output_signal1;
	Out2  <= output_signal2;
	Out3  <= output_signal3;
	Out4  <= output_signal4;
	Out5  <= output_signal5;
	Out6  <= output_signal6;
	Out7  <= output_signal7;
	Out8  <= output_signal8;
	Out9  <= output_signal9;
	Out10 <= output_signal10;
	Out11 <= output_signal11;
	Out12 <= output_signal12;
	Out13 <= output_signal13;
	Out14 <= output_signal14;
	Out15 <= output_signal15;
	Out16 <= output_signal16;
	Out17 <= output_signal17;
	Out18 <= output_signal18;
	Out19 <= output_signal19;
	Out20 <= output_signal20;
	Out21 <= output_signal21;
	Out22 <= output_signal22;
	Out23 <= output_signal23;
	Out24 <= output_signal24;
	Out25 <= output_signal25;
	Out26 <= output_signal26;
	Out27 <= output_signal27;
	Out28 <= output_signal28;
	Out29 <= output_signal29;
	Out30 <= output_signal30;
	Out31 <= output_signal31;
		

	end Behavioral;
