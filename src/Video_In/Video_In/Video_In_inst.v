	Video_In u0 (
		.clk_clk                       (<connected-to-clk_clk>),                       //             clk.clk
		.reset_reset_n                 (<connected-to-reset_reset_n>),                 //           reset.reset_n
		.greyscale_image_ready         (<connected-to-greyscale_image_ready>),         // greyscale_image.ready
		.greyscale_image_startofpacket (<connected-to-greyscale_image_startofpacket>), //                .startofpacket
		.greyscale_image_endofpacket   (<connected-to-greyscale_image_endofpacket>),   //                .endofpacket
		.greyscale_image_valid         (<connected-to-greyscale_image_valid>),         //                .valid
		.greyscale_image_data          (<connected-to-greyscale_image_data>)           //                .data
	);

