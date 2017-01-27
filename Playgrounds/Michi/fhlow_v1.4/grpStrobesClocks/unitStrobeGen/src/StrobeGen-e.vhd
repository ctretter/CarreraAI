-------------------------------------------------------------------------------
-- Title      : Strobe Generator
-- Project    : 
-------------------------------------------------------------------------------
-- File       : StrobeGen-e.vhd
-- Author     : Copyright 2004 - Markus Pfaff, Linz/Austria
-- CVS: $Id: StrobeGen-e.vhd 1 2006-03-22 16:38:42Z pfaff $
-- UsrNames   : pfaff - Markus Pfaff
-------------------------------------------------------------------------------
-- Description: 
-- Generates a strobe signal that will be '1' for one clock cycle of the iClk.
-- The strobe comes every gStrobeCycleTime. If this cycle time cannot be
-- generated exactly it will be truncated with the accuracy of one iClk cycle.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity StrobeGen is
  
  generic (
    gClkFrequency    : natural := 50E6;
    gStrobeCycleTime : time    := 1 us);

  port (
    -- Sequential logic inside this unit
    iClk         : in std_ulogic;
    inResetAsync : in std_ulogic;

    -- Strobe with the above given cycle time
    oStrobe : out std_ulogic);

begin

  -- pragma translate_off
  assert ((1 sec / gClkFrequency) <= gStrobeCycleTime)
    report "Mp: The Clk frequency is to low to generate such a short strobe cycle."
    severity error;
  -- pragma translate_on

end StrobeGen;
