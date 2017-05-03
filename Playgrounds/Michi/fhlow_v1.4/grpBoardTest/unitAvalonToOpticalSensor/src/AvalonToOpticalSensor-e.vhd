-------------------------------------------------------------------------------
-- Created	   :	05.04.2017
-- Author	   :	Michael Bierig
-- File        :	AvalonToOpticalSensor-e.vhd
-- Description : 	entity for communication between Avalon and OpticalSensor
-------------------------------------------------------------------------------
-- Latest update:	03.05.2017
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity AvalonToOpticalSensor is
	generic (
		gDataWidth			: natural := 32;
		gAddrWidth			: natural := 8;
		gClockFrequency		: natural := 50E6
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
		iMISO				: in std_logic;										-- MasterInSlaveOut
		oMOSI				: out std_logic;									-- MasterOutSlaveIn
		oSelect				: out std_logic;									-- select input bit
		oSysClk				: out std_logic;									-- slave clk 1MHz
		oNPD				: out std_logic;
		oResetSensor		: out std_logic;
		oValidProductID		: out std_logic;
		oMotionDetected 	: out std_logic;	
		oValidReadAccess	: out std_logic;
		oReadEnableDetected : out std_logic
    );
end AvalonToOpticalSensor;