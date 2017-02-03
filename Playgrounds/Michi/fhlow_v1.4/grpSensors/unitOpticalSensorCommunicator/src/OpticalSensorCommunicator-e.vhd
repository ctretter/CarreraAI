-------------------------------------------------------------------------------
-- Created	   :	17.01.2017
-- Author	   :	Michael Bierig
-- File        :	OpticalSensorCommunicator-e.vhd
-- Description : 	entity for module OpticalSensorCommunicator
-------------------------------------------------------------------------------
-- Latest update:	22.01.2017
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity OpticalSensorCommunicator is
	generic (
		gDataWidth			: integer := 8;									-- bit width of optical sensor values
		gBurstRegWidth		: integer := 56;								-- bit width of optical sensor burst register
		gClkDivider			: integer := 24									
	);
	port (
		iClk 				: in std_ulogic;								-- clk 
		inResetAsync		: in std_ulogic;								-- reset
		iOneMHzStrobe		: in std_ulogic;								-- 1MHz strobe for wait cycles of sensor
		iMISO				: in std_ulogic;								-- MasterInSlaveOut
		oMOSI				: out std_ulogic;								-- MasterOutSlaveIn
		oSelect				: out std_ulogic;								-- select input bit
		oSysClk				: out std_ulogic;								-- slave clk 1MHz	
		oDataValid			: out std_ulogic;								-- valid bit for further usage in other components
		
		-- sensor data from burst register:
		oMotion				: out std_ulogic_vector (gDataWidth-1 downto 0);
		oDataX				: out std_ulogic_vector (gDataWidth-1 downto 0);
		oDataY				: out std_ulogic_vector (gDataWidth-1 downto 0);
		oSQUAL				: out std_ulogic_vector (gDataWidth-1 downto 0);
		oShutterUpper		: out std_ulogic_vector (gDataWidth-1 downto 0);
		oShutterLower		: out std_ulogic_vector (gDataWidth-1 downto 0);
		oMaximumPixel		: out std_ulogic_vector (gDataWidth-1 downto 0)
    );
end OpticalSensorCommunicator;