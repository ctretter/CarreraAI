architecture RTL of RoundSensor is
  constant cValidSamples : natural := 2*gValidSamples;
  signal SensorStage1  : std_ulogic;    -- first sync stage of sensor signal
  signal SensorSync    : std_ulogic;    -- second sync stage of sensor signal
  signal strobe         : std_ulogic;

  type aRegion is (idle, fallingEdge, risingEdge);

  type aRegSet is record
    State     	: aRegion;
    Count     	: unsigned(gDataWidth-1 downto 0);  -- count
 	Output : std_ulogic;
	OutputToggle: std_ulogic;
  end record;
  
  constant cInitValR : aRegSet := (
    State     	=> idle,
	Count       => to_unsigned(0, gDataWidth),
	Output      => cInactivated,
	OutputToggle=> cInactivated
    );

  signal NxR, R : aRegSet;

begin  -- architecture RTL

  SampleStrobeGen : entity work.StrobeGen(Rtl)
    generic map (
      gClkFrequency    => gClkFrequency,
      gStrobeCycleTime => gSampleTime)
    port map (
      iClk         => iClk,
      inResetAsync => inResetAsync,
      oStrobe      => strobe);

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
      SensorStage1 <= iSensor;
      SensorSync   <= SensorStage1;
      if (strobe = cActivated) then
        -- sync sensor value
        R            <= NxR;
      end if;
    end if;
  end process;

  Logic : process (R, SensorSync, iResetSensor) is
  begin
    NxR <= R; -- latch guard;
	-- low active sensor signal
	if (SensorSync = cInactivated) then -- Activated
		if (R.Count < cValidSamples) then
			NxR.Count <= R.Count +1;			
		end if;
	elsif (R.Count > 0) then
			NxR.Count <= R.Count-1;
	end if;
	case R.State is
		when idle =>
			-- sensor signal is low active!
			if (R.Count = cValidSamples) then
				NxR.state <= fallingEdge;
			end if;
			if (iResetSensor = cActivated) then 
				NxR.Output <= cInactivated;
			end if;
		when fallingEdge =>
			if (R.Count = 0) then
				NxR.state <= risingEdge;
			end if;
		when risingEdge =>
			if (R.Count = 0) then
				NxR.OutputToggle <= not R.OutputToggle;
				NxR.Output <= cActivated;
				NxR.state <= idle;
			end if;
		when others =>
			NxR.State <= idle;
   	end case;
-- nothing todo

  end process Logic;

  oNewRound     	<= R.Output;
  oNewRoundToggle 	<= R.OutputToggle;

end architecture RTL;
