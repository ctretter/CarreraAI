---------------------------------------------------------------------*-vhdl-*--
-- File        : PwmGenDatapath-e.vhd
-- Description : Datapath of the PWMGenerator
-- the input signal iSelLevel selects if the PWMCounter RegLevel should count
-- upwards, keep it's value or reload it's value with zero
-- the output signals oLevelLessADetected and oLevelLessBDetected indicate
-- if the PWMCounter RegLevel has reached the levels or not
-------------------------------------------------------------------------------
-- 2014-04-01 last update by Martina Felber
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;
use work.PwmGenPack.all;

entity PwmGenDatapath is
  generic (
     gInterPWM : unsigned((cResolutionBits-1) downto 0);
     gInitCounter : unsigned((cResolutionBits-1) downto 0) := to_unsigned(0, cResolutionBits));
  port (
    iClk                : in  std_ulogic;
    inRstAsync          : in  std_ulogic;
    -- WaveGen
    iSelLevel           : tSelLevel; -- inc, keep or reload PWMCounter -> RegLevel
    iLevel              : in  unsigned(cResolutionBits-1 downto 0); -- new value for PWM Counter
    iEnLevel            : in  std_ulogic; -- connected to strobe

    -- LevelA is PWMWidth
    -- activate iEnLevelA if you want to change PWMWidth
    iEnLevelA 			: in std_ulogic;
	-- new PWMWidth value
    iLevelA             : in  unsigned(cResolutionBits-1 downto 0);
	-- Counter (RegLevel) is less PWMWidth (RegLevelA)
    oLevelLessADetected : out std_ulogic;
    -- Counter (RegLevel) is less InterPWM (gInterPWM)
    oLevelLessBDetected : out std_ulogic
    );
end PwmGenDatapath;

