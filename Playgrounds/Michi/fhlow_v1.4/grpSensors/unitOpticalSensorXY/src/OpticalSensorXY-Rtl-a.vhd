-------------------------------------------------------------------------------
-- Created	   :	08.03.2017
-- Author	   :	Michael Bierig
-- File        :	OpticalSensorXY-Rtl-a.vhd
-- Description : 	architecture for communication between FPGA and OptiSensor
-------------------------------------------------------------------------------
-- Latest update:	05.04.2017
-------------------------------------------------------------------------------

architecture Rtl of OpticalSensorXY is

	-- component types	
	type tCommunicationStates is (DoReset, WaitAfterReset, Init, 
									
									SetProductIDReg, WaitForReadProductID, ReadProductIDReg,
									SetMotionReg, WaitForReadMotion, ReadMotionReg, CheckMotionReg,
									SetDataXReg, WaitForReadDataX, ReadDataXReg,
									SetDataYReg, WaitForReadDataY, ReadDataYReg,
									OutputAndWaitForWrite
								);
		
	-- component signals
	signal State 				: tCommunicationStates 							:= Init; 
	signal MotionReg			: std_ulogic_vector (gDataWidth-1 downto 0)		:= (others => '0'); 
	signal DataXReg				: std_ulogic_vector (gDataWidth-1 downto 0)		:= (others => '0'); 
	signal DataYReg				: std_ulogic_vector (gDataWidth-1 downto 0)		:= (others => '0'); 
	signal ProductIDReg			: std_ulogic_vector	(gDataWidth-1 downto 0)		:= (others => '0');
	signal MasterOutput			: std_ulogic									:= '0';
	signal ResetSensor 			: std_ulogic									:= '0';
	signal SysClk 				: std_ulogic									:= '0';
	signal Sel 					: std_ulogic 									:= '1';
	signal DataValid			: std_ulogic									:= '0';
	signal SysClkEnable			: std_ulogic									:= '0';
	signal SlaveClkCounter		: integer 										:= gDataWidth-1;
	signal SysClkGenCounter 	: integer 										:= 1;
	signal CntWaitCycles		: integer										:= 1;
	signal ResetCnt				: integer										:= 0;


	-- component constants
	constant cMotionRegAddr		: std_ulogic_vector (gDataWidth-1 downto 0)		:= "00000010";					-- address: 0x02
	constant cDataXAddr			: std_ulogic_vector (gDataWidth-1 downto 0)		:= "00000011";					-- address: 0x03
	constant cDataYAddr			: std_ulogic_vector (gDataWidth-1 downto 0)		:= "00000100";					-- address: 0x04
	constant cProductIDAddr		: std_ulogic_vector (gDataWidth-1 downto 0)		:= "00000000";					-- address: 0x00
	constant cNewDataReceived	: std_ulogic_vector (gDataWidth-1 downto 0)		:= "10000000";					-- new data: 0x80
	constant cMaxSysClkValue	: integer										:= gClkDivider*2;				-- freq to sysclk: (gClkDivider*1MHz)/gClkDivider*2
	constant cDelayRegisters	: integer										:= 100;							-- 100 µs delay between write -> read
	constant cDelayNewData		: integer										:= 10;							-- 10 µs delay between read -> write
	constant cMaxWriteBits		: integer										:= gDataWidth;					-- length of a register: 8 bit
	constant cMaxReadBits		: integer										:= gDataWidth;					-- length of single register: 8 bit
	constant cResetTime			: integer 										:= 1000;						-- 1000 cycles of 1KHz clock
	constant cTimeAfterReset	: integer										:= 1000;						-- wait 1000 cycles of 1KHz after reset to get system stable again


