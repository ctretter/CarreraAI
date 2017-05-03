// megafunction wizard: %ALTFP_CONVERT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTFP_CONVERT 

// ============================================================
// File Name: FloatConv.v
// Megafunction Name(s):
// 			ALTFP_CONVERT
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 16.0.0 Build 211 04/27/2016 SJ Standard Edition
// ************************************************************


//Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, the Altera Quartus Prime License Agreement,
//the Altera MegaCore Function License Agreement, or other 
//applicable license agreement, including, without limitation, 
//that your use is for the sole purpose of programming logic 
//devices manufactured by Altera and sold by Altera or its 
//authorized distributors.  Please refer to the applicable 
//agreement for further details.


//altfp_convert DEVICE_FAMILY="Cyclone V" OPERATION="FIXED2FLOAT" ROUNDING="TO_NEAREST" WIDTH_DATA=64 WIDTH_EXP_INPUT=8 WIDTH_EXP_OUTPUT=11 WIDTH_INT=12 WIDTH_MAN_INPUT=23 WIDTH_MAN_OUTPUT=52 WIDTH_RESULT=64 aclr clock dataa result
//VERSION_BEGIN 16.0 cbx_altbarrel_shift 2016:04:27:18:05:34:SJ cbx_altera_syncram_nd_impl 2016:04:27:18:05:34:SJ cbx_altfp_convert 2016:04:27:18:05:34:SJ cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_altsyncram 2016:04:27:18:05:34:SJ cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_abs 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_lpm_compare 2016:04:27:18:05:34:SJ cbx_lpm_decode 2016:04:27:18:05:34:SJ cbx_lpm_divide 2016:04:27:18:05:34:SJ cbx_lpm_mux 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ cbx_stratixiii 2016:04:27:18:05:34:SJ cbx_stratixv 2016:04:27:18:05:34:SJ cbx_util_mgl 2016:04:27:18:05:34:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



//altbarrel_shift DEVICE_FAMILY="Cyclone V" PIPELINE=2 SHIFTDIR="LEFT" SHIFTTYPE="LOGICAL" WIDTH=64 WIDTHDIST=6 aclr clk_en clock data distance result
//VERSION_BEGIN 16.0 cbx_altbarrel_shift 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END

