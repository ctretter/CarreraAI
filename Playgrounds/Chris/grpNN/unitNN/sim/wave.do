onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /tbnn/NN/IP_Result
add wave -noupdate -radix decimal /tbnn/NN/Exponent
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix decimal /tbnn/NN/Think/vThrottle
add wave -noupdate -radix decimal /tbnn/NN/Think/vDendrites_0
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmpDendrites_1
add wave -noupdate -radix decimal /tbnn/NN/Think/vDendrites_1
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmpDiv
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmpMatrixMul
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmpDotMul
add wave -noupdate -radix decimal /tbnn/NN/Think/vDotMul
add wave -noupdate -radix decimal -position end  /tbnn/NN/Think/vInverted
add wave -position end  /tbnn/NN/Think/vfloat
add wave -position end  /tbnn/NN/Think/vtmps
add wave -position end  /tbnn/NN/Think/vtmptmp
add wave -position 2  sim:/tbnn/NN/Valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
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
WaveRestoreZoom {0 ns} {1 us}
