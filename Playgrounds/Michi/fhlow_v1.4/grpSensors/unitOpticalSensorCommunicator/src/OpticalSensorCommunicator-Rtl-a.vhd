-------------------------------------------------------------------------------
-- Created	   :	17.01.2017
-- Author	   :	Michael Bierig
-- File        :	OpticalSensorCommunicator-Rtl-a.vhd
-- Description : 	architecture for communication between FPGA and OptiSensor
-------------------------------------------------------------------------------
-- Latest update:	27.01.2017
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
	signal OneMHzSpike			: std_ulogic									:= '0';
	signal DataValid			: std_ulogic									:= '0';
	signal SlaveClkCounter		: integer 										:= gDataWidth-1;
	signal SysClkGenCounter 	: integer 										:= 1;
	signal CntWaitCycles		: integer										:= 1;
	signal ClkGenCounter		: integer 										:= 1;

	
	-- component constants
	constant cBurstRegister		: std_ulogic_vector (gDataWidth-1 downto 0)		:= "01010000";			-- address: 0x50
	constant cMaxSysClkValue	: integer										:= gClkDivider;			-- 1MHz for SysClk
	constant cDelayMotionReg	: integer										:= 75;					-- 75µs delay between write -> read
	constant cDelayNewData		: integer										:= 1;					-- 1µs delay between read -> write (min. 250ns)
	constant cMaxWriteBits		: integer										:= gDataWidth;			-- length of a register: 8 bit
	constant cMaxReadBits		: integer										:= gBurstRegWidth;		-- lengt of burst register: 56 bit
	constant cMaxClkValue		: integer										:= 50;					-- 50MHz/50 = 1MHz for WaitClk


begin

	RegAndClockGen : process (iClk, inResetAsync) is
	begin
		if (inResetAsync = cnActivated) then
		
			State 				<= Init;
			SlaveClkCounter 	<= gDataWidth-1;
			MasterOutput 		<= '0';
			SysClk 				<= '1';
			Sel 				<= '1';			
			DataValid 			<= '0';
			OneMHzSpike 		<= '0';
			ClkGenCounter 		<= 1;
			SysClkGenCounter 	<= 1;
			CntWaitCycles 		<= 1;
			BurstRegData 		<= (others => '0');
			
		elsif (rising_edge(iClk)) then

			-- generate 1MHz spike toggle
			if (ClkGenCounter = cMaxClkValue) then
				OneMHzSpike <= '1';
				ClkGenCounter <= 1;
			else
				OneMHzSpike <= '0';
				ClkGenCounter <= ClkGenCounter + 1;
			end if;

			-- generate SysClk
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
										SysClk 				<= '1';	
										DataValid 			<= '0';
										oMotion				<= (others => '0');
										oDataX 				<= (others => '0');	
										oDataY 				<= (others => '0');		
										oSQUAL 				<= (others => '0');		
										oShutterUpper 		<= (others => '0');
										oShutterLower 		<= (others => '0');
										oMaximumPixel 		<= (others => '0');
									
				when SetBurstRegister => 			
										if (SysClk = '1' and SysClkGenCounter = cMaxSysClkValue) then
											if (SlaveClkCounter /= 0) then
												if (SlaveClkCounter < cMaxWriteBits) then
													MasterOutput <= cBurstRegister(SlaveClkCounter-1);
												end if;
												
												SlaveClkCounter <= SlaveClkCounter - 1;
											else	
												-- change to wait state after sending address and disable SysClk (see datasheet ADNS 3080, page 18)
												State <= WaitForRead;
												Sel <= cnInactivated;
												SysClkGenCounter <= 1;	
												SysClk <= '1';
											end if;
										end if;
										
										DataValid <= '0';
															
				when WaitForRead =>				
										if (OneMHzSpike = '1') then
											if (CntWaitCycles = cDelayMotionReg) then
											
												State <= ReadBurstRegister;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxReadBits;
												CntWaitCycles <= 1;	
											else										
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
										-- Set master to 0 or no edge change?!
										-- MasterOutput <= '0';
										
				when ReadBurstRegister => 			
										if (SysClk = '1' and SysClkGenCounter = 1) then
											if (SlaveClkCounter /= 0) then
												if (SlaveClkCounter < cMaxReadBits) then
													BurstRegData(SlaveClkCounter) <= iMISO;
												end if;
												
												SlaveClkCounter <= SlaveClkCounter - 1;
											else
												State <= OutputAndWaitForWrite;
												Sel <= cnInactivated;
												SysClkGenCounter <= 0;									
											end if;									
										end if;
																								
				when OutputAndWaitForWrite =>			
										if (OneMHzSpike = '1') then
											if (CntWaitCycles = cDelayNewData) then
											
												State <= SetBurstRegister;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxWriteBits;
												SysClkGenCounter <= 1;
											end if;
											
											CntWaitCycles <= CntWaitCycles + 1;
										end if;
										
										-- output:
										oMotion	<= BurstRegData(55 downto 48);
										oDataX <= BurstRegData(47 downto 40);	
										oDataY <= BurstRegData(39 downto 32);				
										oSQUAL <= BurstRegData(31 downto 24);			
										oShutterUpper <= BurstRegData(23 downto 16);
										oShutterLower <= BurstRegData(15 downto 8);
										oMaximumPixel <= BurstRegData(7 downto 0);
										
										DataValid <= '1';
												
				when others =>			
										-- reset by error
										State 				<= Init;
										SlaveClkCounter 	<= cMaxWriteBits;
										MasterOutput 		<= '0';
										SysClk 				<= '1';
										Sel 				<= cnInactivated;					
										DataValid 			<= '0';
										OneMHzSpike 		<= '0';
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