	AvalonJTAG2Memory u0 (
		.clk_clk              (<connected-to-clk_clk>),              //          clk.clk
		.clk_reset_reset      (<connected-to-clk_reset_reset>),      //    clk_reset.reset
		.master_address       (<connected-to-master_address>),       //       master.address
		.master_readdata      (<connected-to-master_readdata>),      //             .readdata
		.master_read          (<connected-to-master_read>),          //             .read
		.master_write         (<connected-to-master_write>),         //             .write
		.master_writedata     (<connected-to-master_writedata>),     //             .writedata
		.master_waitrequest   (<connected-to-master_waitrequest>),   //             .waitrequest
		.master_readdatavalid (<connected-to-master_readdatavalid>), //             .readdatavalid
		.master_byteenable    (<connected-to-master_byteenable>),    //             .byteenable
		.master_reset_reset   (<connected-to-master_reset_reset>)    // master_reset.reset
	);

