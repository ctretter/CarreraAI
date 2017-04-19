-- PWM_Motor_Control.vhd

-- This file was auto-generated as a prototype implementation of a module
-- created in component editor.  It ties off all outputs to ground and
-- ignores all inputs.  It needs to be edited to make it do something
-- useful.
-- 
-- This file will not be automatically regenerated.  You should check it in
-- to your version control system if you want to keep it.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.PwmGenPack.all;
use work.Global.all;

entity Motor_Control is
  generic (
    gQSYS_ClkFrequency_Hz : natural := 50E6;
	gQSYS_MotorFrequency_Hz : natural := 1000;
	gQSYS_TimerResolution_us : natural := 1;
	gQSYS_TimeOut_ms : natural := 100;
	gQSYS_ValidSamples : natural := 10
    );
  port (
    avs_s0_address   : in  std_logic_vector(2 downto 0)  := (others => '0');  --   avs_s0.address
    avs_s0_read      : in  std_logic                     := '0';  --         .read
    avs_s0_readdata  : out std_logic_vector(31 downto 0);  --         .readdata
    avs_s0_write     : in  std_logic                     := '0';  --         .write
    avs_s0_writedata : in  std_logic_vector(31 downto 0) := (others => '0');  -- .writedata
    clock_clk        : in  std_logic                     := '0';  --    clock.clk
    reset_n          : in  std_logic                     := '0';  --    reset.reset
    SENSOR           : in  std_logic                     := '0';  --    wheel sensor signal
	ROUND			 : in  std_logic					 := '0';  -- round sensor signal
    PWM_CTRL         : out std_logic;   -- external.name
    ACTIVATE         : out std_logic    --         .new_signal_1
    );
end entity Motor_Control;

architecture rtl of Motor_Control is
-- convert parameters to time constants since qsys can not provide type "time"
  -- cResolutionBits is from PkgPwmGen!
  constant cStrobeCycleTime : time := (1.0 sec)/gQSYS_MotorFrequency_Hz/(2**cResolutionBits); 
  constant cTimerResolution : time := gQSYS_TimerResolution_us * 1 us;
  constant cTimeOut         : time:= gQSYS_TimeOut_ms * 1 ms;
  
  -- QSYS unresolved signals for wrapper
  signal savs_s0_address   : std_ulogic_vector(2 downto 0);  --   avs_s0.address
  signal savs_s0_read      : std_ulogic;  --         .read
  signal savs_s0_readdata  : std_ulogic_vector(31 downto 0);  --         .readdata
  signal savs_s0_write     : std_ulogic;  --         .write
  signal savs_s0_writedata : std_ulogic_vector(31 downto 0);
  signal sclock_clk        : std_ulogic;  --    clock.clk
  signal sreset_n          : std_ulogic;  --    reset.reset
  signal sSENSOR           : std_ulogic;  --    sensor signal
  signal sROUND			   : std_ulogic;  --    round signal
  signal sPWM_CTRL         : std_ulogic;  -- external.name
  signal sACTIVATE         : std_ulogic;  --         .new_signal_1
  -- internal control signal
  signal trigger_pwm        : std_ulogic;  -- new pwm width received from bus
  signal trigger_pulses     : std_ulogic;  -- new pulse count value received from bus
  signal trigger_resetRound : std_ulogic;  -- reset round flag
  signal PwmSig 			: std_ulogic;  -- pwm signal before multiplexer
  
  signal resetRoundFlag     : std_ulogic;  -- reset round flag
  
  -- *** MODULE-REGISTERS *** --
  -- Register 0 - control
  signal Reg0_Control           : std_ulogic_vector(31 downto 0);
    constant Reg0_Ctrl_EN_PWM     : natural := 0;  -- Bit 0: EN_PWM ...... Enable PWM Output
    constant Reg0_Ctrl_RUN        : natural := 1;  -- Bit 1: RUN ......... :1=RUN, :0=BRAKE
	constant Reg0_Ctrl_RES_ROUND  : natural := 2;  -- Bit 2: RES_ROUND ... Reset new round flag 

  -- Register 1 - control
  signal Reg1_Status            : std_ulogic_vector(31 downto 0);  -- status bits
	constant Reg1_Stat_Round      : natural := 0; -- Bit 0: new round flag (reset-able)
	constant Reg1_Stat_RoundToggle: natural := 1; -- Bit 1: new round flag (toggled)


  -- Register 2 - duty cylce
  signal Reg2_Ctrl_DutyCycle         : std_ulogic_vector(31 downto 0);
  -- Register 3 - current speed
  signal Reg3_Stat_SpeedImp     : unsigned(31 downto 0);  -- impulse per time period

  -- Register 4 - mileage counter (sensor pulses) Value
  signal Reg4_Ctrl_ImpCumulated			: std_ulogic_vector(31 downto 0);
  signal Reg4_Stat_ImpCumulated : unsigned(31 downto 0);    -- cumulated value (counter)  
  
	
  -- Register 5 - error counter
  signal Reg5_Errors     : unsigned(31 downto 0);  -- error counter


  signal lastSampleRoundSignal  : std_ulogic; -- last sample
