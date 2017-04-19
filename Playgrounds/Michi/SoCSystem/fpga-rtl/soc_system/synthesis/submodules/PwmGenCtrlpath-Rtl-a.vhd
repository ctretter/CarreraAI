---------------------------------------------------------------------*-vhdl-*--
-- File        : PwmGenCtrlpath-RTL-a.vhd
-- Description : see PwmGenCtrlpath-e.vhd
--
-------------------------------------------------------------------------------
-- 2014-04-01 last update by Martina Felber
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

architecture RTL of PwmGenCtrlpath is

signal PWMSig, NextPWMSig : std_ulogic;
begin 
  
RegisterPWM : process(iClk, inRstAsync)
begin
  if inRstAsync = cnActivated then
    PWMSig <= '0';
  elsif rising_edge(iClk) then
    PWMSig <= NextPWMSig;
  end if;
end process;

  oSelLevel <= inc when (iLevelLessBDetected = cActivated)  else 
               load; --reload PWM Counter with zero

  NextPwmSig <= '1' when iLevelLessADetected = cActivated else
                '0';

  oPWMSig <= PWMSig;

end architecture RTL;
