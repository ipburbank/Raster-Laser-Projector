
module RasterLaserProjector (
                             // Clock pins
                             CLOCK_50,
                             CLOCK2_50,
                             CLOCK3_50,

                             // Audio
                             AUD_ADCDAT,
                             AUD_BCLK,
                             AUD_ADCLRCK,
                             AUD_DACLRCK,
                             AUD_DACDAT,
                             AUD_XCK,

                             // SDRAM
                             DRAM_ADDR,
                             DRAM_BA,
                             DRAM_CAS_N,
                             DRAM_CLK,
                             DRAM_CKE,
                             DRAM_CS_N,
                             DRAM_DQ,
                             DRAM_DQM,
                             DRAM_RAS_N,
                             DRAM_WE_N,

                             // Flash
                             FL_ADDR,
                             FL_CE_N,
                             FL_DQ,
                             FL_OE_N,
                             FL_RESET_N,
                             FL_WE_N,

                             // 40-Pin Header
                             GPIO,

                             // Seven Segment Displays
                             HEX0,
                             HEX1,
                             HEX2,
                             HEX3,
                             HEX4,
                             HEX5,
                             HEX6,
                             HEX7,

                             // AV Config
                             I2C_SCLK,
                             I2C_SDAT,

                             // IR
                             IRDA_RXD,

                             // Pushbuttons
                             KEY,

                             // Char LCD 16x2
                             LCD_BLON,
                             LCD_DATA,
                             LCD_EN,
                             LCD_ON,
                             LCD_RS,
                             LCD_RW,

                             // LEDs
                             LEDG,
                             LEDR,

                             // PS2 Ports
                             PS2_KBCLK,
                             PS2_KBDAT,
                             PS2_MSCLK,
                             PS2_MSDAT,

                             // USB
                             OTG_ADDR,
                             OTG_CS_N,
                             OTG_DATA,
                             OTG_INT,
                             OTG_OE_N,
                             OTG_RST_N,
                             OTG_WE_N,

                             // SD Card
                             SD_CLK,
                             SD_CMD,
                             SD_DAT,

                             // SRAM
                             SRAM_ADDR,
                             SRAM_DQ,
                             SRAM_CE_N,
                             SRAM_WE_N,
                             SRAM_OE_N,
                             SRAM_UB_N,
                             SRAM_LB_N,

                             // Slider Switches
                             SW,

                             // Video In
                             TD_CLK27,
                             TD_DATA,
                             TD_HS,
                             TD_VS,
                             TD_RESET_N,

                             // RS232 UART
                             UART_RXD,
                             UART_TXD,

                             // VGA
                             VGA_CLK,
                             VGA_HS,
                             VGA_VS,
                             VGA_BLANK_N,
                             VGA_SYNC_N,
                             VGA_R,
                             VGA_G,
                             VGA_B
                             );

   /*****************************************************************************
    *                           Parameter Declarations                          *
    *****************************************************************************/

   // image size
   localparam NUM_ROWS = 240;
   localparam NUM_COLS = 320;

   // time to reset y axis from bottom to top in eqivilent number of rows
   localparam Y_AXIS_HEADSTART_TIME = 75;
   localparam Y_AXIS_HOLD_TIME      = 0;

   localparam X_AXIS_DELAY = 20;

   /*****************************************************************************
    *                             Port Declarations                             *
    *****************************************************************************/
   // Clock pins
   input						CLOCK_50;
   input						CLOCK2_50;
   input						CLOCK3_50;

   // Audio
   input						AUD_ADCDAT;
   inout						AUD_BCLK;
   inout						AUD_ADCLRCK;
   inout						AUD_DACLRCK;
   output                                               AUD_DACDAT;
   output                                               AUD_XCK;

   // SDRAM
   output [12: 0]                                       DRAM_ADDR;
   output [ 1: 0]                                       DRAM_BA;
   output                                               DRAM_CAS_N;
   output                                               DRAM_CLK;
   output                                               DRAM_CKE;
   output                                               DRAM_CS_N;
   inout [31: 0]                                        DRAM_DQ;
   output [ 3: 0]                                       DRAM_DQM;
   output                                               DRAM_RAS_N;
   output                                               DRAM_WE_N;

   // Flash
   output [22: 0]                                       FL_ADDR;
   output                                               FL_CE_N;
   inout [ 7: 0]                                        FL_DQ;
   output                                               FL_OE_N;
   output                                               FL_RESET_N;
   output                                               FL_WE_N;

   // 40-Pin Header
   inout [35: 0]                                        GPIO;

   // Seven Segment Displays
   output [ 6: 0]                                       HEX0;
   output [ 6: 0]                                       HEX1;
   output [ 6: 0]                                       HEX2;
   output [ 6: 0]                                       HEX3;
   output [ 6: 0]                                       HEX4;
   output [ 6: 0]                                       HEX5;
   output [ 6: 0]                                       HEX6;
   output [ 6: 0]                                       HEX7;

   // AV Config
   output                                               I2C_SCLK;
   inout						I2C_SDAT;

   //  IR
   input						IRDA_RXD;

   // Pushbuttons
   input [ 3: 0]                                        KEY;

   // Char LCD 16x2
   output                                               LCD_BLON;
   inout [ 7: 0]                                        LCD_DATA;
   output                                               LCD_EN;
   output                                               LCD_ON;
   output                                               LCD_RS;
   output                                               LCD_RW;

   // LEDs
   output [ 8: 0]                                       LEDG;
   output [17: 0]                                       LEDR;

   // PS2 Ports
   inout						PS2_KBCLK;
   inout						PS2_KBDAT;
   inout						PS2_MSCLK;
   inout						PS2_MSDAT;

   // USB
   output [ 1: 0]                                       OTG_ADDR;
   output                                               OTG_CS_N;
   inout [15: 0]                                        OTG_DATA;
   input [ 1: 0]                                        OTG_INT;
   output                                               OTG_OE_N;
   output                                               OTG_RST_N;
   output                                               OTG_WE_N;

   // SD Card
   output                                               SD_CLK;
   inout						SD_CMD;
   inout [ 3: 0]                                        SD_DAT;

   // SRAM
   output [19: 0]                                       SRAM_ADDR;
   inout [15: 0]                                        SRAM_DQ;
   output                                               SRAM_CE_N;
   output                                               SRAM_WE_N;
   output                                               SRAM_OE_N;
   output                                               SRAM_UB_N;
   output                                               SRAM_LB_N;

   // Slider Switches
   input [17: 0]                                        SW;

   // Video In
   input						TD_CLK27;
   input [ 7: 0]                                        TD_DATA;
   input						TD_HS;
   input						TD_VS;
   output                                               TD_RESET_N;

   // RS232 UART
   input						UART_RXD;
   output                                               UART_TXD;

   // VGA
   output                                               VGA_CLK;
   output                                               VGA_HS;
   output                                               VGA_VS;
   output                                               VGA_BLANK_N;
   output                                               VGA_SYNC_N;
   output [ 7: 0]                                       VGA_R;
   output [ 7: 0]                                       VGA_G;
   output [ 7: 0]                                       VGA_B;

   // ------------- EXTERNAL CONNECTIONS -------------
   // 3.3V, 5V, and GND from the extension header are also used by the solder boards

   wire                                                 reset;
   assign reset = ~KEY[0];

   // x-axis
   wire                                                 x_axis_ctrl_clk;
   assign GPIO[13] = x_axis_ctrl_clk;
   // give convenient name to the x-axis opto
   wire                                                 x_axis_stb_raw1;
   reg                                                  x_axis_stb, x_axis_stb_filtered, x_axis_stb_raw2;
   assign x_axis_stb_raw1 = GPIO[8];
   assign LEDG[1] = x_axis_stb_filtered;
   assign LEDG[2] = x_axis_stb;

   // DAC connections
   // what row we are displaying, [0, NUM_ROWS - 1]
   reg [7:0]                                            y_axis_position;
   wire [8:0]                                           y_axis_address;
   wire [7:0]                                           y_axis_sin_out;
   assign LEDR[7:0] = y_axis_position;
   assign GPIO[7:0] = y_axis_sin_out;
   Sin_Table sintable (CLOCK2_50, y_axis_address[8:1], y_axis_sin_out);

   reg                                                  y_axis_wr; // tell DAC to write
   assign GPIO[9] = y_axis_wr;
   assign LEDG[0] = y_axis_wr;

   // column of the pixel we are projecting now
   reg [8:0]                                            pixel_column;
   wire [1:0]                                           laser_intensity;
   assign GPIO[11] = laser_intensity[0];
   assign GPIO[10] = laser_intensity[1];

   /*****************************************************************************
    *                 Internal Wires and Registers Declarations                 *
    *****************************************************************************/

   // Internal Wires
   wire                                                CLOCK_100K, CLOCK_PIXEL;

   wire [7:0]                                          framebuffer_readdata;
   wire [31:0]                                         framebuffer_address;
   wire                                                framebuffer_write = 1'b0;
   wire                                                framebuffer_clken = 1'b1;
   wire                                                framebuffer_chipselect = 1'b1;

   // Internal Registers

   /*****************************************************************************
    *                         Finite State Machine(s)                           *
    *****************************************************************************/
   always @(posedge CLOCK_100K) begin
      x_axis_stb_raw2 <= x_axis_stb_raw1;
      x_axis_stb <= x_axis_stb_raw2;
   end

   // x axis strobe debounce machine
   reg [1:0]                                            stb_filter_state;
   assign LEDG[4:3] = stb_filter_state;

   localparam stb_filter_state_LL=0, stb_filter_state_LH=1, stb_filter_state_HH=2, stb_filter_state_HL=3;
   always @(posedge CLOCK_100K or posedge reset) begin
      if (reset) begin
         stb_filter_state <= stb_filter_state_LL;
      end
      else if (stb_filter_state == stb_filter_state_LL) begin
         if (x_axis_stb == 1) begin
            stb_filter_state <= stb_filter_state_LH;
         end
         x_axis_stb_filtered <= 0;
      end
      else if (stb_filter_state == stb_filter_state_LH) begin
         if (x_axis_stb == 1) begin
            stb_filter_state <= stb_filter_state_HH;
         end
         else begin
            stb_filter_state <= stb_filter_state_LL;
         end
         x_axis_stb_filtered <= 0;
      end
      else if (stb_filter_state == stb_filter_state_HH) begin
         if (x_axis_stb == 0) begin
            stb_filter_state <= stb_filter_state_HL;
         end
         x_axis_stb_filtered <= 1;
      end
      else if (stb_filter_state == stb_filter_state_HL) begin
         if (x_axis_stb == 0) begin
            stb_filter_state <= stb_filter_state_LL;
         end
         else begin
            stb_filter_state <= stb_filter_state_HH;
         end
         x_axis_stb_filtered <= 1;
      end
   end

   // State Machine Registers
   reg [2:0]                                            y_axis_state;
   localparam y_axis_state_reset = 0, y_axis_state_display=1, y_axis_state_headstart=2, y_axis_state_return=3, y_axis_state_hold=4;
   reg [7:0]                                            y_axis_headstart_counter, y_axis_return_counter, y_axis_hold_counter;

   always @(posedge CLOCK_100K) y_axis_wr <= ~y_axis_wr;

   always @(posedge x_axis_stb_filtered) begin
      if (reset) begin
         // go to the return state to give the mirror time to reset too
         y_axis_state <= y_axis_state_return;
         y_axis_position <= 0;
         y_axis_return_counter <= 0;
         y_axis_hold_counter <= 0;
         y_axis_headstart_counter <= 0;
      end
      else if (y_axis_state == y_axis_state_display) begin
         y_axis_position <= y_axis_position + 1;
         if (y_axis_position == (NUM_ROWS - 1)) begin
            y_axis_state <= y_axis_state_return;
            y_axis_return_counter <= NUM_ROWS - 1;
            y_axis_hold_counter <= 0;
            y_axis_headstart_counter <= 0;
            y_axis_position <= 0;
         end
      end
      else if (y_axis_state == y_axis_state_return) begin
         y_axis_return_counter <= y_axis_return_counter - 1;
         if (y_axis_return_counter == 0) begin
            y_axis_return_counter <= 0; // cancel that write
            y_axis_state <= y_axis_state_hold;
         end
      end
      else if (y_axis_state == y_axis_state_hold) begin
         y_axis_hold_counter <= y_axis_hold_counter + 1;
         if (y_axis_hold_counter == Y_AXIS_HOLD_TIME) begin
            y_axis_state <= y_axis_state_headstart;
         end
      end
      else if (y_axis_state == y_axis_state_headstart) begin
         y_axis_headstart_counter <= y_axis_headstart_counter + 1;
         if (y_axis_headstart_counter == Y_AXIS_HEADSTART_TIME) begin
            y_axis_state <= y_axis_state_display;
         end
      end
   end // always @ (posedge x_axis_stb_filtered or posedge reset)

   assign y_axis_address = y_axis_position + y_axis_headstart_counter + y_axis_return_counter;

   // ------------- PIXEL OUTPUT STATE MACHINE -------------
   // keep track of prev y axis position so we can reset the x axis when y axis changes lines
   reg [7:0] y_axis_position_prev;
   always @(posedge CLOCK_PIXEL)
     y_axis_position_prev <= y_axis_position;

   reg [9:0] x_axis_delay_count;

   always @(posedge CLOCK_PIXEL or posedge reset) begin
      if (reset) begin
         pixel_column <= 0;
         x_axis_delay_count <= 0;
      end
      else if (x_axis_delay_count < X_AXIS_DELAY) begin
         x_axis_delay_count <= x_axis_delay_count + 1;
      end
      else if (y_axis_position_prev != y_axis_position) begin // start a new row
         pixel_column <= 0;
         x_axis_delay_count <= 0;
      end
      else if (pixel_column < NUM_COLS) begin
         pixel_column <= pixel_column + 1;
      end
   end

   // assign the address and receive the pixel.
   // The pixel will be two cycles delayed, but that is OK.
   assign framebuffer_address = ((NUM_ROWS - y_axis_position - 1) * NUM_COLS) + pixel_column + 32'h900000;
   assign laser_intensity = ((y_axis_state != y_axis_state_display)
                             || (x_axis_delay_count < X_AXIS_DELAY)
                             || (pixel_column >= NUM_COLS)
                             || reset) ? 0 : framebuffer_readdata[7:6]; // blank on reset

   assign LEDR[15:8] = framebuffer_readdata[7:0];

   /*****************************************************************************
    *                             Sequential Logic                              *
    *****************************************************************************/


   /*****************************************************************************
    *                            Combinational Logic                            *
    *****************************************************************************/

   /*****************************************************************************
    *                              Internal Modules                             *
    *****************************************************************************/

   Raster_Laser_Projector qsys (
                                .clk_50mhz_in_clk        (CLOCK_50),  // clk_50mhz_in.clk
                                .reset_reset_n           (1'b0),      // reset.reset_n

                                // Video In Subsystem
                                .video_in_TD_CLK27       (TD_CLK27),
                                .video_in_TD_DATA        (TD_DATA),
                                .video_in_TD_HS          (TD_HS),
                                .video_in_TD_VS          (TD_VS),
                                .video_in_clk27_reset    (),
                                .video_in_TD_RESET       (TD_RESET_N),
                                .video_in_overflow_flag  (),

                                .video_in_framebuffer_address    (framebuffer_address),
                                .video_in_framebuffer_chipselect (framebuffer_chipselect),
                                .video_in_framebuffer_clken      (framebuffer_clken),
                                .video_in_framebuffer_write      (framebuffer_write),
                                .video_in_framebuffer_readdata   (framebuffer_readdata),
                                .video_in_framebuffer_writedata  (),

                                .polygon_ctrl_clk_clk    (x_axis_ctrl_clk),
                                .pixel_clk_clk           (CLOCK_PIXEL),
                                .clk_100k_clk            (CLOCK_100K)
                                );
endmodule

