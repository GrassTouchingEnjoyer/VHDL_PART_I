----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:56 05/04/2024 
-- Design Name: 
-- Module Name:    MEMSTAGE - Structural 
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

entity MEMSTAGE is

Port (

    a            : IN  STD_LOGIC_VECTOR(32-1  DOWNTO 0 ) ;
    d            : IN  STD_LOGIC_VECTOR(32-1 DOWNTO 0  ) ;
	 sel_rfd_mask : IN  STD_LOGIC                         ;
	 sel_mem_mask : IN  STD_LOGIC                         ;
    clk          : IN  STD_LOGIC							      ;
    we           : IN  STD_LOGIC								   ;
    spo 			  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );


end MEMSTAGE;

architecture Structural of MEMSTAGE is

---------------|SIGNALS|----------------------
signal mask_out1_signal  : STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
signal mask_out2_signal  : STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
signal mux_out1_signal   : STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
signal mux_out2_signal   : STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
signal mem_out_signal    : STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;


-----------|BYTE MASK of RFD|------------------

component BYTE_MASK

PORT(

a        : in  STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) ;
mask_out : out STD_LOGIC_VECTOR(32-1 DOWNTO 0 ) 

);

end component;

---------------|MUX 2x1|------------------------

component MUX_2x1

PORT(

a     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
b     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
sel   : IN  STD_LOGIC;
output: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);

end component;

----------------|MEM|------------------------

component MEM

Port (

    a   : IN  STD_LOGIC_VECTOR(9  DOWNTO 0 ) ;
    d   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0 ) ;
    clk : IN  STD_LOGIC							   ;
    we  : IN  STD_LOGIC								;
    spo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
  
 end component;


begin

rfd_mask: BYTE_MASK

PORT MAP(

a        => d,
mask_out => mask_out1_signal
);

mask_or_no_mask_RFd: MUX_2x1

PORT MAP(


a      => mask_out1_signal ,
b      => d                ,
sel    => sel_rfd_mask     ,
output => mux_out1_signal

);

memory_stage: MEM

PORT MAP(

    a(10-1 DOWNTO 0) => a(10-1 DOWNTO 0),
    d                => mux_out1_signal ,
    clk              => clk,
    we               => we,
    spo              => mem_out_signal
);


mem_out_mask: BYTE_MASK

PORT MAP(

a => mem_out_signal,
mask_out =>  mask_out2_signal

);

mask_or_no_mask_MEM_OUT: MUX_2x1

PORT MAP(

a      => mask_out2_signal ,
b      => mem_out_signal   ,
sel    => sel_mem_mask     ,
output => spo

);


end Structural;

