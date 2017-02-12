-------------------------------------------------------------------------------
-- Created	   :	28.01.2017
-- Author	   :	Michael Bierig
-- File        :	TestOpticalSensor-Rtl-a.vhd
-- Description : 	architecture for test of optical sensor
-------------------------------------------------------------------------------
-- Latest update:	28.01.2017
-------------------------------------------------------------------------------

architecture Rtl of TestOpticalSensor is

	-- component constants
	constant cClockFrequency	: natural										:= 24E6;
	constant cDataWidth			: integer  										:= 8;
	constant cBurstRegWidth 	: integer  										:= 56;
	constant cClkFreq			: integer 										:= 24;
	constant cOneMHzClkPeriod	: time 	   										:= 1 us;		--  1MHz clock
	constant cExampleData		: std_ulogic_vector(cBurstRegWidth-1 downto 0)	:= "00000000101111111111110100000000000000000000000000000000";
	
	-- component signals port map
	signal DataValid			: std_ulogic 									:= '0';	
	signal oMotion				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oDataX				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oDataY				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oSQUAL				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oShutterUpper		: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oShutterLower		: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oMaximumPixel		: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal NowDataValid			: std_ulogic									:= '0';
	
	-- component signals
	signal OneMHzStrobe			: std_ulogic 									:= '0';
	
	
	-- component declaration of StrobeGen
	component StrobeGen
		generic (
			gClkFrequency    	: natural := cClockFrequency;
			gStrobeCycleTime 	: time    := cOneMHzClkPeriod
		);
		port (
			-- Sequential logic inside this unit
			iClk         		: in std_ulogic;
			inResetAsync 		: in std_ulogic;

			-- Strobe with the above given cycle time
			oStrobe 			: out std_ulogic
		);
	end component;
	
	-- component declaration of OpticalSensorCommunicator
	component OpticalSensorCommunicator
		generic (
			gDataWidth			: integer := cDataWidth;						-- bit width of optical sensor values
			gBurstRegWidth		: integer := cBurstRegWidth;					-- bit width of optical sensor burst register
			gClkDivider			: integer := cClkFreq
		);
		port (
			iClk 				: in std_ulogic;								-- clk 50MHz
			inResetAsync		: in std_ulogic;								-- reset
			iOneMHzStrobe		: in std_ulogic;								-- 1MHz strobe for wait cycles of sensor
			iMISO				: in std_ulogic;								-- MasterInSlaveOut
			oMOSI				: out std_ulogic;								-- MasterOutSlaveIn
			oSelect				: out std_ulogic;								-- select input bit
			oSysClk				: out std_ulogic;								-- slave clk 1 MHz	
			oDataValid			: out std_ulogic;								-- valid bit for further usage in other components
			
			-- sensor data from burst register:
			oMotion				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oDataX				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oDataY				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oSQUAL				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oShutterUpper		: out std_ulogic_vector (gDataWidth-1 downto 0);
			oShutterLower		: out std_ulogic_vector (gDataWidth-1 downto 0);
			oMaximumPixel		: out std_ulogic_vector (gDataWidth-1 downto 0)
		);
    end component;
	
begin

	-- #################################################
	-- Instantiation: Unit Under Test - OpticalSensorCommunicator
	-- #################################################
	uut : OpticalSensorCommunicator 
	generic map (
		gDataWidth 		=> cDataWidth,
		gBurstRegWidth 	=> cBurstRegWidth,
		gClkDivider		=> cClkFreq
	)
	port map (
		iClk			=> iClk,
		inResetAsync 	=> inResetAsync,
		iOneMHzStrobe	=> OneMHzStrobe,
		iMISO			=> iMISO,
		oMOSI			=> oMOSI,
		oSelect 		=> oSelect,
		oSysClk			=> oSysClk,
		oDataValid		=> DataValid,
		oMotion			=> oMotion,
		oDataX			=> oDataX,
		oDataY			=> oDataY,
		oSQUAL			=> oSQUAL,
		oShutterUpper	=> oShutterUpper,
		oShutterLower	=> oShutterLower,
		oMaximumPixel	=> oMaximumPixel
	);
	
	-- #################################################
	-- Instantiation: GenerateStrobe - StrobeGen
	-- #################################################
	GenerateStrobe :  StrobeGen
	generic map (
		gClkFrequency 		=> cClockFrequency,
		gStrobeCycleTime 	=> cOneMHzClkPeriod
	)
	port map (
		iClk				=> iClk,
		inResetAsync		=> inResetAsync,
		oStrobe				=> OneMHzStrobe
	);
	
	CheckValidData : process (iClk, inResetAsync) is
	begin	
		if (inResetAsync = cnActivated) then
			NowDataValid <= '0';
			oDataValid <= '0';
		elsif (rising_edge(iClk)) then
		
			if(DataValid = '1' and ((oDataX /= "00000000" and oDataX /= "11111111") or (oDataY /= "00000000" and oDataY /= "11111111"))) then
				oDataValid <= '1';
			else 
				oDataValid <= '0';
			end if;
			
			--if (NowDataValid = '1') then
			--	oDataValid <= '1';
			--end if;
			
		end if;
	end process;

end Rtl;