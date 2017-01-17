-------------------------------------------------------------------------------
-- Created	   :	17.01.2017
-- Author	   :	Michael Bierig
-- File        :	OpticalSensorCommunicator-e.vhd
-- Description : 	entity for module OpticalSensorCommunicator
-------------------------------------------------------------------------------
-- Latest update:	17.01.2017
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;


entity OpticalSensorCommunicator is
	generic (
		gDataWidth			: integer := 8									-- bit width of optical sensor values
	);
	port (
		iClk 				: in std_ulogic;								-- clk 50MHz
		inResetAsync		: in std_ulogic;								-- reset
		iMISO				: in std_ulogic;								-- MasterInSlaveOut
		oMOSI				: out std_ulogic;								-- MasterOutSlaveIn
		oSelect				: out std_ulogic;								-- select input bit
		oSysClk				: out std_ulogic								-- slave clk 1 MHz	
    );
end OpticalSensorCommunicator;