---------------------------------------------------------------------*-vhdl-*--
-- File        : PwmGen-Rtl-a.vhd
-- Description : instantiation of all PWMGen components
-------------------------------------------------------------------------------
-- 2014-04-01 last update by Martina Felber
-------------------------------------------------------------------------------

architecture Rtl of PwmGen is

  signal Strobe             : std_ulogic;
  signal SelLevel           : tSelLevel;
  signal LevelLessADetected : std_ulogic;
  signal LevelLessBDetected : std_ulogic;

begin  -- Rtl

  TheStrobeGen_1 : entity work.StrobeGen
    generic map (
      gClkFrequency    => gClkFrequency,
      gStrobeCycleTime => gStrobeCycleTime)
    port map (
      iClk             => iClk,
      inResetAsync     => inRstAsync,
      oStrobe          => Strobe);

  ThePwmGenCtrlpath_1 : entity work.PwmGenCtrlpath(RTL)
    port map (
      iClk                => iClk,
      inRstAsync          => inRstAsync,
      iLevelLessADetected => LevelLessADetected,
      iLevelLessBDetected => LevelLessBDetected,     
      -- WaveGen
      oSelLevel           => SelLevel,
      -- pwm signal
      oPwmSig             => oPwmSig);

  ThePwmGenDatapath_1 : entity work.PwmGenDatapath(RTL)
    generic map (
      gInterPWM => gInterPWM,
      gInitCounter => gInitCounter)
    port map (
      iClk                => iClk,
      inRstAsync          => inRstAsync,
      -- WaveGen
      iSelLevel           => SelLevel,
      iLevel              => cZero,
      iEnLevel            => Strobe,
      -- LevelA (PWMWidth)
      iLevelA             => iPWMWidth,
      iEnLevelA           => iEnReloadPWMWidth,
      oLevelLessADetected => LevelLessADetected, 
      oLevelLessBDetected => LevelLessBDetected
      );


end architecture Rtl;
