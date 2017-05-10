onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /tbnn/NN/IP_Result
add wave -noupdate -radix decimal /tbnn/NN/Exponent
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix decimal /tbnn/NN/Think/vThrottle
add wave -noupdate -radix decimal /tbnn/NN/Think/vDendrites_0
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmpDendrites_1
add wave -noupdate -radix decimal -childformat {{/tbnn/NN/Think/vDendrites_1(2) -radix decimal} {/tbnn/NN/Think/vDendrites_1(1) -radix decimal} {/tbnn/NN/Think/vDendrites_1(0) -radix decimal}} -expand -subitemconfig {/tbnn/NN/Think/vDendrites_1(2) {-radix decimal} /tbnn/NN/Think/vDendrites_1(1) {-radix decimal} /tbnn/NN/Think/vDendrites_1(0) {-radix decimal}} /tbnn/NN/Think/vDendrites_1
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmpDiv
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmpMatrixMul
add wave -noupdate -radix decimal /tbnn/NN/Think/vtmpDotMul
add wave -noupdate -radix decimal /tbnn/NN/Think/vDotMul
add wave -noupdate -radix decimal /tbnn/NN/Think/vInverted
add wave -noupdate /tbnn/NN/Think/vfloat
add wave -noupdate /tbnn/NN/Think/vtmps
add wave -noupdate /tbnn/NN/Think/vtmptmp
add wave -noupdate /tbnn/NN/oRdy
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3120 ns} 0}
configure wave -namecolwidth 199
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
WaveRestoreZoom {1714 ns} {2612 ns}
