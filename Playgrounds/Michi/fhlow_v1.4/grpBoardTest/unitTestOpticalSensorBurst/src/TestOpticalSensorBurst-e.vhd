-------------------------------------------------------------------------------
-- Created	   :	17.05.2017
-- Author	   :	Michael Bierig
-- File        :	TestOpticalSensorBurst-e.vhd
-- Description : 	entity for module TestOpticalSensorBurst
-------------------------------------------------------------------------------
-- Latest update:	17.05.2017
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity TestOpticalSensorBurst is
	port (
		iClk 				: in std_ulogic;								-- clk 
		inResetAsync		: in std_ulogic;								-- reset
		oDataValid			: out std_ulogic;								-- valid bit for LED output
		
		-- sensor 4-wire
		iMISO				: in std_ulogic;
		oSelect 			: out std_ulogic;
		oSysClk				: out std_ulogic;
		oMOSI				: out std_ulogic;
		oResetSensor		: out std_ulogic;
		oNPD				: out std_ulogic;
		
		-- seven segment
		oHEX1				: out std_ulogic_vector (6 downto 0);
		oHEX2				: out std_ulogic_vector (6 downto 0);
		oHEX3				: out std_ulogic_vector (6 downto 0);
		oHEX4				: out std_ulogic_vector (6 downto 0)
    );
end TestOpticalSensorBurst;