-------------------------------------------------------------------------------
-- Created	   :	17.01.2017
-- Author	   :	Michael Bierig
-- File        :	OpticalSensorCommunicator-Rtl-a.vhd
-- Description : 	architecture for communication between FPGA and OptiSensor
-------------------------------------------------------------------------------
-- Latest update:	22.01.2017
-------------------------------------------------------------------------------

architecture Rtl of OpticalSensorCommunicator is

	-- component types	
	type tCommunicationStates is (Init, SetBurstRegister, WaitForRead, ReadBurstRegister, OutputAndWaitForWrite);
		
	-- component signals
	signal State 				: tCommunicationStates 							:= Init; 
	signal BurstRegData			: std_ulogic_vector (gBurstRegWidth-1 downto 0)	:= (others => '0'); 
	signal MasterOutput			: std_ulogic									:= '0';
	signal SysClk 				: std_ulogic									:= '0';
	signal Sel 					: std_ulogic 									:= '1';
	signal ClkEnable			: std_ulogic									:= '0';
	signal OneMHzWaitClk		: std_ulogic									:= '0';
	signal DataValid			: std_ulogic									:= '0';
	signal SlaveClkCounter		: integer range 0 to gDataWidth-1				:= gDataWidth-1;
	signal SysClkGenCounter 	: integer 										:= 1;
	signal CntWaitCycles		: integer										:= 1;
	signal ClkGenCounter		: integer 										:= 1;

	
	-- component constants
	constant cBurstRegister		: std_ulogic_vector (gDataWidth-1 downto 0)		:= "01010000";			-- address: 0x50
	constant cMaxSysClkValue	: integer										:= 50;					-- 50MHz/50 = 1MHz for SysClk
	constant cDelayMotionReg	: integer										:= 75;					-- 75µs delay between write -> read
	constant cDelayNewData		: integer										:= 1;					-- 1µs delay between read -> write (min. 250ns)
	constant cMaxWriteBits		: integer										:= gDataWidth-1;		-- length of a register: 8 bit
	constant cMaxReadBits		: integer										:= gBurstRegWidth-1;	-- lengt of burst register: 56 bit
	constant cMaxClkValue		: integer										:= 50;					-- 50MHz/50 = 1MHz for WaitClk


begin

	WaitClkGen : process (iClk, inResetAsync) is
	begin
		if (inResetAsync = cnActivated) then
		
			OneMHzWaitClk <= '0';
			ClkGenCounter <= 1;
			
		elsif (rising_edge(iClk)) then
			if (ClkGenCounter = cMaxClkValue) then
				OneMHzWaitClk <= not OneMHzWaitClk;
				ClkGenCounter <= 1;
			else
				ClkGenCounter <= ClkGenCounter + 1;
			end if;
		end if;
	end process;
	
	RegAndClockGen : process (iClk, inResetAsync) is
	begin
		if (inResetAsync = cnActivated) then
		
			State 				<= Init;
			SlaveClkCounter 	<= gDataWidth-1;
			MasterOutput 		<= '0';
			SysClk 				<= '0';
			Sel 				<= '1';
			ClkEnable 			<= '0';
			DataValid 			<= '0';
			SysClkGenCounter 	<= 1;
			CntWaitCycles 		<= 1;
			BurstRegData 		<= (others => '0');
			
		elsif (rising_edge(iClk)) then	
			-- check if state Init is done
			if (Sel = cnActivated) then
				-- toggle SysClk for slave
				if (SysClkGenCounter = cMaxSysClkValue) then
					SysClk <= not SysClk;
					SysClkGenCounter <= 1;
				else 
					SysClkGenCounter <= SysClkGenCounter + 1;
				end if;
			end if;
			
			-- serial protocol communcation between FPGA and sensor
			case State is
				-- initialize slave select, reset slave clock and set MasterOutput
				when Init =>
										State 				<= SetBurstRegister;	
										SlaveClkCounter 	<= cMaxWriteBits;
										Sel 				<= cnActivated;
										CntWaitCycles		<= 1;
										SysClkGenCounter 	<= 1;
										MasterOutput 		<= '0';
										SysClk 				<= '0';	
										ClkEnable			<= '0';
										DataValid 			<= '0';
									
				when SetBurstRegister => 
										if (rising_edge(SysClk)) then
											if (SlaveClkCounter = 0) then
												-- change to wait state after sending address and disable SysClk (see datasheet ADNS 3080, page 18)
												State <= WaitForRead;
												Sel <= cnInactivated;
												SysClkGenCounter <= 0;
											end if;
										
											MasterOutput <= cBurstRegister(SlaveClkCounter);
											SlaveClkCounter <= SlaveClkCounter - 1;
										end if;
										
										DataValid <= '0';
															
				when WaitForRead =>				
										if (rising_edge(OneMHzWaitClk)) then
											if (CntWaitCycles = cDelayMotionReg) then
											
												State <= ReadBurstRegister;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxReadBits;
											end if;
										
											CntWaitCycles <= CntWaitCycles + 1;
										end if;
										
										-- Set master to 0 or no edge change?!
										-- MasterOutput <= '0';
										
				when ReadBurstRegister => 			
										if (rising_edge(SysClk)) then
											if (SlaveClkCounter = 0) then
											
												State <= WaitForWrite;
												Sel <= cnInactivated;
												SysClkGenCounter <= 0;
											end if;
									
											CntWaitCycles <= 1;
											BurstRegData(SlaveClkCounter) <= iMISO;
											SlaveClkCounter <= SlaveClkCounter - 1;
										end if;
																								
				when OutputAndWaitForWrite =>			
										if (rising_edge(OneMHzWaitClk)) then
											if (CntWaitCycles = cDelayNewData) then
											
												State <= SetBurstRegister;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= gDataWidth-1;
											end if;
											
											CntWaitCycles <= CntWaitCycles + 1;
										end if;
										
										-- output:
										oMotion	<= BurstRegData(55 downto 47);
										oDataX <= BurstRegData(46 downto 39);	
										oDataY <= BurstRegData(39 downto 32);				
										oSQUAL <= BurstRegData(31 downto 24);			
										oShutterUpper <= BurstRegData(23 downto 16);
										oShutterLower <= BurstRegData(15 downto 8);
										oMaximumPixel <= BurstRegData(7 downto 0);
										DataValid <= '1';
												
				when others =>			
										-- reset by error
										State <= Init;
										SlaveClkCounter 	<= gDataWidth-1;
										MasterOutput 		<= '0';
										SysClk 				<= '0';
										Sel 				<= '1';
										ClkEnable 			<= '0';
										DataValid 			<= '0';
										OneMHzWaitClk 		<= '0';
										ClkGenCounter 		<= 1;
										SysClkGenCounter 	<= 1;
										CntWaitCycles 		<= 1;
										BurstRegData 		<= (others => '0');
			end case;	
		end if;
	end process;
			
	oSysClk <= SysClk;
	oSelect <= Sel;
	oMOSI <= MasterOutput;
	oDataValid <= DataValid;

end Rtl;