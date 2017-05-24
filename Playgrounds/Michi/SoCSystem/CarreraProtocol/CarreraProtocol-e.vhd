-- Carrera Protocol Interface
-- Author: Lukas Rappel
-- CVS: $Id: CarreraProtocol-e.vhd 90 2015-12-25 10:18:15Z s1510567014 $


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.global.all;

entity CarreraProtocol is
  
  generic (
    gClkFrequency : natural := 50E6;    -- system clock speed in Hz
    gBaudrate     : natural := 1E4;     -- data baud rate
    gDataWidth    : natural := 16;      -- parallel output data width
	gIDWidth      : natural := 32);     -- ID counter width

  port (
    inResetAsync : in  std_ulogic;      -- asynchronous system reset line
    iClk         : in  std_ulogic;      -- system clock line
    iDataAsync   : in  std_ulogic;      -- asynchronous data line (Manchester encoded)
    oNewData     : out std_ulogic;      -- new data received - oData
    oError       : out std_ulogic;      -- receive error
    oBitLen      : out natural range 0 to gDataWidth-1;  -- bit length of data
	oID          : out unsigned(gIDWidth-1 downto 0);  -- Telegram counter
    oData        : out std_ulogic_vector(gDataWidth-1 downto 0));  -- first data word

end entity CarreraProtocol;