//synthesis_resources = reg 133 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altbarrel_shift
	( 
	aclr,
	clk_en,
	clock,
	data,
	distance,
	result) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clk_en;
	input   clock;
	input   [63:0]  data;
	input   [5:0]  distance;
	output   [63:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clk_en;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[1:0]	dir_pipe;
	reg	[63:0]	sbit_piper1d;
	reg	[63:0]	sbit_piper2d;
	reg	sel_pipec3r1d;
	reg	sel_pipec4r1d;
	reg	sel_pipec5r1d;
	wire  [6:0]  dir_w;
	wire  direction_w;
	wire  [31:0]  pad_w;
	wire  [447:0]  sbit_w;
	wire  [5:0]  sel_w;
	wire  [383:0]  smux_w;

	// synopsys translate_off
	initial
		dir_pipe = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dir_pipe <= 2'b0;
		else if  (clk_en == 1'b1)   dir_pipe <= {dir_w[5], dir_w[2]};
	// synopsys translate_off
	initial
		sbit_piper1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sbit_piper1d <= 64'b0;
		else if  (clk_en == 1'b1)   sbit_piper1d <= smux_w[191:128];
	// synopsys translate_off
	initial
		sbit_piper2d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sbit_piper2d <= 64'b0;
		else if  (clk_en == 1'b1)   sbit_piper2d <= smux_w[383:320];
	// synopsys translate_off
	initial
		sel_pipec3r1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sel_pipec3r1d <= 1'b0;
		else if  (clk_en == 1'b1)   sel_pipec3r1d <= distance[3];
	// synopsys translate_off
	initial
		sel_pipec4r1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sel_pipec4r1d <= 1'b0;
		else if  (clk_en == 1'b1)   sel_pipec4r1d <= distance[4];
	// synopsys translate_off
	initial
		sel_pipec5r1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sel_pipec5r1d <= 1'b0;
		else if  (clk_en == 1'b1)   sel_pipec5r1d <= distance[5];
	assign
		dir_w = {dir_pipe[1], dir_w[4:3], dir_pipe[0], dir_w[1:0], direction_w},
		direction_w = 1'b0,
		pad_w = {32{1'b0}},
		result = sbit_w[447:384],
		sbit_w = {sbit_piper2d, smux_w[319:192], sbit_piper1d, smux_w[127:0], data},
		sel_w = {sel_pipec5r1d, sel_pipec4r1d, sel_pipec3r1d, distance[2:0]},
		smux_w = {((({64{(sel_w[5] & (~ dir_w[5]))}} & {sbit_w[351:320], pad_w[31:0]}) | ({64{(sel_w[5] & dir_w[5])}} & {pad_w[31:0], sbit_w[383:352]})) | ({64{(~ sel_w[5])}} & sbit_w[383:320])), ((({64{(sel_w[4] & (~ dir_w[4]))}} & {sbit_w[303:256], pad_w[15:0]}) | ({64{(sel_w[4] & dir_w[4])}} & {pad_w[15:0], sbit_w[319:272]})) | ({64{(~ sel_w[4])}} & sbit_w[319:256])), ((({64{(sel_w[3] & (~ dir_w[3]))}} & {sbit_w[247:192], pad_w[7:0]}) | ({64{(sel_w[3] & dir_w[3])}} & {pad_w[7:0], sbit_w[255:200]})) | ({64{(~ sel_w[3])}} & sbit_w[255:192])), ((({64{(sel_w[2] & (~ dir_w[2]))}} & {sbit_w[187:128], pad_w[3:0]}) | ({64{(sel_w[2] & dir_w[2])}} & {pad_w[3:0], sbit_w[191:132]})) | ({64{(~ sel_w[2])}} & sbit_w[191:128])), ((({64{(sel_w[1] & (~ dir_w[1]))}} & {sbit_w[125:64], pad_w[1:0]}) | ({64{(sel_w[1] & dir_w[1])}} & {pad_w[1:0], sbit_w[127:66]})) | ({64{(~ sel_w[1])}} & sbit_w[127:64])), ((({64{(sel_w[0] & (~ dir_w[0]))}} & {sbit_w[62:0], pad_w[0]}) | ({64{(sel_w[0] & dir_w[0])}} & {pad_w[0], sbit_w[63:1]})) | ({64{(~ sel_w[0])}} & sbit_w[63:0]))};
endmodule //FloatConv_altbarrel_shift


//altpriority_encoder WIDTH=64 WIDTHAD=6 data q
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=32 WIDTHAD=5 data q
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=16 WIDTHAD=4 data q zero
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=8 WIDTHAD=3 data q zero
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=4 WIDTHAD=2 data q zero
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=2 WIDTHAD=1 data q zero
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder12345
	( 
	data,
	q,
	zero) /* synthesis synthesis_clearbox=1 */;
	input   [1:0]  data;
	output   [0:0]  q;
	output   zero;


	assign
		q = {data[1]},
		zero = (~ (data[0] | data[1]));
endmodule //FloatConv_altpriority_encoder12345

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder1234
	( 
	data,
	q,
	zero) /* synthesis synthesis_clearbox=1 */;
	input   [3:0]  data;
	output   [1:0]  q;
	output   zero;

	wire  [0:0]   wire_altpriority_encoder15_q;
	wire  wire_altpriority_encoder15_zero;
	wire  [0:0]   wire_altpriority_encoder16_q;
	wire  wire_altpriority_encoder16_zero;

	FloatConv_altpriority_encoder12345   altpriority_encoder15
	( 
	.data(data[1:0]),
	.q(wire_altpriority_encoder15_q),
	.zero(wire_altpriority_encoder15_zero));
	FloatConv_altpriority_encoder12345   altpriority_encoder16
	( 
	.data(data[3:2]),
	.q(wire_altpriority_encoder16_q),
	.zero(wire_altpriority_encoder16_zero));
	assign
		q = {(~ wire_altpriority_encoder16_zero), ((wire_altpriority_encoder16_zero & wire_altpriority_encoder15_q) | ((~ wire_altpriority_encoder16_zero) & wire_altpriority_encoder16_q))},
		zero = (wire_altpriority_encoder15_zero & wire_altpriority_encoder16_zero);
endmodule //FloatConv_altpriority_encoder1234

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder123
	( 
	data,
	q,
	zero) /* synthesis synthesis_clearbox=1 */;
	input   [7:0]  data;
	output   [2:0]  q;
	output   zero;

	wire  [1:0]   wire_altpriority_encoder13_q;
	wire  wire_altpriority_encoder13_zero;
	wire  [1:0]   wire_altpriority_encoder14_q;
	wire  wire_altpriority_encoder14_zero;

	FloatConv_altpriority_encoder1234   altpriority_encoder13
	( 
	.data(data[3:0]),
	.q(wire_altpriority_encoder13_q),
	.zero(wire_altpriority_encoder13_zero));
	FloatConv_altpriority_encoder1234   altpriority_encoder14
	( 
	.data(data[7:4]),
	.q(wire_altpriority_encoder14_q),
	.zero(wire_altpriority_encoder14_zero));
	assign
		q = {(~ wire_altpriority_encoder14_zero), (({2{wire_altpriority_encoder14_zero}} & wire_altpriority_encoder13_q) | ({2{(~ wire_altpriority_encoder14_zero)}} & wire_altpriority_encoder14_q))},
		zero = (wire_altpriority_encoder13_zero & wire_altpriority_encoder14_zero);
endmodule //FloatConv_altpriority_encoder123

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder12
	( 
	data,
	q,
	zero) /* synthesis synthesis_clearbox=1 */;
	input   [15:0]  data;
	output   [3:0]  q;
	output   zero;

	wire  [2:0]   wire_altpriority_encoder11_q;
	wire  wire_altpriority_encoder11_zero;
	wire  [2:0]   wire_altpriority_encoder12_q;
	wire  wire_altpriority_encoder12_zero;

	FloatConv_altpriority_encoder123   altpriority_encoder11
	( 
	.data(data[7:0]),
	.q(wire_altpriority_encoder11_q),
	.zero(wire_altpriority_encoder11_zero));
	FloatConv_altpriority_encoder123   altpriority_encoder12
	( 
	.data(data[15:8]),
	.q(wire_altpriority_encoder12_q),
	.zero(wire_altpriority_encoder12_zero));
	assign
		q = {(~ wire_altpriority_encoder12_zero), (({3{wire_altpriority_encoder12_zero}} & wire_altpriority_encoder11_q) | ({3{(~ wire_altpriority_encoder12_zero)}} & wire_altpriority_encoder12_q))},
		zero = (wire_altpriority_encoder11_zero & wire_altpriority_encoder12_zero);
endmodule //FloatConv_altpriority_encoder12


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=16 WIDTHAD=4 data q
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=8 WIDTHAD=3 data q
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=4 WIDTHAD=2 data q
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=2 WIDTHAD=1 data q
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder123456789
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [1:0]  data;
	output   [0:0]  q;


	assign
		q = {data[1]};
endmodule //FloatConv_altpriority_encoder123456789

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder12345678
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [3:0]  data;
	output   [1:0]  q;

	wire  [0:0]   wire_altpriority_encoder21_q;
	wire  [0:0]   wire_altpriority_encoder22_q;
	wire  wire_altpriority_encoder22_zero;

	FloatConv_altpriority_encoder123456789   altpriority_encoder21
	( 
	.data(data[1:0]),
	.q(wire_altpriority_encoder21_q));
	FloatConv_altpriority_encoder12345   altpriority_encoder22
	( 
	.data(data[3:2]),
	.q(wire_altpriority_encoder22_q),
	.zero(wire_altpriority_encoder22_zero));
	assign
		q = {(~ wire_altpriority_encoder22_zero), ((wire_altpriority_encoder22_zero & wire_altpriority_encoder21_q) | ((~ wire_altpriority_encoder22_zero) & wire_altpriority_encoder22_q))};
endmodule //FloatConv_altpriority_encoder12345678

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder1234567
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [7:0]  data;
	output   [2:0]  q;

	wire  [1:0]   wire_altpriority_encoder19_q;
	wire  [1:0]   wire_altpriority_encoder20_q;
	wire  wire_altpriority_encoder20_zero;

	FloatConv_altpriority_encoder12345678   altpriority_encoder19
	( 
	.data(data[3:0]),
	.q(wire_altpriority_encoder19_q));
	FloatConv_altpriority_encoder1234   altpriority_encoder20
	( 
	.data(data[7:4]),
	.q(wire_altpriority_encoder20_q),
	.zero(wire_altpriority_encoder20_zero));
	assign
		q = {(~ wire_altpriority_encoder20_zero), (({2{wire_altpriority_encoder20_zero}} & wire_altpriority_encoder19_q) | ({2{(~ wire_altpriority_encoder20_zero)}} & wire_altpriority_encoder20_q))};
endmodule //FloatConv_altpriority_encoder1234567

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder123456
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [15:0]  data;
	output   [3:0]  q;

	wire  [2:0]   wire_altpriority_encoder17_q;
	wire  [2:0]   wire_altpriority_encoder18_q;
	wire  wire_altpriority_encoder18_zero;

	FloatConv_altpriority_encoder1234567   altpriority_encoder17
	( 
	.data(data[7:0]),
	.q(wire_altpriority_encoder17_q));
	FloatConv_altpriority_encoder123   altpriority_encoder18
	( 
	.data(data[15:8]),
	.q(wire_altpriority_encoder18_q),
	.zero(wire_altpriority_encoder18_zero));
	assign
		q = {(~ wire_altpriority_encoder18_zero), (({3{wire_altpriority_encoder18_zero}} & wire_altpriority_encoder17_q) | ({3{(~ wire_altpriority_encoder18_zero)}} & wire_altpriority_encoder18_q))};
endmodule //FloatConv_altpriority_encoder123456

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder1
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [31:0]  data;
	output   [4:0]  q;

	wire  [3:0]   wire_altpriority_encoder10_q;
	wire  wire_altpriority_encoder10_zero;
	wire  [3:0]   wire_altpriority_encoder9_q;

	FloatConv_altpriority_encoder12   altpriority_encoder10
	( 
	.data(data[31:16]),
	.q(wire_altpriority_encoder10_q),
	.zero(wire_altpriority_encoder10_zero));
	FloatConv_altpriority_encoder123456   altpriority_encoder9
	( 
	.data(data[15:0]),
	.q(wire_altpriority_encoder9_q));
	assign
		q = {(~ wire_altpriority_encoder10_zero), (({4{wire_altpriority_encoder10_zero}} & wire_altpriority_encoder9_q) | ({4{(~ wire_altpriority_encoder10_zero)}} & wire_altpriority_encoder10_q))};
endmodule //FloatConv_altpriority_encoder1


//altpriority_encoder LSB_PRIORITY="NO" WIDTH=32 WIDTHAD=5 data q zero
//VERSION_BEGIN 16.0 cbx_altpriority_encoder 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ  VERSION_END

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder12345678910
	( 
	data,
	q,
	zero) /* synthesis synthesis_clearbox=1 */;
	input   [31:0]  data;
	output   [4:0]  q;
	output   zero;

	wire  [3:0]   wire_altpriority_encoder23_q;
	wire  wire_altpriority_encoder23_zero;
	wire  [3:0]   wire_altpriority_encoder24_q;
	wire  wire_altpriority_encoder24_zero;

	FloatConv_altpriority_encoder12   altpriority_encoder23
	( 
	.data(data[15:0]),
	.q(wire_altpriority_encoder23_q),
	.zero(wire_altpriority_encoder23_zero));
	FloatConv_altpriority_encoder12   altpriority_encoder24
	( 
	.data(data[31:16]),
	.q(wire_altpriority_encoder24_q),
	.zero(wire_altpriority_encoder24_zero));
	assign
		q = {(~ wire_altpriority_encoder24_zero), (({4{wire_altpriority_encoder24_zero}} & wire_altpriority_encoder23_q) | ({4{(~ wire_altpriority_encoder24_zero)}} & wire_altpriority_encoder24_q))},
		zero = (wire_altpriority_encoder23_zero & wire_altpriority_encoder24_zero);
endmodule //FloatConv_altpriority_encoder12345678910

//synthesis_resources = 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altpriority_encoder
	( 
	data,
	q) /* synthesis synthesis_clearbox=1 */;
	input   [63:0]  data;
	output   [5:0]  q;

	wire  [4:0]   wire_altpriority_encoder7_q;
	wire  [4:0]   wire_altpriority_encoder8_q;
	wire  wire_altpriority_encoder8_zero;

	FloatConv_altpriority_encoder1   altpriority_encoder7
	( 
	.data(data[31:0]),
	.q(wire_altpriority_encoder7_q));
	FloatConv_altpriority_encoder12345678910   altpriority_encoder8
	( 
	.data(data[63:32]),
	.q(wire_altpriority_encoder8_q),
	.zero(wire_altpriority_encoder8_zero));
	assign
		q = {(~ wire_altpriority_encoder8_zero), (({5{wire_altpriority_encoder8_zero}} & wire_altpriority_encoder7_q) | ({5{(~ wire_altpriority_encoder8_zero)}} & wire_altpriority_encoder8_q))};
endmodule //FloatConv_altpriority_encoder


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_DIRECTION="ADD" LPM_WIDTH=63 ONE_INPUT_IS_CONSTANT="YES" dataa datab result
//VERSION_BEGIN 16.0 cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ  VERSION_END


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_DIRECTION="ADD" LPM_WIDTH=26 ONE_INPUT_IS_CONSTANT="YES" cout dataa datab result
//VERSION_BEGIN 16.0 cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ  VERSION_END


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_DIRECTION="ADD" LPM_WIDTH=27 ONE_INPUT_IS_CONSTANT="YES" cout dataa datab result
//VERSION_BEGIN 16.0 cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ  VERSION_END


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_DIRECTION="ADD" LPM_WIDTH=11 ONE_INPUT_IS_CONSTANT="YES" dataa datab result
//VERSION_BEGIN 16.0 cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ  VERSION_END


//lpm_add_sub DEVICE_FAMILY="Cyclone V" LPM_DIRECTION="SUB" LPM_WIDTH=11 ONE_INPUT_IS_CONSTANT="YES" dataa datab result
//VERSION_BEGIN 16.0 cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ  VERSION_END


//lpm_compare DEVICE_FAMILY="Cyclone V" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=11 alb dataa datab
//VERSION_BEGIN 16.0 cbx_cycloneii 2016:04:27:18:05:34:SJ cbx_lpm_add_sub 2016:04:27:18:05:34:SJ cbx_lpm_compare 2016:04:27:18:05:34:SJ cbx_mgl 2016:04:27:18:06:48:SJ cbx_nadder 2016:04:27:18:05:34:SJ cbx_stratix 2016:04:27:18:05:34:SJ cbx_stratixii 2016:04:27:18:05:34:SJ  VERSION_END

//synthesis_resources = lut 149 reg 476 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  FloatConv_altfp_convert
	( 
	aclr,
	clock,
	dataa,
	result) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   clock;
	input   [63:0]  dataa;
	output   [63:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [63:0]   wire_altbarrel_shift3_result;
	wire  [5:0]   wire_altpriority_encoder2_q;
	reg	add_1_adder1_cout_reg;
	reg	[25:0]	add_1_adder1_reg;
	reg	add_1_adder2_cout_reg;
	reg	[26:0]	add_1_adder2_reg;
	reg	add_1_reg;
	reg	[10:0]	exponent_bus_pre_reg;
	reg	[10:0]	exponent_bus_pre_reg2;
	reg	[10:0]	exponent_bus_pre_reg3;
	reg	[62:0]	mag_int_a_reg;
	reg	[62:0]	mag_int_a_reg2;
	reg	[52:0]	mantissa_pre_round_reg;
	reg	[5:0]	priority_encoder_reg;
	reg	[63:0]	result_reg;
	reg	sign_int_a_reg1;
	reg	sign_int_a_reg2;
	reg	sign_int_a_reg3;
	reg	sign_int_a_reg4;
	reg	sign_int_a_reg5;
	wire	[62:0]	wire_add_sub1_dataa;
	wire	[62:0]	wire_add_sub1_datab;
	wire	[62:0]	wire_add_sub1_result;
	wire	[26:0]	wire_add_sub4_result_int;
	wire	wire_add_sub4_cout;
	wire	[25:0]	wire_add_sub4_dataa;
	wire	[25:0]	wire_add_sub4_datab;
	wire	[25:0]	wire_add_sub4_result;
	wire	[27:0]	wire_add_sub5_result_int;
	wire	wire_add_sub5_cout;
	wire	[26:0]	wire_add_sub5_dataa;
	wire	[26:0]	wire_add_sub5_datab;
	wire	[26:0]	wire_add_sub5_result;
	wire	[10:0]	wire_add_sub6_dataa;
	wire	[10:0]	wire_add_sub6_datab;
	wire	[10:0]	wire_add_sub6_result;
	wire	[10:0]	wire_exponent_value_dataa;
	wire	[10:0]	wire_exponent_value_datab;
	wire	[10:0]	wire_exponent_value_result;
	reg	wire_below_bias_value_alb_int;
	wire	wire_below_bias_value_alb;
	wire	[10:0]	wire_below_bias_value_dataa;
	wire	[10:0]	wire_below_bias_value_datab;
	wire  [25:0]  add_1_adder1_w;
	wire  [26:0]  add_1_adder2_w;
	wire  [52:0]  add_1_adder_w;
	wire  add_1_w;
	wire  [10:0]  bias_value_w;
	wire clk_en;
	wire  [10:0]  const_bias_value_add_width_int_w;
	wire  [10:0]  exceptions_value;
	wire  [10:0]  exponent_bus;
	wire  [10:0]  exponent_bus_pre;
	wire  [10:0]  exponent_output_w;
	wire  [10:0]  exponent_rounded;
	wire  [10:0]  exponent_zero_w;
	wire  guard_bit_w;
	wire  [62:0]  int_a;
	wire  [62:0]  int_a_2s;
	wire  [62:0]  invert_int_a;
	wire  [5:0]  leading_zeroes;
	wire  [62:0]  mag_int_a;
	wire  [51:0]  mantissa_bus;
	wire  mantissa_overflow;
	wire  [52:0]  mantissa_post_round;
	wire  [52:0]  mantissa_pre_round;
	wire  [52:0]  mantissa_rounded;
	wire  max_neg_value_selector;
	wire  [10:0]  max_neg_value_w;
	wire  [10:0]  minus_leading_zero;
	wire  [63:0]  prio_mag_int_a;
	wire  [63:0]  result_w;
	wire  round_bit_w;
	wire  [62:0]  shifted_mag_int_a;
	wire  sign_bus;
	wire  sign_int_a;
	wire  [8:0]  sticky_bit_bus;
	wire  [8:0]  sticky_bit_or_w;
	wire  sticky_bit_w;
	wire  [4:0]  zero_padding_w;

	FloatConv_altbarrel_shift   altbarrel_shift3
	( 
	.aclr(aclr),
	.clk_en(clk_en),
	.clock(clock),
	.data({1'b0, mag_int_a_reg2}),
	.distance(leading_zeroes),
	.result(wire_altbarrel_shift3_result));
	FloatConv_altpriority_encoder   altpriority_encoder2
	( 
	.data(prio_mag_int_a),
	.q(wire_altpriority_encoder2_q));
	// synopsys translate_off
	initial
		add_1_adder1_cout_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) add_1_adder1_cout_reg <= 1'b0;
		else if  (clk_en == 1'b1)   add_1_adder1_cout_reg <= wire_add_sub4_cout;
	// synopsys translate_off
	initial
		add_1_adder1_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) add_1_adder1_reg <= 26'b0;
		else if  (clk_en == 1'b1)   add_1_adder1_reg <= wire_add_sub4_result;
	// synopsys translate_off
	initial
		add_1_adder2_cout_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) add_1_adder2_cout_reg <= 1'b0;
		else if  (clk_en == 1'b1)   add_1_adder2_cout_reg <= wire_add_sub5_cout;
	// synopsys translate_off
	initial
		add_1_adder2_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) add_1_adder2_reg <= 27'b0;
		else if  (clk_en == 1'b1)   add_1_adder2_reg <= wire_add_sub5_result;
	// synopsys translate_off
	initial
		add_1_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) add_1_reg <= 1'b0;
		else if  (clk_en == 1'b1)   add_1_reg <= add_1_w;
	// synopsys translate_off
	initial
		exponent_bus_pre_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exponent_bus_pre_reg <= 11'b0;
		else if  (clk_en == 1'b1)   exponent_bus_pre_reg <= exponent_bus_pre_reg2;
	// synopsys translate_off
	initial
		exponent_bus_pre_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exponent_bus_pre_reg2 <= 11'b0;
		else if  (clk_en == 1'b1)   exponent_bus_pre_reg2 <= exponent_bus_pre_reg3;
	// synopsys translate_off
	initial
		exponent_bus_pre_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exponent_bus_pre_reg3 <= 11'b0;
		else if  (clk_en == 1'b1)   exponent_bus_pre_reg3 <= exponent_bus_pre;
	// synopsys translate_off
	initial
		mag_int_a_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) mag_int_a_reg <= 63'b0;
		else if  (clk_en == 1'b1)   mag_int_a_reg <= mag_int_a;
	// synopsys translate_off
	initial
		mag_int_a_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) mag_int_a_reg2 <= 63'b0;
		else if  (clk_en == 1'b1)   mag_int_a_reg2 <= mag_int_a_reg;
	// synopsys translate_off
	initial
		mantissa_pre_round_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) mantissa_pre_round_reg <= 53'b0;
		else if  (clk_en == 1'b1)   mantissa_pre_round_reg <= mantissa_pre_round;
	// synopsys translate_off
	initial
		priority_encoder_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) priority_encoder_reg <= 6'b0;
		else if  (clk_en == 1'b1)   priority_encoder_reg <= wire_altpriority_encoder2_q;
	// synopsys translate_off
	initial
		result_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) result_reg <= 64'b0;
		else if  (clk_en == 1'b1)   result_reg <= result_w;
	// synopsys translate_off
	initial
		sign_int_a_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg1 <= sign_int_a;
	// synopsys translate_off
	initial
		sign_int_a_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg2 <= sign_int_a_reg1;
	// synopsys translate_off
	initial
		sign_int_a_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg3 <= sign_int_a_reg2;
	// synopsys translate_off
	initial
		sign_int_a_reg4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg4 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg4 <= sign_int_a_reg3;
	// synopsys translate_off
	initial
		sign_int_a_reg5 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_int_a_reg5 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_int_a_reg5 <= sign_int_a_reg4;
	assign
		wire_add_sub1_result = wire_add_sub1_dataa + wire_add_sub1_datab;
	assign
		wire_add_sub1_dataa = invert_int_a,
		wire_add_sub1_datab = 63'b000000000000000000000000000000000000000000000000000000000000001;
	assign
		wire_add_sub4_result_int = wire_add_sub4_dataa + wire_add_sub4_datab;
	assign
		wire_add_sub4_result = wire_add_sub4_result_int[25:0],
		wire_add_sub4_cout = wire_add_sub4_result_int[26:26];
	assign
		wire_add_sub4_dataa = mantissa_pre_round[25:0],
		wire_add_sub4_datab = 26'b00000000000000000000000001;
	assign
		wire_add_sub5_result_int = wire_add_sub5_dataa + wire_add_sub5_datab;
	assign
		wire_add_sub5_result = wire_add_sub5_result_int[26:0],
		wire_add_sub5_cout = wire_add_sub5_result_int[27:27];
	assign
		wire_add_sub5_dataa = mantissa_pre_round[52:26],
		wire_add_sub5_datab = 27'b000000000000000000000000001;
	assign
		wire_add_sub6_result = wire_add_sub6_dataa + wire_add_sub6_datab;
	assign
		wire_add_sub6_dataa = exponent_bus_pre_reg,
		wire_add_sub6_datab = 11'b00000000001;
	assign
		wire_exponent_value_result = wire_exponent_value_dataa - wire_exponent_value_datab;
	assign
		wire_exponent_value_dataa = const_bias_value_add_width_int_w,
		wire_exponent_value_datab = minus_leading_zero;
	always @(wire_below_bias_value_dataa or wire_below_bias_value_datab)
	begin
		if (wire_below_bias_value_dataa < wire_below_bias_value_datab) 
			begin
				wire_below_bias_value_alb_int = 1'b1;
			end
		else
			begin
				wire_below_bias_value_alb_int = 1'b0;
			end
	end
	assign
		wire_below_bias_value_alb = wire_below_bias_value_alb_int;
	assign
		wire_below_bias_value_dataa = exponent_output_w,
		wire_below_bias_value_datab = bias_value_w;
	assign
		add_1_adder1_w = add_1_adder1_reg,
		add_1_adder2_w = (({27{(~ add_1_adder1_cout_reg)}} & mantissa_pre_round_reg[52:26]) | ({27{add_1_adder1_cout_reg}} & add_1_adder2_reg)),
		add_1_adder_w = {add_1_adder2_w, add_1_adder1_w},
		add_1_w = ((((~ guard_bit_w) & round_bit_w) & sticky_bit_w) | (guard_bit_w & round_bit_w)),
		bias_value_w = 11'b01111001011,
		clk_en = 1'b1,
		const_bias_value_add_width_int_w = 11'b10000001001,
		exceptions_value = (({11{(~ max_neg_value_selector)}} & exponent_zero_w) | ({11{max_neg_value_selector}} & max_neg_value_w)),
		exponent_bus = exponent_rounded,
		exponent_bus_pre = (({11{(~ wire_below_bias_value_alb)}} & exponent_output_w) | ({11{wire_below_bias_value_alb}} & exceptions_value)),
		exponent_output_w = wire_exponent_value_result,
		exponent_rounded = (({11{(~ mantissa_overflow)}} & exponent_bus_pre_reg) | ({11{mantissa_overflow}} & wire_add_sub6_result)),
		exponent_zero_w = {11{1'b0}},
		guard_bit_w = shifted_mag_int_a[10],
		int_a = dataa[62:0],
		int_a_2s = wire_add_sub1_result,
		invert_int_a = (~ int_a),
		leading_zeroes = (~ priority_encoder_reg),
		mag_int_a = (({63{(~ sign_int_a)}} & int_a) | ({63{sign_int_a}} & int_a_2s)),
		mantissa_bus = mantissa_rounded[51:0],
		mantissa_overflow = ((add_1_reg & add_1_adder1_cout_reg) & add_1_adder2_cout_reg),
		mantissa_post_round = add_1_adder_w,
		mantissa_pre_round = shifted_mag_int_a[62:10],
		mantissa_rounded = (({53{(~ add_1_reg)}} & mantissa_pre_round_reg) | ({53{add_1_reg}} & mantissa_post_round)),
		max_neg_value_selector = (wire_below_bias_value_alb & sign_int_a_reg2),
		max_neg_value_w = 11'b10000001010,
		minus_leading_zero = {zero_padding_w, leading_zeroes},
		prio_mag_int_a = {mag_int_a_reg, 1'b1},
		result = result_reg,
		result_w = {sign_bus, exponent_bus, mantissa_bus},
		round_bit_w = shifted_mag_int_a[9],
		shifted_mag_int_a = wire_altbarrel_shift3_result[62:0],
		sign_bus = sign_int_a_reg5,
		sign_int_a = dataa[63],
		sticky_bit_bus = shifted_mag_int_a[8:0],
		sticky_bit_or_w = {(sticky_bit_or_w[7] | sticky_bit_bus[8]), (sticky_bit_or_w[6] | sticky_bit_bus[7]), (sticky_bit_or_w[5] | sticky_bit_bus[6]), (sticky_bit_or_w[4] | sticky_bit_bus[5]), (sticky_bit_or_w[3] | sticky_bit_bus[4]), (sticky_bit_or_w[2] | sticky_bit_bus[3]), (sticky_bit_or_w[1] | sticky_bit_bus[2]), (sticky_bit_or_w[0] | sticky_bit_bus[1]), sticky_bit_bus[0]},
		sticky_bit_w = sticky_bit_or_w[8],
		zero_padding_w = {5{1'b0}};
endmodule //FloatConv_altfp_convert
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module FloatConv (
	aclr,
	clock,
	dataa,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  aclr;
	input	  clock;
	input	[63:0]  dataa;
	output	[63:0]  result;

	wire [63:0] sub_wire0;
	wire [63:0] result = sub_wire0[63:0];

	FloatConv_altfp_convert	FloatConv_altfp_convert_component (
				.aclr (aclr),
				.clock (clock),
				.dataa (dataa),
				.result (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altfp_convert"
// Retrieval info: CONSTANT: OPERATION STRING "FIXED2FLOAT"
// Retrieval info: CONSTANT: ROUNDING STRING "TO_NEAREST"
// Retrieval info: CONSTANT: WIDTH_DATA NUMERIC "64"
// Retrieval info: CONSTANT: WIDTH_EXP_INPUT NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH_EXP_OUTPUT NUMERIC "11"
// Retrieval info: CONSTANT: WIDTH_INT NUMERIC "12"
// Retrieval info: CONSTANT: WIDTH_MAN_INPUT NUMERIC "23"
// Retrieval info: CONSTANT: WIDTH_MAN_OUTPUT NUMERIC "52"
// Retrieval info: CONSTANT: WIDTH_RESULT NUMERIC "64"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: USED_PORT: dataa 0 0 64 0 INPUT NODEFVAL "dataa[63..0]"
// Retrieval info: CONNECT: @dataa 0 0 64 0 dataa 0 0 64 0
// Retrieval info: USED_PORT: result 0 0 64 0 OUTPUT NODEFVAL "result[63..0]"
// Retrieval info: CONNECT: result 0 0 64 0 @result 0 0 64 0
// Retrieval info: GEN_FILE: TYPE_NORMAL FloatConv.vhd TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL FloatConv.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL FloatConv.bsf TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL FloatConv_inst.vhd TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL FloatConv.inc TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL FloatConv.cmp TRUE TRUE
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX NUMERIC "1"
// Retrieval info: LIB_FILE: lpm
