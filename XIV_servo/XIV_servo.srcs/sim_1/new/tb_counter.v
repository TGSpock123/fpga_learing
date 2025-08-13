`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/10 11:03:37
// Design Name: 
// Module Name: tb_counter
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


module tb_counter();

reg clk_sys;
reg rst_sys_n;
wire event_counter;

initial begin
  clk_sys = 1'b1;
  rst_sys_n <= 1'b0;
  #20;
  rst_sys_n <= 1'b1;
end

always #5 clk_sys = ~clk_sys;

counter
#(
  .CLK_FREQUENCY_MHZ(32'd10),
  .COUNT_10_NS(32'd0),
  .COUNT_US(32'd0),
  .COUNT_MS(32'd10),
  .COUNT_S(32'd0)
)counter_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .event_counter(event_counter)
);

endmodule
