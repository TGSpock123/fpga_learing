`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/21 14:31:09
// Design Name: 
// Module Name: tb_ip_double_ram_test
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


module tb_ip_double_ram_test();


reg sys_clk_p;
reg sys_clk_n;
reg sys_rst_n;
wire led_0;

initial begin
  sys_clk_p = 1'b0;
  sys_clk_n = 1'b1;
  sys_rst_n = 1'b0;
  #20;
  sys_rst_n = 1'b1;
end

always #5 sys_clk_p = ~sys_clk_p;
always #5 sys_clk_n = ~sys_clk_n;

ip_double_ram_test ip_double_ram_test_inst
(
  .sys_clk_p(sys_clk_p),
  .sys_clk_n(sys_clk_n),
  .sys_rst_n(sys_rst_n),
  .led_0(led_0)
);

endmodule
