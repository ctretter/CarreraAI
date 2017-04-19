library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.Global.all;

entity RoundSensor is
  
  generic (
    gClkFrequency   : natural :=  50E6;   -- system clock
	gDataWidth      : natural :=     32;  -- data width
	gSampleTime     : time    := 1 us;    -- sensor sample signal 
	gValidSamples   : natural := 20  	  -- time period after edge detected to evaluate valid edge
    );

  port (
    iClk          : in  std_ulogic;     -- system clock
    inResetAsync  : in  std_ulogic;     -- system reset (asynchron)
    iSensor       : in  std_ulogic;     -- sensor signal (pulses)
	iResetSensor  : in  std_ulogic;     -- resets sensor pulse
	oNewRound	  : out  std_ulogic;     -- new round resetable signal
	oNewRoundToggle: out std_ulogic     -- new round toggle signal
    );

end entity RoundSensor;


