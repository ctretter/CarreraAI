-------------------------------------------------------------------------------
-- Title      : Power On Reset Generator
-- Project    : General IP
-------------------------------------------------------------------------------
-- $Id: PwrOnReset-e.vhd 3 2011-09-10 08:35:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
-- Generates a Reset signal that is active from time 0 for gInResetDuration.
-- This should model the Power On Reset or the Reset On Configuration of
-- many devices.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity PwrOnReset is
  
  generic (
    gInResetDuration : time := 140 ns);

  port (
    -- Asynchronous signal to use as power on reset.
    onResetAsync : out  std_ulogic := cnActivated);

begin

  assert ( gInResetDuration > 00 ns)
    report "Mp: Very short reset pulse in case of technology simulation!"
    severity warning;

end PwrOnReset;
