`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/11 16:27:09
// Design Name: 
// Module Name: tb_pwm_generate
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


module tb_pwm_generate();

reg clk_sys;
reg rst_sys_n;
reg [2:0] output_level;
wire out_pwm;

initial begin
  clk_sys = 1'b0;
  rst_sys_n = 1'b0;
  output_level = 3'b000;
  #20;
  rst_sys_n = 1'b1;

  #30_000_000;  
  output_level = 3'b000;
  #30_000_000;  
  output_level = 3'b001;
  #30_000_000;  
  output_level = 3'b011;
  #30_000_000;  
  output_level = 3'b101;
  #30_000_000; 
  output_level = 3'b001;
end

always #5 clk_sys = ~clk_sys;

pwm_generate pwm_generate_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .output_level(output_level),
  .out_pwm(out_pwm)
);

endmodule
