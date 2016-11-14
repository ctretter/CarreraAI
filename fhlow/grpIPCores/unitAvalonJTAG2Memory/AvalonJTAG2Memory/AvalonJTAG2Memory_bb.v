
module AvalonJTAG2Memory (
	clk_clk,
	clk_reset_reset,
	master_address,
	master_readdata,
	master_read,
	master_write,
	master_writedata,
	master_waitrequest,
	master_readdatavalid,
	master_byteenable,
	master_reset_reset);	

	input		clk_clk;
	input		clk_reset_reset;
	output	[31:0]	master_address;
	input	[31:0]	master_readdata;
	output		master_read;
	output		master_write;
	output	[31:0]	master_writedata;
	input		master_waitrequest;
	input		master_readdatavalid;
	output	[3:0]	master_byteenable;
	output		master_reset_reset;
endmodule
