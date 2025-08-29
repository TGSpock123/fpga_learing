`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/21 17:46:16
// Design Name: 
// Module Name: uart
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart
(
  input  wire       uart_clk,
  input  wire       uart_rst_n,

  input  wire       uart_rx_input,
  output wire       uart_rx_finish,  
  output wire [7:0] uart_rx_output,
  
  input  wire [7:0] uart_tx_input,
  input  wire       uart_tx_start,
  output wire       uart_tx_output,
  output wire       uart_tx_busy
);

wire uart_rx_clk;
wire uart_tx_clk;

clock_generator 
#(
  .IF_IS_UART_RX (1'd1),
  .UART_BPS      ('d115_200),
  .SYS_CLK_FREQ  ('d100_000_000)
)
clock_generator_uart_rx
(
  .sys_clk    (uart_clk),
  .sys_rst_n  (uart_rst_n),
  .clk_output (uart_rx_clk)
);

uart_rx uart_rx_inst
(
  .uart_rx_clk    (uart_rx_clk),
  .uart_rst_n     (uart_rst_n),
  .uart_rx_input  (uart_rx_input),
  .uart_rx_finish   (uart_rx_finish),
  .uart_rx_output (uart_rx_output)
);

clock_generator 
#(
  .IF_IS_UART_RX  (1'd0),
  .UART_BPS       ('d115_200),
  .SYS_CLK_FREQ   ('d100_000_000)
)
clock_generator_uart_tx
(
  .sys_clk    (uart_clk),
  .sys_rst_n  (uart_rst_n),
  .clk_output (uart_tx_clk)
);

uart_tx uart_tx_inst
(
  .uart_tx_clk     (uart_tx_clk),
  .uart_rst_n      (uart_rst_n),
  .uart_tx_start    (uart_tx_start),
  .uart_tx_input   (uart_tx_input),
  .uart_tx_output  (uart_tx_output),
  .uart_tx_busy    (uart_tx_busy)
);

endmodule
