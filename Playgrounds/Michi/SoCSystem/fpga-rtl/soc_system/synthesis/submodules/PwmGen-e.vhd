---------------------------------------------------------------------*-vhdl-*--
-- File        : PwmGen-e.vhd
-- Description : PWMGenerator
-- combines PWMGenCtrlPath, PWMGenDataPath and StrobeGen
-- clock frequency, strobe and inter pwm can be set with a generic
-- the input signal iPWMWidth can reload the PWMWidth with a new value
-- if iEnReloadPWMWidth is activated
-------------------------------------------------------------------------------
-- 2014-04-01 last update by Martina Felber
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;
use work.PwmGenPack.all;

entity PwmGen is
  generic (
    gClkFrequency : natural;
    gStrobeCycleTime : time;
    gInitCounter : unsigned((cResolutionBits-1) downto 0) := to_unsigned(0, cResolutionBits);
    gInterPWM : unsigned((cResolutionBits-1) downto 0) := to_unsigned((2**cResolutionBits)-1, cResolutionBits)
  ); 
  port (
    iClk              : in  std_ulogic;
    inRstAsync        : in  std_ulogic;
    -- inputs
    iEnReloadPWMWidth : in  std_ulogic;
    iPWMWidth         : in  unsigned(cResolutionBits-1 downto 0);
    -- output
    oPwmSig           : out std_ulogic
    );
end PwmGen;

