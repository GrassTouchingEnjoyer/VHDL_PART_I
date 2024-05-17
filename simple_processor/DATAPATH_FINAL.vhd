----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:23:19 05/04/2024 
-- Design Name: 
-- Module Name:    DATAPATH_FINAL - Behavioral 
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

entity DATAPATH_FINAL is

Port(

Clk			  : in STD_LOGIC								 ;
Reset			  : in STD_LOGIC								 
);


end DATAPATH_FINAL;

architecture Behavioral of DATAPATH_FINAL is

signal alu_out_signal : STD_LOGIC_VECTOR(32-1 DOWNTO 0);
signal mem_out_signal : STD_LOGIC_VECTOR(32-1 DOWNTO 0);
signal immed_signal   : STD_LOGIC_VECTOR(32-1 DOWNTO 0);
signal rfa_signal     : STD_LOGIC_VECTOR(32-1 DOWNTO 0);
signal rfb_signal     : STD_LOGIC_VECTOR(32-1 DOWNTO 0);
signal instr_signal   : STD_LOGIC_VECTOR(32-1 DOWNTO 0);


signal	signal_PC_sel  	   : STD_LOGIC;

signal   signal_PC_LdEn		   : STD_LOGIC;

signal   signal_RF_WrEn       : STD_LOGIC;

signal   signal_RF_WrData_sel : STD_LOGIC;

signal   signal_RF_B_sel      : STD_LOGIC;

signal   signal_fill_mode_sel : STD_LOGIC;

signal   signal_shift_en      : STD_LOGIC;

signal   signal_ALU_BIN_sel   : STD_LOGIC;

signal   signal_ALU_func	   : STD_LOGIC_VECTOR(3 downto 0);

signal   signal_sel_16_immed  : STD_LOGIC;

signal   signal_li_sel   	   : STD_LOGIC;

signal   signal_MEM_WrEn 	   : STD_LOGIC;

signal   signal_sel_rfd_mask  : STD_LOGIC;

signal   signal_sel_mem_mask  : STD_LOGIC;

component Control_Unit

Port(
			  Instr : in  STD_LOGIC_VECTOR (31 downto 0);

           PC_sel : out  STD_LOGIC;

           PC_LdEn : out  STD_LOGIC;

           RF_WrEn : out  STD_LOGIC;

           RF_WrData_sel : out  STD_LOGIC;

           RF_B_sel : out  STD_LOGIC;

           fill_mode_sel : out  STD_LOGIC;

           shift_en : out  STD_LOGIC;

           ALU_BIN_sel : out  STD_LOGIC;

           ALU_func : out  STD_LOGIC_VECTOR(3 DOWNTO 0);

           sel_16_immed : out  STD_LOGIC;

           li_sel : out  STD_LOGIC;

           MEM_WrEn : out  STD_LOGIC;

           sel_rfd_mask : out  STD_LOGIC;

           sel_mem_mask : out  STD_LOGIC
);

end component;

component IFSTAGE

Port(
		PC_Immed: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
		PC_sel  : IN  STD_LOGIC;
		PC_LdEn : IN  STD_LOGIC;
		RST     : IN  STD_LOGIC;
		CLK     : IN  STD_LOGIC;
		Instr   : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)

);


end component;


component DECSTAGE

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

end component;


component EXECSTAGE


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


end component;


component MEMSTAGE

Port (

    a            : IN  STD_LOGIC_VECTOR(32-1  DOWNTO 0  ) ;
    d            : IN  STD_LOGIC_VECTOR(32-1  DOWNTO 0  ) ;
	 sel_rfd_mask : IN  STD_LOGIC                          ;
	 sel_mem_mask : IN  STD_LOGIC                          ;
    clk          : IN  STD_LOGIC							       ;
    we           : IN  STD_LOGIC								    ;
    spo 			  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );

end component;
------------------------------------------------------------------

begin

control: Control_Unit

PORT MAP(

			  Instr         => instr_signal         ,

           PC_sel        => signal_PC_sel        ,

           PC_LdEn       => signal_PC_LdEn       ,

           RF_WrEn       => signal_RF_WrEn       ,

           RF_WrData_sel => signal_RF_WrData_sel ,

           RF_B_sel      => signal_RF_B_sel      ,

           fill_mode_sel => signal_fill_mode_sel ,

           shift_en      => signal_shift_en      ,

           ALU_BIN_sel   => signal_ALU_BIN_sel   ,

           ALU_func      => signal_ALU_func      ,

           sel_16_immed  => signal_sel_16_immed  ,

           li_sel        => signal_li_sel        ,

           MEM_WrEn      => signal_MEM_WrEn      ,

           sel_rfd_mask  => signal_sel_rfd_mask  ,

           sel_mem_mask  => signal_sel_mem_mask

);



fetch: IFSTAGE

PORT MAP(

      PC_Immed => immed_signal        ,
		PC_sel   => signal_PC_sel       ,
		PC_LdEn  => signal_PC_LdEn      ,
		RST      => Reset               ,
		CLK      => Clk                 ,
		Instr    => instr_signal);

decode: DECSTAGE

PORT MAP(

Instr         => instr_signal  ,
RF_WrEn       => signal_RF_WrEn       ,
ALU_out       => alu_out_signal       , --signal--
MEM_out       => mem_out_signal, --signal--
RF_WrData_sel => signal_RF_WrData_sel ,
RF_B_sel		  => signal_RF_B_sel      ,
Clk			  => Clk           ,
Reset			  => Reset	       ,
fill_mode_sel => signal_fill_mode_sel ,
shift_en      => signal_shift_en      ,
Immed			  => immed_signal  , --signal--
RF_A			  => rfa_signal    , --signal--
RF_B		     => rfb_signal      --signal--

);

exec: EXECSTAGE

PORT MAP(

	RF_A         => rfa_signal     , --signal--
	RF_B         => rfb_signal     , --signal--
	Immed        => immed_signal   , --signal--
	sel_16_immed => signal_sel_16_immed   ,
	li_sel       => signal_li_sel         ,
	ALU_BIN_sel  => signal_ALU_BIN_sel    ,
	ALU_func     => signal_ALU_func       ,
	ALU_out 	    => alu_out_signal   --signal--

);

memory_stage: MEMSTAGE

PORT MAP(

	 a             => alu_out_signal        , --signal--
    d             => rfb_signal            , --signal--
	 sel_rfd_mask  => signal_sel_rfd_mask   , 
	 sel_mem_mask  => signal_sel_mem_mask   ,
    clk           => Clk                   ,
    we            => signal_MEM_WrEn       ,
    spo 			   => mem_out_signal          --signal--


);


end Behavioral;

