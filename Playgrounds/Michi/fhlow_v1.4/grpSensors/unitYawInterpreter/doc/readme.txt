The module "YawInterpreter" is used to check 16 bit ("gDataWidth") values from gyro sensor.
The interpreter should detect direction changes (left, right, forward) for Carrera car.
By using a sample clock ("iSampleClock") of 10kHz each 100µs a new value ("iCurrentYawRate") will be read.
The new value will be saved and the others will be shifted in a row of registers. 
Obviously the oldest value will be shifted out of the registers and won't have any influence 
on the upcoming calculation step. 
To avoid invalid values or too high offsets  the module will add the last five values
and calculate the average. This filter is configure-able by the generic value "gFilterSteps".
Furthermore two generics ("gYawRateLeft" and "gYawRateRight") have to be defined.
These values are used to detect a direction change by a specific result from the module.
The output ("oDirection") has three valid states: 01 -> Left, 10 -> Right, 11 -> Forward
If any calculation failed the value will be 00 (error-state).

---------
GENERICS:				
---------
gDataWidth			: integer := 16;								-- bit width of yaw rate sensor
gFilterSteps		: integer := 5;									-- steps of filters for calculation
gYawRateLeft 		: integer := 0;									-- set yaw rate value to pass filter (left)
gYawRateRight 		: integer := 0									-- set yaw rate value to pass filter (right)

---------
PORTS:				
---------
iClk 				: in std_ulogic;								-- clk 50MHz
iSampleClk			: in std_ulogic;								-- clk 10kHz
inResetAsync		: in std_ulogic;								-- reset
iCurrentYawRate		: in std_ulogic_vector(gDataWidth-1 downto 0);	-- input for current yaw rate
oDirection			: out std_ulogic_vector(1 downto 0)				-- output for directon 
