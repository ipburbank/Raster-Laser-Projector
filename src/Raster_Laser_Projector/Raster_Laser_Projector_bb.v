
module Raster_Laser_Projector (
	clk_50mhz_in_clk,
	pixel_clk_clk,
	reset_reset_n,
	video_in_TD_CLK27,
	video_in_TD_DATA,
	video_in_TD_HS,
	video_in_TD_VS,
	video_in_clk27_reset,
	video_in_TD_RESET,
	video_in_overflow_flag,
	clk_100mhz_clk,
	polygon_ctrl_clk_clk);	

	input		clk_50mhz_in_clk;
	output		pixel_clk_clk;
	input		reset_reset_n;
	input		video_in_TD_CLK27;
	input	[7:0]	video_in_TD_DATA;
	input		video_in_TD_HS;
	input		video_in_TD_VS;
	input		video_in_clk27_reset;
	output		video_in_TD_RESET;
	output		video_in_overflow_flag;
	output		clk_100mhz_clk;
	output		polygon_ctrl_clk_clk;
endmodule
