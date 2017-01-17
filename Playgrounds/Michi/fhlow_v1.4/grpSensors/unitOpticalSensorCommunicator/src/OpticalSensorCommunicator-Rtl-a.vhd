-------------------------------------------------------------------------------
-- Created	   :	17.01.2017
-- Author	   :	Michael Bierig
-- File        :	OpticalSensorCommunicator-Rtl-a.vhd
-- Description : 	architecture for communication between FPGA and OptiSensor
-------------------------------------------------------------------------------
-- Latest update:	17.01.2017
-------------------------------------------------------------------------------

architecture Rtl of OpticalSensorCommunicator is

	-- component types	
	type tCommunicationStates is (Init, SetBurstRegister, ReadBurstRegister);
		
	-- component signals
	signal CurrentState 		: tCommunicationStates 							:= Init; 
	signal DataX 				: std_ulogic_vector (gDataWidth-1 downto 0) 	:= (others => '0');
	signal DataY 				: std_ulogic_vector (gDataWidth-1 downto 0) 	:= (others => '0');
	signal MasterOutput			: std_ulogic									:= '0';
	signal SysClk 				: std_ulogic									:= '0';
	signal Sel 					: std_ulogic 									:= '1';
	signal SlaveClkCounter		: integer range 0 to gDataWidth-1				:= gDataWidth-1;
	signal ClkGenCounter 		: integer 										:= 1;
	
	
	-- component constants
	--constant cAddrMotion		: std_ulogic_vector (gDataWidth-1 downto 0)  	:= "00000010";			-- address: 0x02
	--constant cAddrDeltaX		: std_ulogic_vector (gDataWidth-1 downto 0)  	:= "00000011";			-- address: 0x03
	--constant cAddrDeltaY		: std_ulogic_vector (gDataWidth-1 downto 0)		:= "00000100";			-- address: 0x04
	--constant cAddrMotionClear : std_ulogic_vector (gDataWidth-1 downto 0)		:= "00010010";			-- address: 0x12			
	--constant cMotionValid		: std_ulogic_vector	(gDataWidth-1 downto 0)		:= "10000000";			-- value: 	0x80
	constant cBurstRegister		: std_ulogic_vector (gDataWidth-1 downto 0)		:= "01010000";			-- address: 0x50
	constant cMaxClkValue		: integer										:= 50;



begin

	RegAndClockGen : process (iClk, inResetAsync) is
	begin
		if (inResetAsync = cnActivated) then
		
			CurrentState <= Init;
			SlaveClkCounter <= gDataWidth-1;
			ClkGenCounter <= 1;
			MasterOutput <= '0';
			SysClk <= '0';
			Sel <= '1';
			
		elsif (rising_edge(iClk)) then
			
			-- check if state Init is done
			if (Sel = cnActivated) then
				-- toggle SysClk for slave
				if (ClkGenCounter = cMaxClkValue) then
					SysClk <= not SysClk;
					ClkGenCounter <= 1;
				else 
					ClkGenCounter <= ClkGenCounter + 1;
				end if;
			end if;
			
			-- state machine
			case CurrentState is
			
				-- initialize slave select, reset slave clock and set MasterOutput
				when Init =>
										CurrentState 	<= SetBurstRegister;	
										SlaveClkCounter <= gDataWidth-1;
										ClkGenCounter 	<= 1;
										MasterOutput 	<= '0';
										SysClk 			<= '0';
										Sel 			<= '0';
									
				when SetBurstRegister => 
										
										-- TODO: write register address using sysclk
			
				when ReadBurstRegister => 
			
										-- TODO: read burst register using sysclk and extract the important informatin (X,Y)
			
				when others =>
				
										-- TODO: error state
			
			end case;
		
		
			
			
		
		
		end if;
	end process;
			
	oSysClk <= SysClk;
	oSelect <= Sel;



end Rtl;