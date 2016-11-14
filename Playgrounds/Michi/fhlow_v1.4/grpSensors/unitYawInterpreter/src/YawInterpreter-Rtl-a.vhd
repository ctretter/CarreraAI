-------------------------------------------------------------------------------
-- Created	   :	11.11.2016
-- Author	   :	Michael Bierig
-- File        :	YawInterpreter-Rtl-a.vhd
-- Description : 	architecture to intepret direction from yaw rate
-------------------------------------------------------------------------------
-- Latest update:	11.11.2016
-------------------------------------------------------------------------------

architecture Rtl of YawInterpreter is

	-- component types
	type tInputValueBuffer is array(gFilterSteps-1 downto 0) of std_ulogic_vector(gDataWidth-1 downto 0);
	
	-- component signals
	signal YawRateBuffer 	: tInputValueBuffer 									:= (others => (others => '0'));
	signal SumOfBuffer		: std_ulogic_vector(gFilterSteps+gDataWidth-1 downto 0) := (others => '0');
	signal Direction		: std_ulogic_vector(1 downto 0)							:= (others => '0');
	signal DataCalculated	: std_ulogic											:= '0';
	signal MemAccessCnt 	: integer range 0 to gFilterSteps+1						:= 0;
	
	-- component constants
	constant cDirError		: std_ulogic_vector (1 downto 0) := "00";
	constant cDirLeft		: std_ulogic_vector (1 downto 0) := "01";
	constant cDirRight		: std_ulogic_vector (1 downto 0) := "10";
	constant cDirForward	: std_ulogic_vector (1 downto 0) := "11";

begin

	SampleClkGen : process (iClk, inResetAsync) is
	begin
		if (inResetAsync = cnActivated) then
		
			YawRateBuffer	<= (others => (others => '0'));
			SumOfBuffer    	<= (others => '0');
			Direction 	   	<= (others => '0');
			DataCalculated 	<= '0';
			MemAccessCnt   	<= 0;
			
		elsif (rising_edge(iClk)) then
			
			if (iSampleClk = cActivated) then
			
				-- reset done signal and MemAccessCnt
				DataCalculated <= '0';
				MemAccessCnt <= 0;
			
				YawRateBuffer(0) <= iCurrentYawRate;
			
				-- shift values in buffer by one register
				for i in 0 to gFilterSteps-2 loop
					YawRateBuffer(i+1) <= YawRateBuffer(i);
				end loop;
			
			elsif (iSampleClk = cInactivated and DataCalculated = cInactivated) then
			
				if (MemAccessCnt < gFilterSteps) then
					SumOfBuffer <= std_ulogic_vector(signed(SumOfBuffer) + signed(YawRateBuffer(MemAccessCnt)));
					MemAccessCnt <= MemAccessCnt + 1;
					
				elsif (MemAccessCnt = gFilterSteps) then
					SumOfBuffer <= std_ulogic_vector(signed(SumOfBuffer) / to_signed(gFilterSteps, gDataWidth));
					MemAccessCnt <= MemAccessCnt + 1;
					
				else 
					if (to_integer(signed(SumOfBuffer)) > gYawRateLeft) then
						Direction <= cDirLeft;
					elsif (to_integer(signed(SumOfBuffer)) < gYawRateRight) then
						Direction <= cDirRight;
					elsif (to_integer(signed(SumOfBuffer)) < gYawRateLeft and to_integer(signed(SumOfBuffer)) > gYawRateRight) then
						Direction <= cDirForward;
					else
						Direction <= cDirError;
					end if;
					
					SumOfBuffer <= (others => '0');
					DataCalculated <= '1';	
				end if;
			end if;
		end if;
	end process;
	
	oDirection <= Direction;

end Rtl;