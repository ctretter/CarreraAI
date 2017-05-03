-------------------------------------------------------------------------------
-- Created	   :	08.03.2017
-- Author	   :	Michael Bierig
-- File        :	TestOpticalSensorXYCycV-Rtl-a.vhd
-- Description : 	architecture for test of optical sensor
-------------------------------------------------------------------------------
-- Latest update:	26.04.2017
-------------------------------------------------------------------------------

architecture Rtl of TestOpticalSensorXYCycV is

	-- component constants
	constant cClockFrequency	: natural										:= 50E6;
	constant cDataWidth			: integer  										:= 8;
	constant cOneMHzClkPeriod	: time 	   										:= 1 us;		--  1MHz clock
	constant cOneKHzClkPeriod	: time 	   										:= 1000 us;		--  1KHz clock
	
	-- component signals port map
	signal DataValid			: std_ulogic 									:= '0';	
	signal Motion				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal DataX				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal DataY				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal ProductID			: std_ulogic_vector(cDataWidth-1 downto 0)		:= (others => '0');
	signal SysClk				: std_ulogic									:= '0';
	signal SysClkGen			: std_ulogic									:= '0';
	signal SysClkCnt			: integer										:= 0;
	
	-- component signals
	signal OneMHzStrobe			: std_ulogic 									:= '0';
	signal OneKHzStrobe			: std_ulogic 									:= '0';
	
	
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
	
	-- component declaration of OpticalSensorXY
	component OpticalSensorXY
		generic (
			gDataWidth			: integer := cDataWidth;						-- bit width of optical sensor values
			gClkDivider			: integer := cClockFrequency/1000000
		);
		port (
			iClk 				: in std_ulogic;								-- clk 50MHz
			inResetAsync		: in std_ulogic;								-- reset
			iOneMHzStrobe		: in std_ulogic;								-- 1MHz strobe for wait cycles of sensor
			iOneKHzStrobe		: in std_ulogic;								-- 1KHz strobe for reset wait
			oDataValid			: out std_ulogic;								-- valid bit for further usage in other components
			
			iMISO				: in std_ulogic;								-- MasterInSlaveOut
			oMOSI				: out std_ulogic;								-- MasterOutSlaveIn
			oSelect				: out std_ulogic;								-- select input bit
			oSysClk				: out std_ulogic;								-- slave clk 1 MHz	
			oNPD				: out std_ulogic;
			
			-- sensor data
			oResetSensor		: out std_ulogic;
			oProductID			: out std_ulogic_vector (gDataWidth-1 downto 0);
			oMotion				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oDataX				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oDataY				: out std_ulogic_vector (gDataWidth-1 downto 0)
		);
    end component;
	
begin

	-- #################################################
	-- Instantiation: Unit Under Test - OpticalSensorCommunicator
	-- #################################################
	uut : OpticalSensorXY
	generic map (
		gDataWidth 		=> cDataWidth,
		gClkDivider		=> cClockFrequency/1000000
	)
	port map (
		iClk			=> iClk,
		inResetAsync 	=> inResetAsync,
		iOneMHzStrobe	=> OneMHzStrobe,
		iOneKHzStrobe	=> OneKHzStrobe,
		oDataValid		=> DataValid,
		iMISO			=> iMISO,
		oMOSI			=> oMOSI,
		oSelect 		=> oSelect,
		oSysClk			=> oSysClk,
		oNPD			=> oNPD,
		oResetSensor 	=> oResetSensor,
		oProductID		=> ProductID,
		oMotion			=> Motion,
		oDataX			=> DataX,
		oDataY			=> DataY
	);
	
	-- #################################################
	-- Instantiation: GenerateStrobe - StrobeGen
	-- #################################################
	GenerateStrobeMHz :  StrobeGen
	generic map (
		gClkFrequency 		=> cClockFrequency,
		gStrobeCycleTime 	=> cOneMHzClkPeriod
	)
	port map (
		iClk				=> iClk,
		inResetAsync		=> inResetAsync,
		oStrobe				=> OneMHzStrobe
	);
	
	-- #################################################
	-- Instantiation: GenerateStrobe - StrobeGen
	-- #################################################
	GenerateStrobeKHz :  StrobeGen
	generic map (
		gClkFrequency 		=> cClockFrequency,
		gStrobeCycleTime 	=> cOneKHzClkPeriod
	)
	port map (
		iClk				=> iClk,
		inResetAsync		=> inResetAsync,
		oStrobe				=> OneKHzStrobe
	);
	
	-- test process with LED notification
	CheckValidData : process (iClk, inResetAsync) is
	begin	
		if (inResetAsync = cnActivated) then
			
			oDataValid <= '1';
			oInitializedLED <= '0';
			
		elsif (rising_edge(iClk)) then
		
			if(DataValid = '1' and (Motion = "10000000")) then
				oDataValid <= '1';
			else 
				oDataValid <= '0';
			end if;
			
			if (ProductID = "00010111") then
				oInitializedLED <= '1';
			else
				oInitializedLED <= '0';
			end if;
		end if;
	end process;
	
end Rtl;