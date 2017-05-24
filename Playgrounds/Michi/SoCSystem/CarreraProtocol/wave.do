onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbcarreraprotocol/Clk
add wave -noupdate /tbcarreraprotocol/nResetAsync
add wave -noupdate /tbcarreraprotocol/DataPin
add wave -noupdate /tbcarreraprotocol/ErrorPin
add wave -noupdate /tbcarreraprotocol/NewDataPin
add wave -noupdate /tbcarreraprotocol/BitLen
add wave -noupdate /tbcarreraprotocol/Output
add wave -noupdate /tbcarreraprotocol/cPeriod
add wave -noupdate /tbcarreraprotocol/cHalfPeriod
add wave -noupdate /tbcarreraprotocol/cQuarterPeriod
add wave -noupdate -childformat {{/tbcarreraprotocol/DUT/R.ID -radix decimal}} -expand -subitemconfig {/tbcarreraprotocol/DUT/R.ID {-radix decimal}} /tbcarreraprotocol/DUT/R
add wave -noupdate /tbcarreraprotocol/DUT/DataSync
add wave -noupdate /tbcarreraprotocol/DUT/cSampleStrobeCount
add wave -noupdate /tbcarreraprotocol/DUT/cSampleStrobeCountHalf
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {385000000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 272
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
WaveRestoreZoom {0 ps} {2100 us}
