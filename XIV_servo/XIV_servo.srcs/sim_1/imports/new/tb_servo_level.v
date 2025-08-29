`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/11 10:52:33
// Design Name: 
// Module Name: tb_servo_level
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


module tb_servo_level();

reg clk_sys;
reg rst_sys_n;
reg event_button;
wire [2:0] out_level;

initial begin
  clk_sys = 0;
  rst_sys_n = 0;
  event_button = 0;
  #20;
  rst_sys_n = 1;
  
  forever begin
    repeat (20) begin
      event_button = 1;
      #10;
      event_button = 0;
      #100;
    end
  end
end

always #5 clk_sys = ~clk_sys;

servo_level servo_level_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .event_button(event_button),
  .out_level(out_level)
);

endmodule
