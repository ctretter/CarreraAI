onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbnn/NN/x_nxt
add wave -noupdate -radix decimal /tbnn/NN/x_conv
add wave -noupdate -radix decimal /tbnn/NN/x
add wave -noupdate -radix decimal /tbnn/NN/oThrottle
add wave -noupdate /tbnn/NN/inReset
add wave -noupdate /tbnn/NN/iclk
add wave -noupdate -radix decimal /tbnn/NN/iSpeed
add wave -noupdate -radix decimal /tbnn/NN/iRelation
add wave -noupdate -radix decimal /tbnn/NN/iPos
add wave -noupdate -radix decimal /tbnn/NN/iNCurve
add wave -noupdate -radix decimal /tbnn/NN/iGyro
add wave -noupdate -radix decimal /tbnn/NN/Res_conv
add wave -noupdate -radix decimal /tbnn/NN/Res
add wave -noupdate -divider {New Divider}
add wave -noupdate -childformat {{/tbnn/NN/Think/vDendrites_0(4) -radix decimal} {/tbnn/NN/Think/vDendrites_0(3) -radix decimal} {/tbnn/NN/Think/vDendrites_0(2) -radix decimal} {/tbnn/NN/Think/vDendrites_0(1) -radix decimal} {/tbnn/NN/Think/vDendrites_0(0) -radix decimal}} -expand -subitemconfig {/tbnn/NN/Think/vDendrites_0(4) {-height 15 -radix decimal} /tbnn/NN/Think/vDendrites_0(3) {-height 15 -radix decimal} /tbnn/NN/Think/vDendrites_0(2) {-height 15 -radix decimal} /tbnn/NN/Think/vDendrites_0(1) {-height 15 -radix decimal} /tbnn/NN/Think/vDendrites_0(0) {-height 15 -radix decimal}} /tbnn/NN/Think/vDendrites_0
add wave -noupdate -childformat {{/tbnn/NN/Think/vDendrites_1(2) -radix decimal} {/tbnn/NN/Think/vDendrites_1(1) -radix decimal} {/tbnn/NN/Think/vDendrites_1(0) -radix decimal}} -expand -subitemconfig {/tbnn/NN/Think/vDendrites_1(2) {-height 15 -radix decimal} /tbnn/NN/Think/vDendrites_1(1) {-height 15 -radix decimal} /tbnn/NN/Think/vDendrites_1(0) {-height 15 -radix decimal}} /tbnn/NN/Think/vDendrites_1
add wave -noupdate -radix decimal /tbnn/NN/Think/vOutput
add wave -noupdate /tbnn/NN/Think/vOutput_conv
add wave -noupdate /tbnn/NN/Think/vDendrites_1_conv
add wave -noupdate -expand -subitemconfig {/tbnn/NN/gSynWeigth0(2) {-childformat {{/tbnn/NN/gSynWeigth0(2)(4) -radix decimal} {/tbnn/NN/gSynWeigth0(2)(3) -radix decimal} {/tbnn/NN/gSynWeigth0(2)(2) -radix decimal} {/tbnn/NN/gSynWeigth0(2)(1) -radix decimal} {/tbnn/NN/gSynWeigth0(2)(0) -radix decimal}} -expand} /tbnn/NN/gSynWeigth0(2)(4) {-radix decimal} /tbnn/NN/gSynWeigth0(2)(3) {-radix decimal} /tbnn/NN/gSynWeigth0(2)(2) {-radix decimal} /tbnn/NN/gSynWeigth0(2)(1) {-radix decimal} /tbnn/NN/gSynWeigth0(2)(0) {-radix decimal}} /tbnn/NN/gSynWeigth0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {120 ns} 0}
configure wave -namecolwidth 207
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
WaveRestoreZoom {0 ns} {122 ns}
