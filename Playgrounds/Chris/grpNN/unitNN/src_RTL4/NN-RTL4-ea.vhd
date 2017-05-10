library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-------------------------------
use work.fixed_float_types.all;
use work.float_pkg.all;

use work.fixed_pkg.all;
use work.NN.all;


entity NeuralNetwork is 
	generic (
		gFractionWidth	: integer := cFractionWidth;
		gDataWidth	: integer := cDataWidth;	
		gSynWeigth0	: tSynapse_0 := cTrainedWeigth0;
		gSynWeigth1	: tSynapse_1 := cTrainedWeigth1
	);
	port (
		iclk		: in std_ulogic;
		inReset 	: in std_ulogic;
	    
		iSpeed		: in sfixed(gDataWidth-1 downto (0-gFractionWidth));
		iGyro		: in sfixed(gDataWidth-1 downto (0-gFractionWidth));
		iRelation	: in sfixed(gDataWidth-1 downto (0-gFractionWidth));
		iPos		: in sfixed(gDataWidth-1 downto (0-gFractionWidth));
		iNCurve		: in sfixed(gDataWidth-1 downto (0-gFractionWidth));

		oThrottle	: out sfixed(gDataWidth-1 downto (0-gFractionWidth));
		oRdy		:out std_ulogic
	);
end NeuralNetwork;



architecture RTL4 of NeuralNetwork is
	constant cCntWidth : integer := 8;
	signal Exponent : signed((gDataWidth+gFractionWidth)-1 downto 0);
	signal Exponent_Conv : signed((gDataWidth+gFractionWidth)-1 downto 0);
	signal IP_Result : sfixed(gDataWidth-1 downto (0-gFractionWidth));
	signal Reset : std_ulogic;
	signal TMP_RES : signed((gDataWidth+gFractionWidth)-1 downto 0);
	signal TMP_RES_Conv : signed((gDataWidth+gFractionWidth)-1 downto 0);
	signal Enable : std_ulogic;
	signal Count: unsigned(cCntWidth-1 downto 0);
	subtype sf is sfixed(gDataWidth-1 downto (0-gFRactionWidth));
