onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbnn/NN/iclk
add wave -noupdate /tbnn/NN/Reset
add wave -noupdate /tbnn/NN/inReset
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmps
add wave -noupdate /tbnn/NN/Exponent
add wave -noupdate /tbnn/NN/Exponent_Conv
add wave -noupdate /tbnn/NN/TMP_RES
add wave -noupdate /tbnn/NN/TMP_RES_Conv
add wave -noupdate -radix decimal /tbnn/NN/IP_Result
add wave -noupdate -divider {New Divider}
add wave -noupdate /tbnn/NN/Enable
add wave -noupdate /tbnn/NN/Count
add wave -noupdate -divider {New Divider}
add wave -noupdate /tbnn/NN/Think/vDendrites_1
add wave -noupdate /tbnn/NN/Think/vtmpDiv
add wave -noupdate /tbnn/NN/Think/vtmpAdd
add wave -noupdate -divider {New Divider}
add wave -noupdate /tbnn/NN/Think/vtmpDotMul
add wave -noupdate /tbnn/NN/Think/vDotMul
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {526 ns} 0} {{Cursor 2} {42 ns} 0}
configure wave -namecolwidth 150
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
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {4 us}
