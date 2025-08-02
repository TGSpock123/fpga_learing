`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: T G Spock
// 
// Create Date: 2025/08/01 16:08:24
// Design Name: 
// Module Name: tb_run_led
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


module tb_run_led();

reg clock_system;
reg reset_system_n;
wire [3:0] led;

run_led 
#(
  .COUNT_MAX (32'd10)
)
run_led_inst
(
  .clock_system(clock_system),
  .reset_system_n(reset_system_n),
  .led(led)
);

initial begin
  clock_system = 1'b1;
  reset_system_n <= 1'b0;
  #20
  reset_system_n <= 1'b1;
end

always #10 clock_system = ~clock_system;

endmodule
