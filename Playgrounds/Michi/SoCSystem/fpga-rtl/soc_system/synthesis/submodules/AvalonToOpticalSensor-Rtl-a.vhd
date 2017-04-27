-------------------------------------------------------------------------------
-- Created	   :	05.04.2017
-- Author	   :	Michael Bierig
-- File        :	AvalonToOpticalSensor-Rtl-a.vhd
-- Description : 	architecture to get data from FPGA by using avalon in software
-------------------------------------------------------------------------------
-- Latest update:	26.04.2017
-------------------------------------------------------------------------------

architecture Rtl of AvalonToOpticalSensor is

	-- component constants
	constant cClockFrequency		: natural											:= gClockFrequency;		-- freq of cyclone V
	constant cDataWidthSensor		: integer  											:= 8;					-- datawidth of sensor
	constant cOneMHzClkPeriod		: time 	   											:= 1 us;				-- 1MHz clock
	constant cOneKHzClkPeriod		: time 	   											:= 1000 us;				-- 1KHz clock
	constant cNewDataReceived		: std_ulogic_vector (cDataWidthSensor-1 downto 0)	:= "10000000";			-- new data: 0x80
	
	-- component constants for avalon addresses
	constant cAddrMotionDetected 	:	std_ulogic_vector(gAddrWidth-1 downto 0)	:= std_ulogic_vector(to_unsigned(0, gAddrWidth));	-- addr: 0
	constant cAddrProductID			:	std_ulogic_vector(gAddrWidth-1 downto 0)	:= std_ulogic_vector(to_unsigned(1, gAddrWidth));	-- addr: 1
	constant cAddrData				:	std_ulogic_vector(gAddrWidth-1 downto 0)	:= std_ulogic_vector(to_unsigned(2, gAddrWidth));	-- addr: 2
	constant cAddrTimeMeasured		:	std_ulogic_vector(gAddrWidth-1 downto 0)	:= std_ulogic_vector(to_unsigned(3, gAddrWidth));	-- addr: 3
	
	-- component signals for sensor information
	signal DataValid				: std_ulogic 										:= '0';	
	signal Motion					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal DataX					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal DataY					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal ProductID				: std_ulogic_vector(cDataWidthSensor-1 downto 0)	:= (others => '0');
		
	-- internal data registers for relevant sensor data
	signal RegMotion				: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal RegDataX					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal RegDataY					: std_ulogic_vector(cDataWidthSensor-1 downto 0) 	:= (others => '0');
	signal RegTime					: std_ulogic_vector(gDataWidth-1 downto 0)			:= (others => '0');
	signal DataACK					: std_ulogic										:= '0';
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
	
	-- component declaration of OpticalSensorXY
	component OpticalSensorXY
		generic (
			gDataWidth			: integer := cDataWidthSensor;					-- bit width of optical sensor values
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
	MISO 			<= std_ulogic(iMISO);
	oMOSI 			<= std_logic(MOSI);
	oNPD 			<= std_logic(NPD);
	oResetSensor	<= std_logic(ResetSensor);
	oSysClk 		<= std_logic(SysClk);
	oSelect 		<= std_logic(Sel);

	-- #################################################
	-- Instantiation: Unit Under Test - OpticalSensorCommunicator
	-- #################################################
	uut : OpticalSensorXY
	generic map (
		gDataWidth 		=> cDataWidthSensor,
		gClkDivider		=> cClockFrequency/1000000
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
			DataACK 		<= '1';
			TimeCtr 		<= 0;

		elsif (rising_edge(Clk)) then
		
			-- increase time ctr each cycle to calculate speed in software
			-- time will be read by software
			TimeCtr <= TimeCtr + 1;
		
			-- check if new data received and old data are send to software
			if (Motion = cNewDataReceived and DataACK = '1') then
			
				RegMotion <= Motion;
				RegDataX  <= DataX;
				RegDataY  <= DataY;
				RegTime	  <= std_ulogic_vector(to_unsigned(TimeCtr, gDataWidth));
				DataACK   <= '0';
				TimeCtr   <= 0;
			end if;
		
		
			case AvalonAddr is	
				-- ProductID is readonly
				when cAddrProductID =>
				
						if (AvalonRE = '1') then
							AvalonReadData(cDataWidthSensor-1 downto 0) <= ProductID;
						end if;
						
				-- Motion is readonly	
				when cAddrMotionDetected =>
				
						if (AvalonRE = '1') then
							AvalonReadData(cDataWidthSensor-1 downto 0) <= RegMotion;
						end if;
						
				-- Motion is readonly	
				when cAddrTimeMeasured =>
				
						if (AvalonRE = '1') then
							AvalonReadData <= RegTime;
						end if;
						
				-- ATTENTION: read this address after cAddrMotionDetected and cAddrTimeMeasured because DataACK will be set! 
				-- This will give FPGA the posibility to overwrite Registers (DataX, DataY, Motion, Time) again!
				-- DataX and DataY are readonly
				when cAddrData =>
				
						if (AvalonRE = '1') then
							AvalonReadData((cDataWidthSensor*2)-1 downto 0) <= RegDataX & RegDataY;
							DataACK <= '1';
						end if;
				
				
				-- do nothing if other address active
				when others => 
					
			end case;		
		end if;
	end process;
	
end Rtl;