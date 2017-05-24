-------------------------------------------------------------------------------
-- Created	   :	05.04.2017
-- Author	   :	Michael Bierig
-- File        :	AvalonToOpticalSensor-Rtl-a.vhd
-- Description : 	architecture to get data from FPGA by using avalon in software
-------------------------------------------------------------------------------
-- Latest update:	24.05.2017
-------------------------------------------------------------------------------

architecture Rtl of AvalonToOpticalSensor is

	-- component constants
	constant cClockFrequency		: natural											:= gClockFrequency;		-- freq of cyclone V (default: 50 MHz)
	constant cMHzDivide				: natural											:= 1000000;				-- Mhz (million) value for division used in strobeGen
	constant cDataWidthSensor		: integer  											:= 8;					-- datawidth of optical sensor
	constant cOneMHzClkPeriod		: time 	   											:= 1 us;				-- generate 1MHz clock (StrobeGen)
	constant cOneKHzClkPeriod		: time 	   											:= 1000 us;				-- generate 1KHz clock (StrobeGen)
	constant cNewDataReceived		: std_ulogic_vector(cDataWidthSensor-1 downto 0)	:= "10000000";			-- new data: 0x80
	constant cProductID				: std_ulogic_vector(cDataWidthSensor-1 downto 0)	:= "00010111"; 			-- product ID: 0x17
	
	-- component constants for avalon addresses
	constant cAddrMotionDetected 	:	std_ulogic_vector(gAddrWidth-1 downto 0)		:= std_ulogic_vector(to_unsigned(0, gAddrWidth));	-- addr: 0
	constant cAddrProductID			:	std_ulogic_vector(gAddrWidth-1 downto 0)		:= std_ulogic_vector(to_unsigned(1, gAddrWidth));	-- addr: 1
	constant cAddrData				:	std_ulogic_vector(gAddrWidth-1 downto 0)		:= std_ulogic_vector(to_unsigned(2, gAddrWidth));	-- addr: 2
	constant cAddrTimeMeasured		:	std_ulogic_vector(gAddrWidth-1 downto 0)		:= std_ulogic_vector(to_unsigned(3, gAddrWidth));	-- addr: 3
	
	-- component signals for sensor information
	signal Motion					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal DataX					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal DataY					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal ProductID				: std_ulogic_vector(cDataWidthSensor-1 downto 0)	:= (others => '0');
	signal DataValid				: std_ulogic 										:= '0';	
		
	-- internal data registers for relevant sensor data
	signal RegMotion				: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal RegDataX					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal RegDataY					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal RegTime					: std_ulogic_vector(gDataWidth-1 downto 0)			:= (others => '0');
	signal TimeCtr					: integer											:= 0;
	
	-- component signals for strobes
	signal OneMHzStrobe				: std_ulogic 										:= '0';
	signal OneKHzStrobe				: std_ulogic 										:= '0';
	
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
	
	-- component declaration of OpticalSensorBurst
	component OpticalSensorBurst
		generic (
			gDataWidth			: integer := cDataWidthSensor;					-- bit width of optical sensor values
			gClkDivider			: integer := cClockFrequency/cMHzDivide			-- input of clkDivider for optical sensor to configure frequency of SysClk
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
			oDataY				: out std_ulogic_vector (gDataWidth-1 downto 0);
			
			-- debug outputs
			oErrorProductID		: out std_ulogic;
			oResetActive		: out std_ulogic
		);
    end component;
	
	-- component signals unresolved wiring to avoid tristate buffers
	signal Clk					: std_ulogic										:= '0';
	signal nResetAsync			: std_ulogic										:= '1';
	signal AvalonWE				: std_ulogic										:= '0';
	signal AvalonRE				: std_ulogic										:= '0';
	signal AvalonAddr		   	: std_ulogic_vector(gAddrWidth-1 downto 0)			:= (others => '0');
	signal AvalonReadData	   	: std_ulogic_vector(gDataWidth-1 downto 0)			:= (others => '0');
	signal AvalonWriteData	   	: std_ulogic_vector(gDataWidth-1 downto 0)			:= (others => '0');
	
	-- component signals for sensor information to avoid tristate buffers
	signal MOSI					: std_ulogic										:= '0';
	signal MISO					: std_ulogic										:= '0';
	signal SysClk				: std_ulogic										:= '0';
	signal NPD					: std_ulogic										:= '0';
	signal Sel					: std_ulogic										:= '0';
	signal ResetSensor			: std_ulogic										:= '0';
	signal ValidProductID		: std_ulogic										:= '0';
	signal MotionDetected		: std_ulogic										:= '0';
	signal ValidReadAccess		: std_ulogic										:= '0';
	signal ReadEnableDetected	: std_ulogic										:= '0';
	signal ErrorProductID		: std_ulogic										:= '0';
	signal ResetActive			: std_ulogic										:= '0';
	
