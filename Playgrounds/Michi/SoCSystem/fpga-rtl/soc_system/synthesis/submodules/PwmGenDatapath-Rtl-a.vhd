---------------------------------------------------------------------*-vhdl-*--
-- File        : PwmGenDatapath-Rtl-a.vhd
-- Description : Architecture of PWMGen Datapath
-- input signal iSelLevel selects if the Counter RegLevel should count upwards
-- reload it's value with iLevel, or keep it's current value
-- oLevelLessDetected indicates if the Counter RegLevel has reached the 
-- PWMWidth (LevelA) or the InterPWM (gInterPWM)
-------------------------------------------------------------------------------
-- 2014-04-01 last update by Martina Felber
-------------------------------------------------------------------------------

architecture Rtl of PwmGenDatapath is

  signal RegLevel, NextRegLevel   : unsigned(cResolutionBits-1 downto 0);
  signal RegLevelA, NextRegLevelA : unsigned(cResolutionBits-1 downto 0);
  
begin  -- Rtl

  LevelRegister : process(iClk, inRstAsync)
  begin
    if inRstAsync = cnActivated then
       RegLevel  <= gInitCounter;
       RegLevelA <= cDefaultLevelA;
    elsif rising_edge(iClk) then
     if (iEnLevel = cActivated) then
        RegLevel <= NextRegLevel;
     end if;
       RegLevelA <= NextRegLevelA;
    end if;
  end process;
  
  with iSelLevel select
    NextRegLevel <=
    RegLevel +1 when inc,
    iLevel      when load,
    RegLevel    when keep;

  --change PWMWidth
  NextRegLevelA <=
    iLevelA when iEnLevelA = cActivated else
    RegLevelA;

  oLevelLessADetected <= cActivated when (RegLevel < RegLevelA) else 
                         cInactivated;
  
  oLevelLessBDetected <= cActivated when (RegLevel < (gInterPWM-1)) else 
                         cInactivated;  
end architecture Rtl;