begin
	
	Exponential : entity work.ALTFP_EXa_altfp_exp_iuc(RTL)
		port map(
			aclr 	=> 	Reset,
			clock 	=> 	iclk,
			data 	=> 	std_logic_vector(Exponent_Conv),
			signed(result) => TMP_RES
		);
		
		Reset <=  not(inReset);
	
	--Conversion from Fixed to Float64
	FloatConv_inst : entity work.FloatConv PORT MAP (
		aclr	 => Reset,
		clock	 => iclk,
		dataa	 => std_logic_vector(Exponent),
		signed(result)	 => Exponent_Conv
	);
	
	
	--Conversion from float64 to fixed
	
	tofixed_inst : entity work.tofixed PORT MAP (
		aclr	 => Reset,
		clock	 => iclk,
		dataa	 => std_logic_vector(TMP_RES),
		signed(result)	 => TMP_RES_Conv
	);
	
	IP_Result <= sf(TMP_RES_Conv);
	

		
	Counter: process (iclk , inReset) is	
	begin
		if(inReset = '0') then
			Count <= (others => '0');
		elsif (iclk'event and iclk = '1') then
			if (Enable = '1') then
				Count <=  Count + 1;
			else
				Count <= (others => '0');
			end if;
		end if;
	end process;
		
		

    Think: process is
	variable vThrottle: sfixed(gDataWidth-1 downto (0-gFractionWidth));
	variable vDendrites_0	: tDendrites_0;
	variable vtmpDendrites_1: tDendrites_1;
	variable vDendrites_1   : tDendrites_1;
	variable vtmpDiv	: sfixed(gDataWidth+gFractionWidth downto (0-(gDataWidth+gFractionWidth)));
	variable vtmpAdd	: sfixed(gDataWidth downto -gFractionWidth);
	variable vtmpMatrixMul  : sfixed((gDataWidth+gDataWidth) downto (0-(gFRactionWidth+gFractionWidth)));
	variable vtmpDotMul	: sfixed((gDataWidth+gDataWidth) downto (0-(gFRactionWidth+gFractionWidth)));
	variable vDotMul	: sfixed(gDataWidth-1 downto (0-gFractionWidth));
	variable vInverted	: sfixed(gDataWidth downto (0-gFRactionWidth));
	subtype t is SIGNED(gDataWidth-1 + gFRactionWidth downto 0);
	variable vfloat		: float64;
	variable vtmps		: sfixed(gDataWidth-1 downto (0-gFractionWidth));
	subtype conv is std_ulogic_vector(vtmps'length-1 downto 0);
	variable vtmptmp 	: t;
	begin

		vtmpMatrixMul	:= (others => '0');
		vtmpDendrites_1	:= ((others=> (others => '0')));
		vDotMul := (others => '0');
		Exponent <= (others => '0');


		wait on inReset, iSpeed, iGyro, iRelation, iPos, iNCurve;
	   if(inReset = cnActivated) then
		    vDendrites_0 	:= ((others=> (others => '0')));
		    vDendrites_1	:= ((others=> (others => '0')));
		    vtmpDendrites_1	:= ((others=> (others => '0')));
		    vThrottle		:= (others => '0');
		    vtmpMatrixMul	:= (others => '0');
		    vtmpDotMul		:= (others => '0');
		    Enable <= '0';
		    oRdy <= '1';
	    else
		    oRdy <= '0';
		    --assign input values to vector
		    vDendrites_0 := (iNCurve, iPos, iRelation, iGyro, iSpeed); 		
		
		    --calculate matrix product of matrix and vector
		    for j in 2 downto 0 loop
			for i in 4 downto 0 loop
 			    vtmpMatrixMul := vtmpDendrites_1(j) + (gSynWeigth0(j,i) * vDendrites_0(i));
			    vtmpDendrites_1(j) := vtmpMatrixMul(vtmpMatrixMul'high) & vtmpMatrixMul((gDataWidth-2) downto (0-gFractionWidth));
			end loop;
		    end loop;
		    
		    for i in 2 downto 0 loop
			    -- conversion because of IP Block used from Altera
			    vInverted := not(vtmpDendrites_1(i)) + c_FP_one;
			    wait until iclk'event and iclk = '0';
				vtmps := (vInverted(gDataWidth)&vInverted(gDataWidth-2 downto (0-gFractionWidth)));
				Exponent <= t(vtmps);
				Enable <= '1';
				wait until Count = "00100101";
				wait until iclk'event and iclk = '0';
				Enable <= '0';
				vtmpAdd := (c_FP_one sll gFractionWidth) + IP_Result;
			    vtmpDiv := ((c_FP_one sll gFractionWidth)/(vtmpAdd));
			    vDendrites_1(i) := (vtmpDiv(vtmpDiv'high) & vtmpDiv((gDataWidth-2) downto (0-gFractionWidth)));
		    end loop;
		    
		    --calculate  dot product
		    for i in 2 downto 0 loop
			vtmpDotMul := vDotMul + (gSynWeigth1(i) * vDendrites_1(i));
			vDotMul  := vtmpDotMul(vtmpDotMul'high) & vtmpDotMul((gDataWidth-2) downto (0-gFractionWidth));
		    end loop;

		     -- conversion because of IP Block used from Altera
		    vInverted := not(vDotMul) + c_FP_one;
		    wait until iclk'event and iclk = '0';
			
		   
		    vtmps := (vInverted(gDataWidth)&vInverted(gDataWidth-2 downto (0-gFractionWidth)));
			Exponent <= t(vtmps);
			Enable <= '1';
			wait until Count = "00100101";
			wait until iclk'event and iclk = '0';
			Enable <= '0';
			vtmpAdd := (c_FP_one sll gFRactionWidth) + IP_Result;
		    vtmpDiv := ((c_FP_one sll gFRactionWidth)/(vtmpAdd));
		    vThrottle := vtmpDiv(vtmpDiv'high) & vtmpDiv((gDataWidth-2) downto (0-gFractionWidth));
			
		end if;
		
		oThrottle <= vThrottle;
		oRdy <= '1';
	
	end process;

end architecture RTL4;
