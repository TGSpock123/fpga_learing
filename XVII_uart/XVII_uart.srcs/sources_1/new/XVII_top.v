`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/27 15:26:47
// Design Name: 
// Module Name: XVII_top
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


module XVII_top
(
  input  wire       sys_clk_p,
  input  wire       sys_clk_n,
  input  wire       sys_rst_n,
  input  wire       uart_rx_input,
  output wire       uart_tx_output
);

wire       sys_clk_single;
wire       uart_rx_finish;
wire       uart_tx_start;
wire       uart_tx_busy;
wire [7:0] uart_rx_output;
wire [7:0] uart_tx_input;
reg        reg_uart_tx_start;
reg  [7:0] reg_uart_tx_input;
reg        reg_uart_rx_finish;

assign uart_tx_start = reg_uart_tx_start;
assign uart_tx_input = reg_uart_tx_input;

IBUFDS clk_differ_to_single
(
  .I  (sys_clk_p),
  .IB (sys_clk_n),
  .O  (sys_clk_single)
);

uart uart_inst
(
  .uart_clk(sys_clk_single),
  .uart_rst_n(sys_rst_n),
  .uart_rx_input(uart_rx_input),
  .uart_rx_finish(uart_rx_finish),
  .uart_rx_output(uart_rx_output),
  .uart_tx_input(uart_tx_input),
  .uart_tx_start(uart_tx_start),
  .uart_tx_output(uart_tx_output),
  .uart_tx_busy(uart_tx_busy)
);

always @(posedge sys_clk_single or negedge sys_rst_n) begin
  if (sys_rst_n == 1'b0) begin
    reg_uart_rx_finish <= 1'b0;
    reg_uart_tx_start <= 1'b0;
    reg_uart_tx_input <= 8'b0;
  end else begin
    reg_uart_rx_finish <= uart_rx_finish;
    if ((uart_rx_finish == 1'b1) && (reg_uart_rx_finish == 1'b0) && (uart_tx_busy == 1'b0)) begin
      reg_uart_tx_start <= 1'b1;
      reg_uart_tx_input <= uart_rx_output;
    end else begin
      reg_uart_tx_start <= 1'b0;
    end
  end
end

endmodule
