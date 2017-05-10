set Root ../../..
set o1 -93
set o2 -novopt
set o3 -quiet


vlib work

echo ## IP CORE
vcom $o1 $o2 $o3 -work "work" ${Root}/grpIP/unitExp/ALTFP_EXa.vhd
vcom $o1 $o2 $o3 -work "work" ${Root}/grpIP/convert/Float2Fixed/tofixed.vhd
vcom $o1 $o2 $o3 -work "work" ${Root}/grpIP/convert/Fixed2Float/FloatConv.vhd

echo ## pkg fixed point 

vcom $o1 $o2 $o3 -work "work" ${Root}/grpIeeeProposed/pkgfixed_float_types/src/fixed_float_types-p.vhd
vcom $o1 $o2 $o3 -work "work" ${Root}/grpIeeeProposed/pkgfixed_pkg/src/fixed_pkg-p.vhd
vcom $o1 $o2 $o3 -work "work" ${Root}/grpIeeeProposed/others/vhdl2008c/float_pkg_c.vhdl

echo ## according pkg and NN
vcom $o1 $o2 -work "work" ../src/NN-pkg.vhd
vcom $o1 $o2 -work "work" ../src_RTL3/NN-RTL3-ea.vhd

vcom $o1 $o2 -work "work" ../src_RTL4/NN-RTL4-ea.vhd

echo ## testbench
vcom $o1 $o2 -work "work" ../src/tbNN-ea.vhd
