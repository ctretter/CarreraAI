library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-------------------------------
library ieee_proposed;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.float_pkg.all; 
use ieee_proposed.fixed_pkg.all;

use work.NN.all;

entity NeuralNetwork is 
	generic (
		gFractionWidth	: integer := cFractionWidth;
		gDataWidth	: integer := cDataWidth;	
		gSynWeigth0	: tSynapseMatrix(2 downto 0, 4 downto 0) := cTrainedWeigth0;
		gSynWeigth1	: tSynapse(2 downto 0) := cTrainedWeigth1
	);
	port (
		iclk		: in std_ulogic;
		inReset 	: in std_ulogic;
	    
		iSpeed		: in sfixed(gDataWidth-1 downto (0-gFractionWidth));
		iGyro		: in sfixed(gDataWidth-1 downto (0-gFractionWidth));
		iRelation	: in sfixed(gDataWidth-1 downto (0-gFractionWidth));
		iPos		: in sfixed(gDataWidth-1 downto (0-gFractionWidth));
		iNxtCurve	: in sfixed(gDataWidth-1 downto (0-gFractionWidth));

		oThrottle	: out sfixed(gDataWidth-1 downto (0-gFractionWidth));
		oRdy		: out std_ulogic
	);
end NeuralNetwork;



architecture RTL5 of NeuralNetwork is

	
	signal Enable	     : std_ulogic;
	signal Dendrites0	 : tDendrites(4 downto 0);
	signal Dendrites1 	 : tDendrites(2 downto 0);
	signal Throttle 	 : tDendrites(0 downto 0); 
	
begin

Dendrites0 <= (iNxtCurve, iPos, iRelation, iGyro, iSpeed);
Enable <= '1';

FirstStage: entity work.Think 
	generic map(
		gNeurons => 3,
		gValues => 5,
		gFractionWidth => gFractionWidth,
		gDataWidth => gDataWidth,
		gEndState => 0
	)
	port map(
		iclk => iclk,
		inReset => inReset,
		iStart => Enable,
		iValues => Dendrites0,
		oValues => Dendrites1,
		SynWeigth => gSynWeigth0
	);

	
	
--SecondStage: entity work.Think 
--	generic map(
--		gNeurons => 1,
--		gValues => 3,
--		gFractionWidth => gFractionWidth,
--		gDataWidth => gDataWidth
--		gEndState => 1
--	)
--	port map(
--		iclk => iclk,
--		inReset => inReset,
--		iStart => Enable,
--		iValues => Dendrites1,
--		oValues => Throttle,
--		SynWeigth => Syn2SynMa(gSynWeigth1)
--s	);

end architecture RTL5;
