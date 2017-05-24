-- Carrera Protocol Interface (RTL)
-- Author: Lukas Rappel
-- CVS: $Id: CarreraProtocol-Rtl-a.vhd 96 2015-12-27 13:01:06Z s1510567014 $

architecture Rtl of CarreraProtocol is

  constant cSampleStrobeCount     : natural := gClkFrequency/gBaudrate/4 - 1;
  constant cSampleStrobeCountHalf : natural := gClkFrequency/gBaudrate/8 - 1;
  -- compare value for strobe counter for sampling periode

  type aSampleState is (FirstSample, SecondSample);
  type aRegion is (StartBit, DataBits, Idle);

  type aRegSet is record
    SampleState : aSampleState;
    Region      : aRegion;
    Delay       : natural range 0 to (gClkFrequency/gBaudrate)-1;
    BitIdx      : natural range 0 to gDataWidth-1;
    FirstSample : std_ulogic;
    Error       : std_ulogic;
    NewData     : std_ulogic;
    ID          : unsigned(gIDWidth-1 downto 0);
    Data        : std_ulogic_vector(gDataWidth-1 downto 0);
	ValidData   : std_ulogic_vector(gDataWidth-1 downto 0);
	ValidBitLen : natural range 0 to gDataWidth-1;
  end record;
  
  constant cInitValR : aRegSet := (
    SampleState => FirstSample,
    Region      => Idle,
    Delay       => 0,
    BitIdx      => 0,
    FirstSample => cInactivated,
    Error       => cInactivated,
    ID          => to_unsigned(0, gIDWidth),
    NewData     => cInactivated,
    Data        => (others => '0'),
	ValidData   => (others => '0'),
	ValidBitLen => 0
    );

  signal R, NxR   : aRegSet;
  signal DataSync : std_ulogic;
  signal DataIn   : std_ulogic;
  
begin  -- architecture CarreraProtocol
----------------------
-- Update register values
----------------------
  Registering : process(iClk, inResetAsync)
  begin
    if (inResetAsync = cnActivated) then
      R <= cInitValR;
    elsif rising_edge(iClk) then
      R        <= NxR;
      -- synchronize serial input
      DataIn   <= iDataAsync;
      DataSync <= DataIn;
    end if;
  end process;

  Comp : process (R, DataSync)
    variable input : std_ulogic_vector(1 downto 0);
  begin
    -- set the defaults
    NxR <= R;
    case R.Region is
      when Idle =>
		NxR.NewData     <= cInactivated;
		NXR.Error       <= cInactivated;
		-- Take Sample for edge detection
   	    NxR.FirstSample <= DataSync;

        -- data line: falling edge detected - is start bit
        if (DataSync = cInactivated and R.FirstSample = cActivated) then
		-- init structure
          NxR.SampleState <= FirstSample;
          NxR.Region      <= StartBit;
          NxR.Delay       <= 0;
          NxR.BitIdx      <= 0;
          NxR.Data        <= (others => '0');
        end if;
      when StartBit =>
        NxR.Delay <= R.Delay + 1;
        if (R.Delay = cSampleStrobeCountHalf) then
			NxR.Delay  <= 0;
		-- check data line level
		  if (DataSync= cInactivated) then -- valid
			NxR.Region <= DataBits;
		  else -- single spike - no information
			-- wait again until next falling edge
			NxR.Region  <= Idle;
			-- set error flag
			NXR.Error   <= cActivated;
		  end if;
        end if;
      when DataBits =>
        NxR.Delay <= R.Delay + 1;
		if (R.Delay = cSampleStrobeCount) then
			NxR.Delay   <= 0;       -- reset delay counter
			if (R.SampleState = FirstSample) then
				NxR.FirstSample <= DataSync;
				NxR.SampleState <= SecondSample;
			end if;    
			if (R.SampleState = SecondSample) then
				input := R.FirstSample & DataSync;
				case input is
				  when "00" => -- invalid state
					NxR.Region  <= Idle;
					NxR.NewData <= cInactivated;
					NXR.Error   <= cActivated;
					NxR.ValidData   <= (others => '0');
					NxR.ValidBitLen <= 0;
					-- Take Sample for edge detection
					NxR.FirstSample <= DataSync;
				  when "10" => -- falling edge = 1
					NxR.Data(R.BitIdx) <= cActivated;
					NxR.BitIdx         <= R.BitIdx + 1;
					NxR.SampleState    <= FirstSample;
				  when "01" => -- rising edge = 0
					NxR.Data(R.BitIdx) <= cInactivated;
					NxR.BitIdx         <= R.BitIdx + 1;
					NxR.SampleState    <= FirstSample;
				  when "11" => -- telegram completed, write to output
					NxR.Region  <= Idle;
					NxR.ValidData   <= R.Data;
					NxR.ValidBitLen <= R.BitIdx;
					NxR.ID      <= R.ID + 1;
					NxR.NewData <= cActivated;
					NXR.Error   <= cInactivated;
					-- Take Sample for edge detection
					NxR.FirstSample <= DataSync;
				  when others =>            -- nothing to do
				end case;
			end if;
          end if;
    end case;
  end process;

-- concurrent statements:
  oData     <= R.ValidData;
  oBitLen   <= R.ValidBitLen;
  oNewData  <= R.NewData;
  oError    <= R.Error;
  oID 		<= R.ID;

end architecture Rtl;
