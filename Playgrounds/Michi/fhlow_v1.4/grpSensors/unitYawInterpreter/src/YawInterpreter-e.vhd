-------------------------------------------------------------------------------
-- Created	   :	11.11.2016
-- Author	   :	Michael Bierig
-- File        :	YawInterpreter-e.vhd
-- Description : 	entity for module YawInterpreter
-------------------------------------------------------------------------------
-- Latest update:	11.11.2016
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;


entity YawInterpreter is
	generic (
		gDataWidth			: integer := 16;								-- bit width of yaw rate sensor
		gFilterSteps		: integer := 5;									-- steps of filters for calculation
		gYawRateLeft 		: integer := 0;									-- set yaw rate value to pass filter (left)
		gYawRateRight 		: integer := 0									-- set yaw rate value to pass filter (right)
	);
	port (
		iClk 				: in std_ulogic;								-- clk 50MHz
		iSampleClk			: in std_ulogic;								-- clk 10kHz
		inResetAsync		: in std_ulogic;								-- reset
		iCurrentYawRate		: in std_ulogic_vector(gDataWidth-1 downto 0);	-- input for current yaw rate
		oDirection			: out std_ulogic_vector(1 downto 0)				-- output for directon (see constants for directons in implementation)
    );
end YawInterpreter;