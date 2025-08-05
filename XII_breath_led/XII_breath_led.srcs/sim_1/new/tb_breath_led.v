`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/04 21:47:54
// Design Name: 
// Module Name: tb_breath_led
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

module tb_breath_led();

reg clock_system;
reg reset_system_n;
wire led_pwm;
wire led_off;

initial begin
  clock_system <= 1'b0;
  reset_system_n <= 1'b0;
  #20;
  reset_system_n <= 1'b1;
end

always #10 clock_system <= ~clock_system;

breath_led
#(
  .US_COUNT_MAX (7'd2),
  .MS_COUNT_MAX (10'd9),
  .S_COUNT_MAX (10'd9)
)
breath_led_inst
(
  .clock_system (clock_system),
  .reset_system_n (reset_system_n),
  .led_pwm (led_pwm),
  .led_off (led_off)
);

endmodule
