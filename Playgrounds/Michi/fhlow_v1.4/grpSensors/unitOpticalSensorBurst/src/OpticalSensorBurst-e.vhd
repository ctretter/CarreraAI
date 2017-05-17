-------------------------------------------------------------------------------
-- Created	   :	17.05.2017
-- Author	   :	Michael Bierig
-- File        :	OpticalSensorBurst-e.vhd
-- Description : 	entity for module OpticalSensorBurst
-------------------------------------------------------------------------------
-- Latest update:	17.05.2017
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity OpticalSensorBurst is
	generic (
		gDataWidth			: integer := 8;									-- bit width of optical sensor values
		gClkDivider			: integer := 24									
	);
	port (
		iClk 				: in std_ulogic;								-- clk 
		inResetAsync		: in std_ulogic;								-- reset
		iOneMHzStrobe		: in std_ulogic;								-- 1MHz strobe for wait cycles of sensor
		iOneKHzStrobe		: in std_ulogic;								-- 1KHz strobe for reset wait 
		oDataValid			: out std_ulogic;								-- valid bit for further usage in other components
		
		-- sensor wires
		iMISO				: in std_ulogic;								-- MasterInSlaveOut
		oMOSI				: out std_ulogic;								-- MasterOutSlaveIn
		oSelect				: out std_ulogic;								-- select input bit
		oSysClk				: out std_ulogic;								-- slave clk 1MHz
		oNPD				: out std_ulogic;
		oResetSensor		: out std_ulogic;
		
		-- sensor data
		oProductID			: out std_ulogic_vector (gDataWidth-1 downto 0);
		oMotion				: out std_ulogic_vector (gDataWidth-1 downto 0);
		oDataX				: out std_ulogic_vector (gDataWidth-1 downto 0);
		oDataY				: out std_ulogic_vector (gDataWidth-1 downto 0);
		
		-- debug outputs
		oErrorProductID		: out std_ulogic;
		oResetActive		: out std_ulogic
    );
end OpticalSensorBurst;