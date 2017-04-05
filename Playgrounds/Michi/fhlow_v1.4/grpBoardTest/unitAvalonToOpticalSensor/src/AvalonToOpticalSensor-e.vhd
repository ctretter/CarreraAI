-------------------------------------------------------------------------------
-- Created	   :	05.04.2017
-- Author	   :	Michael Bierig
-- File        :	AvalonToOpticalSensor-e.vhd
-- Description : 	entity for communication between Avalon and OpticalSensor
-------------------------------------------------------------------------------
-- Latest update:	05.04.2017
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity AvalonToOpticalSensor is
	generic (
		gDataWidth			: natural := 32;
		gAddrWidth			: natural := 8
	);
	port (
		-- avalon ports
		clock_clk        	: in  std_logic;                     				-- clock.clk
		reset_n          	: in  std_logic;                     				-- reset.resetAsync
		avs_s0_address   	: in  std_logic_vector(gAddrWidth-1 downto 0);  	-- avs_s0.address
		avs_s0_read      	: in  std_logic;  									-- .read
		avs_s0_readdata  	: out std_logic_vector(gDataWidth-1 downto 0);  	-- .readdata
		avs_s0_write     	: in  std_logic;                     				-- .write
		avs_s0_writedata 	: in  std_logic_vector(gDataWidth-1 downto 0);	  	-- .writedata	
		
		-- sensor ports
		iMISO				: in std_ulogic;									-- MasterInSlaveOut
		oMOSI				: out std_ulogic;									-- MasterOutSlaveIn
		oSelect				: out std_ulogic;									-- select input bit
		oSysClk				: out std_ulogic;									-- slave clk 1MHz
		oNPD				: out std_ulogic;
		oResetSensor		: out std_ulogic
    );
end AvalonToOpticalSensor;