begin

	-- port wiring to unresolved signals of Avalon bus
	Clk 			<= std_ulogic(clock_clk);
	nResetAsync 	<= std_ulogic(reset_n);
	AvalonWE 		<= std_ulogic(avs_s0_write);
	AvalonRE 		<= std_ulogic(avs_s0_read);
	AvalonAddr 		<= std_ulogic_vector(avs_s0_address);
	AvalonWriteData <= std_ulogic_vector(avs_s0_writedata);
	avs_s0_readdata	<= std_logic_vector(AvalonReadData);
	
	-- port wiring to unresolved signals of optical sensor
	MISO 				<= std_ulogic(iMISO);
	oMOSI 				<= std_logic(MOSI);
	oNPD 				<= std_logic(NPD);
	oResetSensor		<= std_logic(ResetSensor);
	oSysClk 			<= std_logic(SysClk);
	oSelect 			<= std_logic(Sel);
	oValidProductID 	<= std_logic(ValidProductID);
	oMotionDetected 	<= std_logic(MotionDetected);
	oValidReadAccess	<= std_logic(ValidReadAccess);
	oReadEnableDetected <= std_logic(ReadEnableDetected);
	oErrorProductID		<= std_logic(ErrorProductID);
	oResetActive		<= std_logic(ResetActive);

	-- #################################################
	-- Instantiation: Unit Under Test - OpticalSensorCommunicator
	-- #################################################
	uut : OpticalSensorBurst
	generic map (
		gDataWidth 		=> cDataWidthSensor,
		gClkDivider		=> cClockFrequency/cMHzDivide
	)
	port map (
		iClk			=> Clk,
		inResetAsync 	=> nResetAsync,
		iOneMHzStrobe	=> OneMHzStrobe,
		iOneKHzStrobe	=> OneKHzStrobe,
		oDataValid		=> DataValid,
		iMISO			=> MISO,
		oMOSI			=> MOSI,
		oSelect 		=> Sel,
		oSysClk			=> SysClk,
		oNPD			=> NPD,
		oResetSensor 	=> ResetSensor,
		oProductID		=> ProductID,
		oMotion			=> Motion,
		oDataX			=> DataX,
		oDataY			=> DataY,
		oErrorProductID => ErrorProductID,
		oResetActive	=> ResetActive
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
		iClk				=> Clk,
		inResetAsync		=> nResetAsync,
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
		iClk				=> Clk,
		inResetAsync		=> nResetAsync,
		oStrobe				=> OneKHzStrobe
	);
	
	-- #################################################
	-- Process: LED visualization for debug purpose
	-- #################################################
	DebugVisualizationLED : process (Clk, nResetAsync) is
	begin
	
		if (nResetAsync = cnActivated) then
		
			ValidProductID  	<= '0';
			MotionDetected		<= '0';
			ValidReadAccess		<= '0';
			ReadEnableDetected 	<= '0';

		elsif (rising_edge(Clk)) then
		
			-- LED visualization for ProductID
			if (ProductID = cProductID) then
				ValidProductID <= '1';
			else
				ValidProductID <= '0';
			end if;
			
			-- LED visualization for MotionDetected (if data is valid)
			if (Motion = cNewDataReceived and DataValid = '1') then
				MotionDetected <= '1';
			else
				MotionDetected <= '0';
			end if;
			
			-- LED visualization for read access
			if (AvalonAddr = cAddrProductID or AvalonAddr = cAddrMotionDetected or AvalonAddr = cAddrTimeMeasured or AvalonAddr = cAddrData) then
				ValidReadAccess <= '1';
			else 
				ValidReadAccess <= '0';
			end if;
			
			-- LED visualization for read enable
			if (AvalonRE = '1') then
				ReadEnableDetected <= '1';
			else
				ReadEnableDetected <= '0';
			end if;
		end if;
	end process;
	
	-- #################################################
	-- Process: DataTransfer from FPGA to HPS via Avalon
	-- #################################################
	DataTransfer : process(Clk, nResetAsync) is
	begin
	
		if (nResetAsync = cnActivated) then
		
			AvalonReadData 	<= (others => '0');
			RegDataX 		<= (others => '0');
			RegDataY 		<= (others => '0');
			RegMotion 		<= (others => '0');
			RegTime 		<= (others => '0');
			TimeCtr 		<= 0;

		elsif (rising_edge(Clk)) then
			
			-- increase time ctr each cycle to calculate speed in software (time will be read by software)
			TimeCtr <= TimeCtr + 1;
		
			-- check if new data received and old data are send to software
			if (Motion = cNewDataReceived and DataValid = '1') then
			
				RegMotion <= Motion;
				RegDataX  <= DataX;
				RegDataY  <= DataY;
				RegTime	  <= std_ulogic_vector(to_unsigned(TimeCtr, gDataWidth));
				TimeCtr   <= 0;
			end if;
		
			-- evaluate Avalon address and read data
			case AvalonAddr is	
			
				-- ProductID is readonly
				when cAddrProductID =>
				
						if (AvalonRE = '1') then
							AvalonReadData(gDataWidth-1 downto cDataWidthSensor) <= (others => '0');
							AvalonReadData(cDataWidthSensor-1 downto 0) <= ProductID;
						end if;
						
				-- Motion is readonly - reset register after read!
				when cAddrMotionDetected =>
				
						if (AvalonRE = '1') then
							AvalonReadData(gDataWidth-1 downto cDataWidthSensor) <= (others => '0');
							AvalonReadData(cDataWidthSensor-1 downto 0) <= RegMotion;
							RegMotion <= (others => '0');
						end if;
						
				-- Time is readonly	- reset register after read!
				when cAddrTimeMeasured =>
				
						if (AvalonRE = '1') then
							AvalonReadData(gDataWidth-1 downto 0) <= RegTime;
							RegTime <= (others => '0');
						end if;
						
				-- ATTENTION: 
				-- read this address after cAddrMotionDetected and cAddrTimeMeasured because DataACK will be set! 
				-- This will give FPGA the posibility to overwrite registers (DataX, DataY, Motion, Time) again!
				-- DataX and DataY are readonly - reset registers after read!
				when cAddrData =>
				
						if (AvalonRE = '1') then
							AvalonReadData(gDataWidth-1 downto cDataWidthSensor*2) <= (others => '0');
							AvalonReadData((cDataWidthSensor*2)-1 downto cDataWidthSensor) <= RegDataX;
							AvalonReadData(cDataWidthSensor-1 downto 0) <= RegDataY;
							RegDataX <= (others => '0');
							RegDataY <= (others => '0');
						end if;
				
				-- do nothing if other address active
				when others => 
					
			end case;		
		end if;
	end process;
	
end Rtl;