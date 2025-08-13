`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 22:21:57
// Design Name: 
// Module Name: top
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


module top
(
  input wire clk_sys,
  input wire rst_sys_n,
  input wire in_button,
  output wire out_servo
);

wire wire_event_button;
wire [2:0] wire_servo_level;

button_debounce button_debounce_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .in_button(in_button),
  .event_button(wire_event_button)
);

servo_level servo_level_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .event_button(wire_event_button),
  .out_level(wire_servo_level)
);

pwm_generate pwm_generate_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .output_level(wire_servo_level),
  .out_pwm(out_servo)
);

endmodule
