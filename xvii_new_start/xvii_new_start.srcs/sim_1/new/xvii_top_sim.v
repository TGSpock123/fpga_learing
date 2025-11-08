`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/30 16:54:42
// Design Name: 
// Module Name: xvii_top_sim
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


module xvii_top_sim();

reg sys_clk_p;
reg sys_clk_n;
reg sys_rst_n;
wire [3:0] led;

initial begin
  sys_clk_p <= 1'b0;
  sys_clk_n <= 1'b1;
  sys_rst_n <= 1'b0;  // 初始为复位状态
  #100;
  sys_rst_n <= 1'b1;  // 100ns后释放复位
end

always begin
  sys_clk_p = 1'b0;
  sys_clk_n = 1'b1;
  #2.5;
  sys_clk_p = 1'b1;
  sys_clk_n = 1'b0;
  #2.5;
end

xvii_top xvii_top_inst
(
  .sys_clk_p(sys_clk_p),
  .sys_clk_n(sys_clk_n),
  .sys_rst_n(sys_rst_n),
  .led      (led)
);

endmodule