begin

  -- wrapper for std_ulogic (to avoid tristate buffers ...)
  savs_s0_address   <= std_ulogic_vector(avs_s0_address);
  savs_s0_read      <= std_ulogic(avs_s0_read);
  avs_s0_readdata   <= std_logic_vector(savs_s0_readdata);
  savs_s0_write     <= std_ulogic(avs_s0_write);
  savs_s0_writedata <= std_ulogic_vector(avs_s0_writedata);
  sclock_clk        <= std_ulogic(clock_clk);
  sreset_n          <= std_ulogic(reset_n);
  PWM_CTRL          <= std_logic(sPWM_CTRL);
  ACTIVATE          <= std_logic(sACTIVATE);
  sSENSOR           <= std_ulogic(SENSOR);
  sROUND			<= std_ulogic(ROUND);
  
  
  dataexchange : process(sclock_clk, sreset_n) is

  begin
    if (sreset_n = '0') then
      Reg0_Control   <= (others => '0');
      Reg2_Ctrl_DutyCycle <= (others => '0');
    elsif (sclock_clk'event and sclock_clk = '1') then
      trigger_pwm <= '0';
	  trigger_pulses <= '0';
	  trigger_resetRound <= '0';
      case savs_s0_address is
        when "000" =>                   -- REG0
          if (savs_s0_read = '1') then
            savs_s0_readdata <= Reg0_Control;
          end if;
          if (savs_s0_write = '1') then
            Reg0_Control <= savs_s0_writedata;
          end if;
		when "001" =>					-- REG1
		  if (savs_s0_read = '1') then
            savs_s0_readdata <= std_ulogic_vector(Reg1_Status);
			trigger_resetRound <= '1';
          end if;
          if (savs_s0_write = '1') then
           -- read only
          end if;
		when "010" =>					-- REG2
          if (savs_s0_read = '1') then
            savs_s0_readdata <= std_ulogic_vector(Reg2_Ctrl_DutyCycle);
          end if;
          if (savs_s0_write = '1') then
            Reg2_Ctrl_DutyCycle <= savs_s0_writedata;
			trigger_pwm <= '1';
          end if;
        when "011" =>                   -- REG3
		  if (savs_s0_read = '1') then
            savs_s0_readdata <= std_ulogic_vector(Reg3_Stat_SpeedImp);
          end if;
          if (savs_s0_write = '1') then
           -- read only
          end if;
		when "100" =>					-- REG4
		  if (savs_s0_read = '1') then
            savs_s0_readdata <= std_ulogic_vector(Reg4_Stat_ImpCumulated);
          end if;
          if (savs_s0_write = '1') then
			Reg4_Ctrl_ImpCumulated <= savs_s0_writedata;
			trigger_pulses      <= '1';
          end if;	
		when "101" =>					-- REG5
          if (savs_s0_read = '1') then
            savs_s0_readdata <= std_ulogic_vector(Reg5_Errors);
          end if;
          if (savs_s0_write = '1') then
           -- read only
          end if;		  
        when others =>
      -- nothing to do
      end case;
    end if;
  end process;

  pwmgen : entity work.pwmgen
    generic map (
      gClkFrequency    => gQSYS_ClkFrequency_Hz,
      gStrobeCycleTime => cStrobeCycleTime,
      gInitCounter     => to_unsigned(0, cResolutionBits),
      gInterPWM        => to_unsigned((2**cResolutionBits)-1, cResolutionBits)
      )
    port map (
      iClk              => sclock_clk,
      inRstAsync        => sreset_n,
      iEnReloadPWMWidth => trigger_pwm,
      iPWMWidth         => unsigned(Reg2_Ctrl_DutyCycle(cResolutionBits-1 downto 0)),
      oPwmSig           => PwmSig
      );

-- external outputs
  sPWM_CTRL <= PwmSig when ((sreset_n = cActivated) and (Reg0_Control(Reg0_Ctrl_EN_PWM) = cActivated))
               else cInactivated;

  sACTIVATE <= cActivated when (Reg0_Control(Reg0_Ctrl_RUN) = cActivated) and (sreset_n = cnInactivated)
               else cInactivated;   

  resetRoundFlag <= (cActivated or trigger_resetRound) when (Reg0_Control(Reg0_Ctrl_RES_ROUND) = cActivated) and (sreset_n = cnInactivated)
               else cInactivated; 			   

-- wheel Sensor Timer
  speedSensorTimer : entity work.WheelEncoderTimer(RTL)
    generic map (
      gClkFrequency    => gQSYS_ClkFrequency_Hz, -- system clock
      gTimerResolution => cTimerResolution,      -- sampling period time for sensor pulses
      gTimeOut         => cTimeOut,              -- timeout period for sensor signal
	  gValidSamples    => gQSYS_ValidSamples     -- valid samples until signal is stable
      )
    port map (
      iClk          => sclock_clk,      -- system clock
      inResetAsync  => sreset_n,        -- system reset (asynchronous)
      iSensor       => sSENSOR,         -- sensor signal (pulses)
	  iSetPulses    => trigger_pulses,  -- set value command
	  iValue        => unsigned(Reg4_Ctrl_ImpCumulated),  -- set value
      oCountPSample => Reg3_Stat_SpeedImp,  -- time measurement value current speed value
	  oPulses       => Reg4_Stat_ImpCumulated, -- pulse (mileage) counter
	  oErrorCounter => Reg5_Errors -- error counter
      );                                   

-- round sensor unit
  roundSensor : entity work.RoundSensor(RTL)
	generic map (
      gClkFrequency    => gQSYS_ClkFrequency_Hz, -- system clock
      gSampleTime 	   => 10 us,      -- sampling period time for sensor pulses
	  gValidSamples    => 10     -- valid samples until signal is stable
      )
    port map (
      iClk          => sclock_clk,      -- system clock
      inResetAsync  => sreset_n,        -- system reset (asynchronous)
      iSensor       => sROUND,         -- sensor signal (pulses)
	  iResetSensor  => resetRoundflag,  -- reset new round flag
      oNewRound 	=> Reg1_Status(Reg1_Stat_Round),  -- new round flag (reset by reading)
	  oNewRoundToggle=> Reg1_Status(Reg1_Stat_RoundToggle) -- new round flag toggle
      );   

end architecture rtl;  -- of Motor_Control
