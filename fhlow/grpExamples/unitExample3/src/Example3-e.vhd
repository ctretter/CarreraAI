-------------------------------------------------------------------------------
-- Title      : Avalon SPI Instantiation
-------------------------------------------------------------------------------
-- File       : Example3-e.vhd
-- Author     : Michael Bierig
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: IP core instantiation of Altera Avalon SPI in common design
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.global.all;

entity Example3 is
	port (
		iResetAsync  : in  std_ulogic;
		iClk          : in  std_ulogic;
		oLED_Ack	  : out std_ulogic;
		oLED_Locked   : out std_ulogic
	);
end entity Example3;

