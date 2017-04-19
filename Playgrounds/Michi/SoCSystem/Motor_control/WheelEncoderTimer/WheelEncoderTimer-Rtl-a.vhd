architecture RTL of WheelEncoderTimer is
  constant cTimeOutValue : natural := gTimeOut/gTimerResolution;
  constant cCounterInit  : natural := gValidSamples/2;
  signal countStrobe   : std_ulogic;    -- trigger for strobed logic
  signal SensorStage1  : std_ulogic;    -- first sync stage of sensor signal
  signal SensorSync    : std_ulogic;    -- second sync stage of sensor signal

  signal SensorPulses : unsigned(31 downto 0);  -- mileage counter

  type aRegion is (idle, isLow, isHigh);

  type aRegSet is record
    state     : aRegion;
    Counter   : natural range 0 to gValidSamples;  -- generic 
    error     : unsigned(gDataWidth-1 downto 0);  -- count errors
    output    : std_ulogic;
    Delay     : unsigned(gDataWidth-1 downto 0);  -- counted pulse per sampling periode
    ValidData : unsigned(gDataWidth-1 downto 0);
    Pulses    : unsigned(gDataWidth-1 downto 0);
  end record;
  
  constant cInitValR : aRegSet := (
    state     => idle,
    Counter   => cCounterInit,
    error     => to_unsigned(0, gDataWidth),
    output    => cInactivated,
    Delay     => to_unsigned(0, gDataWidth),
    ValidData => to_unsigned(0, gDataWidth),
    Pulses    => to_unsigned(0, gDataWidth)
    );

  signal NxR, R : aRegSet;

begin  -- architecture RTL

  SampleStrobeGen : entity work.StrobeGen(Rtl)
    generic map (
      gClkFrequency    => gClkFrequency,
      gStrobeCycleTime => gTimerResolution)
    port map (
      iClk         => iClk,
      inResetAsync => inResetAsync,
      oStrobe      => countStrobe);

  -- purpose: counts sensors pulse during sampletime
  -- type   : sequential
  -- inputs : iClk, inResetAsync, sensorDebounced
  -- outputs: countValue
  counter : process (iClk, inResetAsync) is
  begin  -- process counter
    if inResetAsync = '0' then          -- asynchronous reset ( active low)
      R <= cInitValR;
    elsif iClk'event and iClk = cActivated then  -- rising clock edge
	  -- external set pulse reset cumulated pulses
      if (countStrobe = cActivated) then
        -- sync sensor value
        SensorStage1 <= iSensor;
        SensorSync   <= SensorStage1;
        R            <= NxR;
      end if;
    end if;
  end process;

  Logic : process (R, SensorSync, iSetPulses) is
  begin
    NxR <= R; -- latch guard;
	if iSetPulses = cActivated then
	  NxR.Pulses <= iValue;
	end if;    
    if R.Delay >= cTimeOutValue then
      NxR.ValidData <= to_unsigned(0, NxR.ValidData'length);
      NxR.Delay     <= to_unsigned(1, NxR.Delay'length);
      NxR.output    <= cInactivated;
      NxR.state     <= idle;
      NxR.Counter   <= cCounterInit;
    else
      NxR.Delay <= R.Delay + 1;
      if SensorSync = cActivated then
        if R.Counter = gValidSamples then
          NxR.state <= isHigh;
			if R.state = idle or R.state = isLow then
				if R.output = cActivated then
					NxR.output    <= cInactivated;
					NxR.ValidData <= R.Delay;
					NxR.Pulses    <= R.Pulses + 1;
					NxR.Delay     <= to_unsigned(1, NxR.Delay'length);
				else
					NxR.output <= cActivated;
				end if;
			end if;  
        else
			NxR.Counter <= R.Counter + 1;
        end if;
      end if;
      if SensorSync = cInactivated then
        if R.Counter = 0 then
			NxR.state <= isLow;
			if R.state = idle or R.state = isHigh then
				if R.output = cActivated then
					NxR.output    <= cInactivated;
					NxR.ValidData <= R.Delay;
					NxR.Pulses    <= R.Pulses + 1;
					NxR.Delay     <= to_unsigned(1, NxR.Delay'length);
				else
					NxR.output <= cActivated;
				end if;
			end if;
        else
			NxR.Counter <= R.Counter - 1;
        end if;
      end if;
    end if;
-- nothing todo

  end process Logic;

  oPulses       <= R.Pulses;
  oErrorCounter <= R.error;
  oCountPSample <= R.ValidData;

end architecture RTL;