begin

	RegAndClockGen : process (iClk, inResetAsync) is
	begin
		if (inResetAsync = cnActivated) then
		
			ResetSensor 		<= '1';
			ResetCnt			<= 0;
			State 				<= DoReset;
			SlaveClkCounter 	<= 0;
			MasterOutput 		<= '0';
			SysClk 				<= '0';
			Sel 				<= cnInactivated;			
			DataValid 			<= '0';
			SysClkGenCounter 	<= 1;
			CntWaitCycles 		<= 1;
			SysClkEnable 		<= '0';
			MotionReg 			<= (others => '0');
			DataXReg 			<= (others => '0');
			DataYReg 			<= (others => '0');
			
		elsif (rising_edge(iClk)) then

			-- generate SysClk
			if (Sel = cnActivated and SysClkEnable = '1') then
				-- toggle SysClk for slave
				if (SysClkGenCounter = cMaxSysClkValue) then
					SysClk <= not SysClk;
					SysClkGenCounter <= 1;
				else 
					SysClkGenCounter <= SysClkGenCounter + 1;
				end if;
			-- else set sysclk to high and restart counting
			else
				SysClkGenCounter <= 1;
				SysClk <= '1';
			end if;
				
					
			-- serial protocol communcation between FPGA and sensor
			case State is
			
				-- reset sensor 
				when DoReset =>
										if (iOneKHzStrobe = '1') then
											if (ResetCnt = cResetTime) then
												State <= WaitAfterReset;
												ResetCnt <= 0;
												ResetSensor <= '0';
											else
												ResetCnt <= ResetCnt + 1;
												ResetSensor <= '1';
											end if;
										end if;
				
				-- wait some time to get sensor system stable again			
				when WaitAfterReset =>
										if (iOneKHzStrobe = '1') then
											if (ResetCnt = cTimeAfterReset) then
												State <= Init;
												ResetCnt <= 0;
											else
												ResetCnt <= ResetCnt + 1;
											end if;
										end if;
			
				-- initialize slave select, reset slave clock and set MasterOutput
				when Init =>
										State 				<= SetProductIDReg;	
										SysClkEnable 		<= '0';
										SlaveClkCounter 	<= 0;
										Sel 				<= cnInactivated;
										CntWaitCycles		<= 1;
										SysClkGenCounter 	<= 1;
										MasterOutput 		<= '0';
										SysClk 				<= '0';	
										DataValid 			<= '0';
										oMotion				<= (others => '0');
										oDataX 				<= (others => '0');	
										oDataY 				<= (others => '0');	
										
				-- ###########################################################################	
				-- read product ID to verify connection and correct communcation to sensor!!
				-- ###########################################################################	
				when SetProductIDReg =>
										if (Sel = cnInactivated and SysClkEnable = '0') then
											Sel <= cnActivated;
											SysClkEnable <= '1';
											SlaveClkCounter <= cMaxWriteBits;
										else	
											-- set data to master output when sysclk is beginning low phase until to next low phase 
											if (SysClk = '1' and SysClkGenCounter = cMaxSysClkValue) then
												if (SlaveClkCounter /= 0) then
													if (SlaveClkCounter <= cMaxWriteBits) then
														MasterOutput <= cProductIDAddr(SlaveClkCounter-1);
													end if;
													
													SlaveClkCounter <= SlaveClkCounter - 1;
												else	
													-- change to wait state after sending address and reset waitcounter
													State <= WaitForReadProductID;
													MasterOutput <= '1';
													CntWaitCycles <= 1;
													SysClkEnable <= '0';
												end if;
											end if;
										end if;
										
				when WaitForReadProductID =>				
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayRegisters) then
											
												MasterOutput <= '0';
												State <= ReadProductIDReg;
												CntWaitCycles <= 1;	
											else										
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
				when ReadProductIDReg => 
										if (Sel = cnActivated and SysClkEnable = '0') then
											SysClkEnable <= '1';
											SlaveClkCounter <= cMaxReadBits;
										else
											if (SysClk = '0' and SysClkGenCounter = cMaxSysClkValue) then
												if (SlaveClkCounter /= 0) then
													if (SlaveClkCounter <= cMaxReadBits) then
														ProductIDReg(SlaveClkCounter-1) <= iMISO;
													end if;
													
													SlaveClkCounter <= SlaveClkCounter - 1;
												else
													State <= OutputAndWaitForWrite;
													SysClkEnable <= '0';
													Sel <= cnInactivated;	
													CntWaitCycles <= 1;	
												end if;									
											end if;
										end if;
				-- ###########################################################################	
				-- end of communcation test
				-- ###########################################################################	
				
				
				-- ###########################################################################	
				-- read motion register and check if new data received
				-- ###########################################################################	
				when SetMotionReg =>
										if (Sel = cnInactivated and SysClkEnable = '0') then
											Sel <= cnActivated;
											SysClkEnable <= '1';
											SlaveClkCounter <= cMaxWriteBits;
										else	
											-- set data to master output when sysclk is beginning low phase until to next low phase 
											if (SysClk = '1' and SysClkGenCounter = cMaxSysClkValue) then
												if (SlaveClkCounter /= 0) then
													if (SlaveClkCounter <= cMaxWriteBits) then
														MasterOutput <= cMotionRegAddr(SlaveClkCounter-1);
													end if;
													
													SlaveClkCounter <= SlaveClkCounter - 1;
												else	
													-- change to wait state after sending address and reset waitcounter
													State <= WaitForReadMotion;
													MasterOutput <= '1';
													CntWaitCycles <= 1;
													SysClkEnable <= '0';
												end if;
											end if;
										end if;
										
				when WaitForReadMotion =>				
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayRegisters) then
											
												MasterOutput <= '0';
												State <= ReadMotionReg;
												CntWaitCycles <= 1;	
											else										
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
				when ReadMotionReg => 
										if (Sel = cnActivated and SysClkEnable = '0') then
											SysClkEnable <= '1';
											SlaveClkCounter <= cMaxReadBits;
										else
											if (SysClk = '0' and SysClkGenCounter = cMaxSysClkValue) then
												if (SlaveClkCounter /= 0) then
													if (SlaveClkCounter <= cMaxReadBits) then
														MotionReg(SlaveClkCounter-1) <= iMISO;
													end if;
													
													SlaveClkCounter <= SlaveClkCounter - 1;
												else
													State <= CheckMotionReg;
													SysClkEnable <= '0';
													Sel <= cnInactivated;	
													CntWaitCycles <= 1;	
												end if;									
											end if;
										end if;
										
				when CheckMotionReg => 	
										if (MotionReg = cNewDataReceived) then
											State <= SetDataXReg;
										else
											State <= OutputAndWaitForWrite;
										end if;
				-- ###########################################################################	
				-- end of read motion register
				-- ###########################################################################	
				
				
				-- #####################
				-- read DataX register
				-- #####################
				when SetDataXReg =>
										if (Sel = cnInactivated and SysClkEnable = '0') then
											Sel <= cnActivated;
											SysClkEnable <= '1';
											SlaveClkCounter <= cMaxWriteBits;
										else	
											-- set data to master output when sysclk is beginning low phase until to next low phase 
											if (SysClk = '1' and SysClkGenCounter = cMaxSysClkValue) then
												if (SlaveClkCounter /= 0) then
													if (SlaveClkCounter <= cMaxWriteBits) then
														MasterOutput <= cDataXAddr(SlaveClkCounter-1);
													end if;
													
													SlaveClkCounter <= SlaveClkCounter - 1;
												else	
													-- change to wait state after sending address and reset waitcounter
													State <= WaitForReadDataX;
													MasterOutput <= '1';
													CntWaitCycles <= 1;
													SysClkEnable <= '0';
												end if;
											end if;
										end if;
										
				when WaitForReadDataX =>				
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayRegisters) then
											
												MasterOutput <= '0';
												State <= ReadDataXReg;
												CntWaitCycles <= 1;	
											else										
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
				when ReadDataXReg => 
										if (Sel = cnActivated and SysClkEnable = '0') then
											SysClkEnable <= '1';
											SlaveClkCounter <= cMaxReadBits;
										else
											if (SysClk = '0' and SysClkGenCounter = cMaxSysClkValue) then
												if (SlaveClkCounter /= 0) then
													if (SlaveClkCounter <= cMaxReadBits) then
														DataXReg(SlaveClkCounter-1) <= iMISO;
													end if;
													
													SlaveClkCounter <= SlaveClkCounter - 1;
												else
													State <= SetDataYReg;
													SysClkEnable <= '0';
													Sel <= cnInactivated;	
													CntWaitCycles <= 1;	
												end if;									
											end if;
										end if;
				
				-- #####################
				-- read DataY register
				-- #####################
				when SetDataYReg =>
										if (Sel = cnInactivated and SysClkEnable = '0') then
											Sel <= cnActivated;
											SysClkEnable <= '1';
											SlaveClkCounter <= cMaxWriteBits;
										else	
											-- set data to master output when sysclk is beginning low phase until to next low phase 
											if (SysClk = '1' and SysClkGenCounter = cMaxSysClkValue) then
												if (SlaveClkCounter /= 0) then
													if (SlaveClkCounter <= cMaxWriteBits) then
														MasterOutput <= cDataYAddr(SlaveClkCounter-1);
													end if;
													
													SlaveClkCounter <= SlaveClkCounter - 1;
												else	
													-- change to wait state after sending address and reset waitcounter
													State <= WaitForReadDataY;
													MasterOutput <= '1';
													CntWaitCycles <= 1;
													SysClkEnable <= '0';
												end if;
											end if;
										end if;
										
				when WaitForReadDataY =>				
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayRegisters) then
											
												MasterOutput <= '0';
												State <= ReadDataYReg;
												CntWaitCycles <= 1;	
											else										
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
				when ReadDataYReg => 
										if (Sel = cnActivated and SysClkEnable = '0') then
											SysClkEnable <= '1';
											SlaveClkCounter <= cMaxReadBits;
										else
											if (SysClk = '0' and SysClkGenCounter = cMaxSysClkValue) then
												if (SlaveClkCounter /= 0) then
													if (SlaveClkCounter <= cMaxReadBits) then
														DataYReg(SlaveClkCounter-1) <= iMISO;
													end if;
													
													SlaveClkCounter <= SlaveClkCounter - 1;
												else
													State <= OutputAndWaitForWrite;
													SysClkEnable <= '0';
													Sel <= cnInactivated;	
													CntWaitCycles <= 1;	
												end if;									
											end if;
										end if;
																
				-- #####################
				-- output data
				-- #####################
				when OutputAndWaitForWrite =>		
										if (iOneMHzStrobe = '1') then											
											if (CntWaitCycles = cDelayNewData) then
											
												State <= SetMotionReg;
												CntWaitCycles <= 1;	
												DataValid <= '0';
											else							
												DataValid <= '1';
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
										oMotion <= MotionReg;
										oDataX <= DataXReg;
										oDataY <= DataYReg;
										oProductID <= ProductIDReg;
										
																					
				when others =>			
										-- reset by error
										State 				<= Init;
										SlaveClkCounter 	<= cMaxWriteBits;
										MasterOutput 		<= '0';
										SysClk 				<= '0';
										Sel 				<= cnInactivated;					
										DataValid 			<= '0';										
										SysClkGenCounter 	<= 1;
										CntWaitCycles 		<= 1;
										MotionReg 			<= (others => '0');
										DataXReg 			<= (others => '0');
										DataYReg 			<= (others => '0');
			end case;	
		end if;
	end process;
			
	oSysClk <= SysClk;
	oSelect <= Sel;
	oMOSI <= MasterOutput;
	oDataValid <= DataValid;
	oResetSensor <= ResetSensor;
	oNPD <= cActivated; -- do not power down sensor any time!

end Rtl;