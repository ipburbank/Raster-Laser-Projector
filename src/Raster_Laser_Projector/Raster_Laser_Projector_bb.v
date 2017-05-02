
module Raster_Laser_Projector (
	clk_100k_clk,
	clk_100mhz_clk,
	clk_50mhz_in_clk,
	pixel_clk_clk,
	polygon_ctrl_clk_clk,
	reset_reset_n,
	video_in_TD_CLK27,
	video_in_TD_DATA,
	video_in_TD_HS,
	video_in_TD_VS,
	video_in_clk27_reset,
	video_in_TD_RESET,
	video_in_overflow_flag,
	video_in_framebuffer_address,
	video_in_framebuffer_chipselect,
	video_in_framebuffer_clken,
	video_in_framebuffer_write,
	video_in_framebuffer_readdata,
	video_in_framebuffer_writedata);	

	output		clk_100k_clk;
	output		clk_100mhz_clk;
	input		clk_50mhz_in_clk;
	output		pixel_clk_clk;
	output		polygon_ctrl_clk_clk;
	input		reset_reset_n;
	input		video_in_TD_CLK27;
	input	[7:0]	video_in_TD_DATA;
	input		video_in_TD_HS;
	input		video_in_TD_VS;
	input		video_in_clk27_reset;
	output		video_in_TD_RESET;
	output		video_in_overflow_flag;
	input	[18:0]	video_in_framebuffer_address;
	input		video_in_framebuffer_chipselect;
	input		video_in_framebuffer_clken;
	input		video_in_framebuffer_write;
	output	[7:0]	video_in_framebuffer_readdata;
	input	[7:0]	video_in_framebuffer_writedata;
endmodule
