-------------------------------------------------------------------------------
-- Title      : Oscillator for Rectangle Wave Generation
-- Project    : General IP
-------------------------------------------------------------------------------
-- $Id: Oscillator-e.vhd 3 2011-09-10 08:35:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
-- Generates a oscillating signal changing between '0' and '1'. Frequency and
-- duty cycle can be adjusted.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--use work.Global.all;

entity Oscillator is
  
  generic (
    -- Frequency of the oscillator output in Hz.
    gFrequency    : natural := 50E6;
    -- Low period of the duty cycle in percent.
    gIsLowPercentageOfDutyCycle : natural  := 50); -- %

  port (
    -- Strobe with the above given cycle time
    oRectangleWave  : out std_ulogic);

begin

end Oscillator;
