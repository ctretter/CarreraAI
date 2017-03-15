-------------------------------------------------------------------------------
-- Created	   :	08.03.2017
-- Author	   :	Michael Bierig
-- File        :	OpticalSensorXY-Rtl-a.vhd
-- Description : 	architecture for communication between FPGA and OptiSensor
-------------------------------------------------------------------------------
-- Latest update:	08.03.2017
-------------------------------------------------------------------------------

architecture Rtl of OpticalSensorXY is

	-- component types	
	type tCommunicationStates is (Init, SetMotionReg, WaitForReadMotion, ReadMotionReg, CheckMotionReg, OutputAndWaitForWrite,
									WaitForWriteDataX, SetXReg, WaitForReadDataX, ReadXReg,
									WaitForWriteDataY, SetYReg, WaitForReadDataY, ReadYReg);
		
	-- component signals
	signal State 				: tCommunicationStates 							:= Init; 
	signal MotionReg			: std_ulogic_vector (gDataWidth-1 downto 0)		:= (others => '0'); 
	signal DataXReg				: std_ulogic_vector (gDataWidth-1 downto 0)		:= (others => '0'); 
	signal DataYReg				: std_ulogic_vector (gDataWidth-1 downto 0)		:= (others => '0'); 
	signal MasterOutput			: std_ulogic									:= '0';
	signal SysClk 				: std_ulogic									:= '0';
	signal Sel 					: std_ulogic 									:= '1';
	signal DataValid			: std_ulogic									:= '0';
	signal SlaveClkCounter		: integer 										:= gDataWidth-1;
	signal SysClkGenCounter 	: integer 										:= 1;
	signal CntWaitCycles		: integer										:= 1;

	
	-- component constants
	constant cMotionRegAddr		: std_ulogic_vector (gDataWidth-1 downto 0)		:= "00000010";			-- address: 0x02
	constant cDataXAddr			: std_ulogic_vector (gDataWidth-1 downto 0)		:= "00000011";			-- address: 0x03
	constant cDataYAddr			: std_ulogic_vector (gDataWidth-1 downto 0)		:= "00000100";			-- address: 0x04
	constant cNewDataReceived	: std_ulogic_vector (gDataWidth-1 downto 0)		:= "10000000";			-- new data: 0x80
	constant cMaxSysClkValue	: integer										:= gClkDivider;			-- 500KHz for SysClk
	constant cDelayRegisters	: integer										:= 100;					-- 100µs delay between write -> read
	constant cDelayNewData		: integer										:= 5;					-- 5µs delay between read -> write
	constant cMaxWriteBits		: integer										:= gDataWidth;			-- length of a register: 8 bit
	constant cMaxReadBits		: integer										:= gDataWidth;			-- length of single register: 8 bit


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
			SysClkGenCounter 	<= 1;
			CntWaitCycles 		<= 1;
			MotionReg 			<= (others => '0');
			DataXReg 			<= (others => '0');
			DataYReg 			<= (others => '0');
			
		elsif (rising_edge(iClk)) then

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
										State 				<= SetMotionReg;	
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
					
				-- states to read motion register	
				when SetMotionReg => 			
										if (SysClk = '1' and SysClkGenCounter = cMaxSysClkValue) then
											if (SlaveClkCounter /= 0) then
												if (SlaveClkCounter < cMaxWriteBits) then
													MasterOutput <= cMotionRegAddr(SlaveClkCounter-1);
												end if;
												
												SlaveClkCounter <= SlaveClkCounter - 1;
											else	
												-- change to wait state after sending address and disable SysClk (see datasheet ADNS 3080, page 18)
												State <= WaitForReadMotion;
												Sel <= cnInactivated;
												SysClkGenCounter <= 1;	
												SysClk <= '1';
												MasterOutput <= '0';
											end if;
										end if;
										
										DataValid <= '0';
															
				when WaitForReadMotion =>				
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayRegisters) then
											
												State <= ReadMotionReg;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxReadBits;
												CntWaitCycles <= 1;	
											else										
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
				when ReadMotionReg => 			
										if (SysClk = '1' and SysClkGenCounter = 1) then
											if (SlaveClkCounter /= 0) then
												if (SlaveClkCounter < cMaxReadBits) then
													MotionReg(SlaveClkCounter) <= iMISO;
												end if;
												
												SlaveClkCounter <= SlaveClkCounter - 1;
											else
												State <= CheckMotionReg;
												Sel <= cnInactivated;
												SysClkGenCounter <= 0;									
											end if;									
										end if;
										
				when CheckMotionReg =>
										if (MotionReg = cNewDataReceived) then
											State <= WaitForWriteDataX;
										else 
											State <= WaitForWriteDataX;
										end if;
				
				-- states to read DataX register					
				when WaitForWriteDataX =>							
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayNewData) then
											
												State <= SetXReg;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxWriteBits;
												SysClkGenCounter <= 1;
												CntWaitCycles <= 1;
											end if;
											
											CntWaitCycles <= CntWaitCycles + 1;
										end if;
										
				when SetXReg =>
										if (SysClk = '1' and SysClkGenCounter = cMaxSysClkValue) then
											if (SlaveClkCounter /= 0) then
												if (SlaveClkCounter < cMaxWriteBits) then
													MasterOutput <= cDataXAddr(SlaveClkCounter-1);
												end if;
												
												SlaveClkCounter <= SlaveClkCounter - 1;
											else	
												-- change to wait state after sending address and disable SysClk (see datasheet ADNS 3080, page 18)
												State <= WaitForReadDataX;
												Sel <= cnInactivated;
												SysClkGenCounter <= 1;	
												SysClk <= '1';
												MasterOutput <= '0';
											end if;
										end if;
				
				when WaitForReadDataX =>				
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayRegisters) then
											
												State <= ReadXReg;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxReadBits;
												CntWaitCycles <= 1;	
											else										
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
				when ReadXReg => 			
										if (SysClk = '1' and SysClkGenCounter = 1) then
											if (SlaveClkCounter /= 0) then
												if (SlaveClkCounter < cMaxReadBits) then
													DataXReg(SlaveClkCounter) <= iMISO;
												end if;
												
												SlaveClkCounter <= SlaveClkCounter - 1;
											else
												State <= WaitForWriteDataY;
												Sel <= cnInactivated;
												SysClkGenCounter <= 0;									
											end if;									
										end if;
										
				-- states to read DataY register						
				when WaitForWriteDataY =>							
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayNewData) then
											
												State <= SetYReg;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxWriteBits;
												SysClkGenCounter <= 1;
												CntWaitCycles <= 1;
											end if;
											
											CntWaitCycles <= CntWaitCycles + 1;
										end if;
										
				when SetYReg =>
										if (SysClk = '1' and SysClkGenCounter = cMaxSysClkValue) then
											if (SlaveClkCounter /= 0) then
												if (SlaveClkCounter < cMaxWriteBits) then
													MasterOutput <= cDataYAddr(SlaveClkCounter-1);
												end if;
												
												SlaveClkCounter <= SlaveClkCounter - 1;
											else	
												-- change to wait state after sending address and disable SysClk (see datasheet ADNS 3080, page 18)
												State <= WaitForReadDataY;
												Sel <= cnInactivated;
												SysClkGenCounter <= 1;	
												SysClk <= '1';
												MasterOutput <= '0';
											end if;
										end if;
				
				when WaitForReadDataY =>				
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayRegisters) then
											
												State <= ReadYReg;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxReadBits;
												CntWaitCycles <= 1;	
											else										
												CntWaitCycles <= CntWaitCycles + 1;
											end if;
										end if;
										
				when ReadYReg => 			
										if (SysClk = '1' and SysClkGenCounter = 1) then
											if (SlaveClkCounter /= 0) then
												if (SlaveClkCounter < cMaxReadBits) then
													DataYReg(SlaveClkCounter) <= iMISO;
												end if;
												
												SlaveClkCounter <= SlaveClkCounter - 1;
											else
												State <= OutputAndWaitForWrite;
												Sel <= cnInactivated;
												SysClkGenCounter <= 0;									
											end if;									
										end if;
				
				-- output after reading motion reg (if invalid) or reading X and Y
				when OutputAndWaitForWrite =>			
										if (iOneMHzStrobe = '1') then
											if (CntWaitCycles = cDelayNewData) then
											
												State <= SetMotionReg;
												Sel <= cnActivated;
												SysClk <= '1';
												SlaveClkCounter <= cMaxWriteBits;
												SysClkGenCounter <= 1;
												CntWaitCycles <= 1;
											end if;
											
											CntWaitCycles <= CntWaitCycles + 1;
										end if;
										
										-- output:
										oMotion	<= MotionReg;
										oDataX <= DataXReg;	
										oDataY <= DataYReg;				
											
										DataValid <= '1';
												
				when others =>			
										-- reset by error
										State 				<= Init;
										SlaveClkCounter 	<= cMaxWriteBits;
										MasterOutput 		<= '0';
										SysClk 				<= '1';
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

end Rtl;