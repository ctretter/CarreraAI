library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.Global.all;

entity WheelEncoderTimer is
  
  generic (
    gClkFrequency   : natural :=  50E6;   -- system clock
	gDataWidth      : natural :=     32;  -- data width
    gTimerResolution: time    :=   1 us;  -- time measurement resolution
	gTimeOut        : time    := 100 ms;  -- signal timeout -> speed is zero
	gValidSamples   : natural := 20  -- time period after edge detected to evaluate valid edge
    );

  port (
    iClk          : in  std_ulogic;     -- system clock
    inResetAsync  : in  std_ulogic;     -- system reset (asynchron)
    iSensor       : in  std_ulogic;     -- sensor signal (pulses)
	iSetPulses    : in  std_ulogic;     -- set pulse values (mileage)
	iValue        : in  unsigned (gDataWidth-1 downto 0);  -- pulse value to set (milage)
    oCountPSample : out unsigned (gDataWidth-1 downto 0);  -- counter value of last sampling periode (current speed value)
	oPulses       : out unsigned (gDataWidth-1 downto 0);   -- counter value of sensor pulses
	oErrorCounter : out unsigned (gDataWidth-1 downto 0)   -- error counter value - spikes detected
    );

end entity WheelEncoderTimer;


