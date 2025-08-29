`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/23 23:03:31
// Design Name: 
// Module Name: clock_generator
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


module clock_generator
#(
  parameter IF_IS_UART_RX = 1'd1,            /*1'd1 for rx, 1'd0 for tx;*/
  parameter UART_BPS = 'd115_200,
  parameter SYS_CLK_FREQ = 'd100_000_000
)
(
  input  wire sys_clk,
  input  wire sys_rst_n,
  output wire clk_output
);

localparam COUNT_MAX = (IF_IS_UART_RX == 1'd1) ?          /*%50占空比时钟*/
                       (SYS_CLK_FREQ / UART_BPS / 32) :   /*16倍频      */
                       (SYS_CLK_FREQ / UART_BPS / 2);     /*不需要倍频   */
localparam COUNT_WIDTH = $clog2(COUNT_MAX);

reg [COUNT_WIDTH - 1:0] num_count_down;
reg reg_clk_output;

assign clk_output = reg_clk_output;

always @(posedge sys_clk or negedge sys_rst_n) begin
  if (sys_rst_n == 1'b0) begin
    num_count_down <= {COUNT_WIDTH{1'b0}};
    reg_clk_output <= 1'b0;
  end else if (num_count_down == COUNT_MAX - 1) begin
    num_count_down <= {COUNT_WIDTH{1'b0}};
    reg_clk_output <= ~reg_clk_output;
  end else begin
    num_count_down <= num_count_down + 1'b1;
    reg_clk_output <= reg_clk_output;
  end
end

endmodule
