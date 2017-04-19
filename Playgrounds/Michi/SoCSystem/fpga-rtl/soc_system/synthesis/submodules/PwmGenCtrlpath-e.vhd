---------------------------------------------------------------------*-vhdl-*--
-- File        : PwmGenCtrlpath-e.vhd
-- Description : ControlPath of PWMGenerator
-- the ControlPath generates the PWMSig
-- the PWMSig is '1' until it has reached LevelA (PWMWidth) -> indicated with 
-- iLevelLessADetected (PWMWidth)
-- then it's '0' until it has reached gInterPWM
--
-- the output signal oSelLevel controls the Datapath counter (RegLevel)
-- the couter should count up, until it has reached the InterPWM
-- if it has reached the InterPWM, the ControlPath informs the Datapath with
-- the output signal oSelLevel, that the counter value should reload zero
-------------------------------------------------------------------------------
-- 2014-04-01 last update by Martina Felber
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;
use work.PwmGenPack.all;

entity PwmGenCtrlpath is
  port (
    iClk                : in  std_ulogic;
    inRstAsync          : in  std_ulogic;
    -- WaveGen
    iLevelLessADetected : in  std_ulogic;
    iLevelLessBDetected : in  std_ulogic;
    oSelLevel           : out tSelLevel;
    -- pwm signal
    oPwmSig             : out std_ulogic
    );
end PwmGenCtrlpath;

