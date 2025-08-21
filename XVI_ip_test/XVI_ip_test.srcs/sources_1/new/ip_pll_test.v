`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/15 07:56:01
// Design Name: 
// Module Name: ip_pll_test
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


module ip_pll_test
(
  input wire sys_clk_in1_p,
  input wire sys_clk_in1_n,
  input wire sys_rst_n,
  output wire clk_100_m,
  output wire clk_200_m,
  output wire clk_50_m,
  output wire clk_25_m
);

wire locked;

ip_pll_0 instance_name
(
  // Clock out ports
  .clk_out1(clk_100_m),     // output clk_out1
  .clk_out2(clk_200_m),     // output clk_out2
  .clk_out3(clk_50_m),     // output clk_out3
  .clk_out4(clk_25_m),     // output clk_out4
  // Status and control signals
  .resetn(sys_rst_n), // input reset
  .locked(locked),       // output locked
  // Clock in ports
  .clk_in1_p(sys_clk_in1_p),    // input clk_in1_p
  .clk_in1_n(sys_clk_in1_n)    // input clk_in1_n
);    

endmodule
