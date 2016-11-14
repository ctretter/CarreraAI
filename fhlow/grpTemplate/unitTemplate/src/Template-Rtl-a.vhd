-------------------------------------------------------------------------------
-- Title      : <Short title for this unit>
-- Project    : <Name of the design project>
-------------------------------------------------------------------------------
-- RevCtrl    : $Id: Template-Rtl-a.vhd 63 2011-11-05 14:02:00Z mroland $
-- Author     : <Author(s) of this file>
-------------------------------------------------------------------------------
-- Description: <Detailed description of this unit's purpose>
-------------------------------------------------------------------------------

architecture Rtl of Template is

  type aRegSet is record
  end record aRegSet;

  constant cRinitVal: aRegSet := (
  );

  signal R, NextR : aRegSet;
  
begin
 
  ------------
  -- Registers
  ------------
  Registers : process(iClk, inResetAsync)
  begin
    if (inResetAsync = cnActivated) then
      R <= cRinitVal;
    elsif ((iClk'event) and (iClk = '1')) then
      R <= NextR;  
    end if;
  end process;

  -----------------------------------------------------------------------------
  -- Next State and Output Logic: Combinatorial
  -----------------------------------------------------------------------------
  NextStateAndOutput : process (
    
    
  )

  begin

    ---------------------------------------------------------------------------
    -- Set Next State Defaults
    ---------------------------------------------------------------------------
    NextR <= R;

    ---------------------------------------------------------------------------
    -- Set Output Defaults
    ---------------------------------------------------------------------------

    ---------------------------------------------------------------------------
    -- Consider Actual States and Inputs
    ---------------------------------------------------------------------------
    
    
    
  end process NextStateAndOutput;

  -----------------------------------------------------------------------------
  -- Write to Outputs
  -----------------------------------------------------------------------------

end Rtl;
