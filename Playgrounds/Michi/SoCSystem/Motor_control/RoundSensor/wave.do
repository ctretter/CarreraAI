onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbroundsensor/DUT/iSensor
add wave -noupdate -expand -subitemconfig {/tbroundsensor/DUT/R.Count {-format Analog-Step -height 74 -max 100.0}} /tbroundsensor/DUT/R
add wave -noupdate /tbroundsensor/DUT/iResetSensor
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 225
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 1
configure wave -timelineunits ns
update
WaveRestoreZoom {388489208 ps} {949903844 ps}
