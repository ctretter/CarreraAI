---------------------------------------------------------------------*-vhdl-*--
-- File        : PwmGenPack-p.vhd
-- Description : package of grpPWM
-------------------------------------------------------------------------------
-- 2014-04-01 last update by Martina Felber
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

package PwmGenPack is

  ---------------------------------------------------------------------------------------
  -- Constants
  ---------------------------------------------------------------------------------------

  constant cResolutionBits : natural := 10;
  constant cZero          : unsigned(cResolutionBits-1 downto 0) := to_unsigned(0, cResolutionBits);

  --default PWMWidth
  constant cDefaultLevelA : unsigned(cResolutionBits-1 downto 0) := to_unsigned(0, cResolutionBits);
  
  type tSelLevel is (load, inc, keep);
  
end PwmGenPack;


package body PwmGenPack is
end PwmGenPack;
