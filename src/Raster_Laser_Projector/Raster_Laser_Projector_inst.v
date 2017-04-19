	Raster_Laser_Projector u0 (
		.clk_100k_clk                    (<connected-to-clk_100k_clk>),                    //             clk_100k.clk
		.clk_100mhz_clk                  (<connected-to-clk_100mhz_clk>),                  //           clk_100mhz.clk
		.clk_50mhz_in_clk                (<connected-to-clk_50mhz_in_clk>),                //         clk_50mhz_in.clk
		.polygon_ctrl_clk_clk            (<connected-to-polygon_ctrl_clk_clk>),            //     polygon_ctrl_clk.clk
		.reset_reset_n                   (<connected-to-reset_reset_n>),                   //                reset.reset_n
		.video_in_TD_CLK27               (<connected-to-video_in_TD_CLK27>),               //             video_in.TD_CLK27
		.video_in_TD_DATA                (<connected-to-video_in_TD_DATA>),                //                     .TD_DATA
		.video_in_TD_HS                  (<connected-to-video_in_TD_HS>),                  //                     .TD_HS
		.video_in_TD_VS                  (<connected-to-video_in_TD_VS>),                  //                     .TD_VS
		.video_in_clk27_reset            (<connected-to-video_in_clk27_reset>),            //                     .clk27_reset
		.video_in_TD_RESET               (<connected-to-video_in_TD_RESET>),               //                     .TD_RESET
		.video_in_overflow_flag          (<connected-to-video_in_overflow_flag>),          //                     .overflow_flag
		.video_in_framebuffer_address    (<connected-to-video_in_framebuffer_address>),    // video_in_framebuffer.address
		.video_in_framebuffer_chipselect (<connected-to-video_in_framebuffer_chipselect>), //                     .chipselect
		.video_in_framebuffer_clken      (<connected-to-video_in_framebuffer_clken>),      //                     .clken
		.video_in_framebuffer_write      (<connected-to-video_in_framebuffer_write>),      //                     .write
		.video_in_framebuffer_readdata   (<connected-to-video_in_framebuffer_readdata>),   //                     .readdata
		.video_in_framebuffer_writedata  (<connected-to-video_in_framebuffer_writedata>),  //                     .writedata
		.pixel_clk_clk                   (<connected-to-pixel_clk_clk>)                    //            pixel_clk.clk
	);

