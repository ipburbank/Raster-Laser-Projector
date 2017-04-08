
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

   /*****************************************************************************
    *                 Internal Wires and Registers Declarations                 *
    *****************************************************************************/
   // Internal Wires

   // Internal Registers

   // State Machine Registers

   /*****************************************************************************
    *                         Finite State Machine(s)                           *
    *****************************************************************************/


   /*****************************************************************************
    *                             Sequential Logic                              *
    *****************************************************************************/


   /*****************************************************************************
    *                            Combinational Logic                            *
    *****************************************************************************/

   // Output Assignments
   assign GPIO[ 0]		= 1'bZ;
   assign GPIO[ 2]		= 1'bZ;
   assign GPIO[16]		= 1'bZ;
   assign GPIO[18]		= 1'bZ;

   /*****************************************************************************
    *                              Internal Modules                             *
    *****************************************************************************/
   Raster_Laser_Projector qsys (
                                .clk_50mhz_in_clk                   (CLOCK_50),  // clk_50mhz_in.clk
                                .reset_reset_n                      (1'b0),      // reset.reset_n

                                // Video In Subsystem
                                .video_in_TD_CLK27                                              (TD_CLK27),
                                .video_in_TD_DATA							(TD_DATA),
                                .video_in_TD_HS							(TD_HS),
                                .video_in_TD_VS							(TD_VS),
                                .video_in_clk27_reset					(),
                                .video_in_TD_RESET						(TD_RESET_N),
                                .video_in_overflow_flag					()

                                );

   X_Axis_Subsystem x_axis_subsystem (
                                      .clk_50            (CLOCK_50),
                                      .reset             (1'b0),
                                      .motor_ctrl_signal (GPIO[0]),
                                      .feedback_clk      (1'b1)
                                      );
endmodule

