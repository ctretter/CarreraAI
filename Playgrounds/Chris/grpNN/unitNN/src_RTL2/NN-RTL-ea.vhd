library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-----------------------------------------
--only for simulation to ignore altera IP
--use ieee.math_real.all;
-----------------------------------------
--library floatfixlib;
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

		oThrottle	: out sfixed(gDataWidth-1 downto (0-gFractionWidth))
	);
end NeuralNetwork;



architecture RTL2 of NeuralNetwork is
	signal Exponent : signed((gDataWidth+gFractionWidth)-1 downto 0);
	signal IP_Result : sfixed(gDataWidth-1 downto (0-gFractionWidth));
	signal Reset : std_ulogic;
	signal TMP_RES : signed((gDataWidth+gFractionWidth)-1 downto 0);
	signal Enable : std_ulogic;
	signal Count: unsigned(7 downto 0);
begin
	
	Exponential : entity work.ALTFP_EXa_altfp_exp_iuc(RTL)
		port map(
			aclr 	=> 	Reset,
			clock 	=> 	iclk,
			data 	=> 	std_logic_vector(Exponent),
			signed(result) => TMP_RES
		);
		
		Reset <=  not(inReset);
	
	
	IP_Result <= to_sfixed(to_float(tmp_res),(gDataWidth-1), (0-gFractionWidth));
	
    --tmp_Bhv_instead_IP: process(iclk, inReset)
	--variable tmp_res : std_ulogic_vector((gDataWidth+gFractionWidth)-1 downto 0);
    	--begin
		--Valid <= '0';
		--if (inReset = cnActivated) then
    	--	tmp_res := (others => '0');
		--	Valid <= '0';
		--	OldExponent <= (others => '0');
		--elsif (iclk'event and iclk = '1') then
		--	if (Exponent /= OldExponent) then
		--		OldExponent <= Exponent;
		--		tmp_res := std_ulogic_vector(to_signed(integer(MATH_E**real(to_integer(signed(Exponent)))),64));
		--		IP_Result <= to_sfixed(tmp_res, (gDataWidth-1), (0-gFractionWidth));
		--		Valid <= '1';
		--	end if;
		--end if;
    	--end process;
		
		--convert mapped ports
	--	Conv_Ports : x_conv 	<= std_ulogic_vector(to_signed((to_integer(signed(to_std_ulogic_vector(not(x))))+1),64));
		--x_conv 	<= to_std_ulogic_vector(x_nxt);
    	--	Calc_Res: Res 	<= to_sfixed(Res_conv, 11, -52);
		
	Counter: process (iclk , inReset) is	
	begin
		if(inReset = cnActivated) then
			Count <= (others => '0');
		elsif (iclk'event and iclk = '1') then
			if (Enable = '1') then
				Count <=  Count + 1;
			end if;
		end if;
	end process;
		
		

    Think: process is
	variable vThrottle: sfixed(gDataWidth-1 downto (0-gFractionWidth));
	variable vDendrites_0	: tDendrites_0;
	variable vtmpDendrites_1: tDendrites_1;
	variable vDendrites_1   : tDendrites_1;
	variable vtmpDiv	: sfixed(64 downto -64);
	variable vtmpMatrixMul  : sfixed(24 downto -104);
	variable vtmpDotMul	: sfixed(24 downto -104);
	variable vDotMul	: sfixed(gDataWidth-1 downto (0-gFractionWidth));
	variable vInverted	: sfixed(gDataWidth downto (0-gFRactionWidth));
	subtype t is SIGNED(gDataWidth-1 + gFRactionWidth downto 0);
	variable vfloat		: float64;
	variable vtmps		: sfixed(gDataWidth-1 downto (0-gFractionWidth));
	subtype conv is std_ulogic_vector(vtmps'length-1 downto 0);
	variable vtmptmp 	: t;
	begin
		wait on inReset, iSpeed, iGyro, iRelation, iPos, iNCurve;
    	if(inReset = cnActivated) then
		    vDendrites_0 	:= ((others=> (others => '0')));
		    vDendrites_1	:= ((others=> (others => '0')));
		    vtmpDendrites_1	:= ((others=> (others => '0')));
		    vThrottle		:= (others => '0');
		    vtmpMatrixMul	:= (others => '0');
		    vtmpDotMul		:= (others => '0');
			Enable <= '0';
			--Count <= (others => '0');
	    else
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
			    --Exponent <= to_signed((to_integer(signed(to_std_ulogic_vector((vInverted(gDataWidth)&vInverted(gDataWidth-2 downto (0-gFractionWidth))))))*65536),gDataWidth+gFractionWidth);
				--vtmps(gFractionWidth-1 downto 0) := signed((vInverted(0 downto 0-gFractionWidth) sll 52));
				--vtmps := signed((vInverted(gDataWidth)&vInverted(gDataWidth-2 downto (0-gFRactionWidth))));
				--vtmptmp := signed((vInverted sll 52));
				--vtmps := (vtmptmp(64) & vtmptmp(62 downto 0));
				vtmps := (vInverted(gDataWidth)&vInverted(gDataWidth-2 downto (0-gFractionWidth)));
				vtmptmp := t(vtmps);
				vfloat := to_float64(to_float((vtmptmp), vfloat));
				--vfloat := to_float(vtmps,vfloat);
				Exponent <= to_signed(vfloat,64);
				Enable <= '1';
				wait until Count = "11001";
				Enable <= '0';
				Count <= (others => '0');
			    vtmpDiv := (c_FP_one/(c_FP_one + IP_Result));
			    vDendrites_1(i) := vtmpDiv(vtmpDiv'high) & vtmpDiv((gDataWidth-2) downto (0-gFractionWidth));
		    end loop;
		    
		    --calculate  dot product
		   -- Dendrite_conv := gSynWeigth1(0) * Dendrite_1(0) + gSynWeigth1(1) * Dendrite_1(1) + gSynWeigth1(2) * Dendrite_1(2);	
		   -- Dendrite <= Dendrite_conv(Dendrite_conv'high) & Dendrite_conv(10 downto -52);

		    for i in 2 downto 0 loop
			vtmpDotMul := vDotMul + (gSynWeigth1(i) * vDendrites_1(i));
			vDotMul  := vtmpDotMul(vtmpDotMul'high) & vtmpDotMul((gDataWidth-2) downto (0-gFractionWidth));
		    end loop;

		     -- conversion because of IP Block used from Altera
		    vInverted := not(vDotMul) + c_FP_one;
		    wait until iclk'event and iclk = '0';
			
		    Exponent <= to_signed(integer(to_real((vInverted(gDataWidth)&vInverted(gDataWidth-2 downto (0-gFractionWidth))))),gDataWidth+gFractionWidth);
		    Enable <= '1';
			wait until Count = "11001";
			Enable <= '0';
			Count <= (others => '0');
		    vtmpDiv := (c_FP_one/(c_FP_one + IP_Result));
		    vThrottle := vtmpDiv(vtmpDiv'high) & vtmpDiv((gDataWidth-2) downto (0-gFractionWidth));
			
		end if;
		
		oThrottle <= vThrottle;
	
	end process;

end architecture RTL2;
