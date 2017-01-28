-------------------------------------------------------------------------------
-- Created	   :	28.01.2017
-- Author	   :	Michael Bierig
-- File        :	TestOpticalSensor-e.vhd
-- Description : 	entity for module TestOpticalSensor
-------------------------------------------------------------------------------
-- Latest update:	28.01.2017
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity TestOpticalSensor is
	port (
		iClk 				: in std_ulogic;								-- clk 
		inResetAsync		: in std_ulogic;								-- reset
		oDataValid			: out std_ulogic;								-- valid bit for LED output
		
		-- sensor 4-wire
		iMISO				: in std_ulogic;
		oSelect 			: out std_ulogic;
		oSysClk				: out std_ulogic;
		oMOSI				: out std_ulogic
    );
end TestOpticalSensor;