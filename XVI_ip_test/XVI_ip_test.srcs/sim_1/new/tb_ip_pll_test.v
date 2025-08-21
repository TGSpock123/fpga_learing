`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/15 10:42:30
// Design Name: 
// Module Name: tb_ip_pll_test
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

module tb_ip_pll_test();

reg sys_clk_in1_p;
reg sys_clk_in1_n;
reg sys_rst_n;

wire clk_100_m;
wire clk_200_m;
wire clk_50_m;
wire clk_25_m;

initial begin
  sys_clk_in1_p = 1'b0;
  sys_clk_in1_n = 1'b1;
  sys_rst_n = 1'b0;
  #20
  sys_rst_n = 1'b1;
end

always #5 sys_clk_in1_p = ~sys_clk_in1_p;
always #5 sys_clk_in1_n = ~sys_clk_in1_n;

ip_pll_test ip_pll_test_inst
(
  .sys_clk_in1_p(sys_clk_in1_p),
  .sys_clk_in1_n(sys_clk_in1_n),
  .sys_rst_n(sys_rst_n),
  .clk_100_m(clk_100_m),
  .clk_200_m(clk_200_m),
  .clk_50_m(clk_50_m),
  .clk_25_m(clk_25_m)
);

endmodule
