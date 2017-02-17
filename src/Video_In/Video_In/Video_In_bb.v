
module Video_In (
	clk_clk,
	reset_reset_n,
	greyscale_image_ready,
	greyscale_image_startofpacket,
	greyscale_image_endofpacket,
	greyscale_image_valid,
	greyscale_image_data);	

	input		clk_clk;
	input		reset_reset_n;
	input		greyscale_image_ready;
	output		greyscale_image_startofpacket;
	output		greyscale_image_endofpacket;
	output		greyscale_image_valid;
	output	[7:0]	greyscale_image_data;
endmodule
