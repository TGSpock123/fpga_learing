`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: T G Spock
// 
// Create Date: 2025/08/01 11:42:05
// Design Name: 
// Module Name: run_led
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


module run_led
#(
  parameter COUNT_MAX = 32'd99_999_999
)
(
  input  wire         clock_system,
  input  wire         reset_system_n,
  output wire  [3:0]  led
);
reg  [31:0]   reg_count;
reg  [3:0]    reg_led;
assign led = ~reg_led;
localparam [3:0]
LED_0 = 4'b1_011,
LED_1 = 4'b0_111,
LED_2 = 4'b0_001,
LED_3 = 4'b0_010;


always @(posedge clock_system or negedge reset_system_n) begin
  if (!reset_system_n) begin
    reg_count <= 32'd0;
  end else if (reg_count < COUNT_MAX) begin
    reg_count <= reg_count + 1'b1;
  end else begin
    reg_count <= 32'd0;
  end
end

wire en_led = (reg_count == COUNT_MAX);

always @(posedge clock_system or negedge reset_system_n) begin
  if (!reset_system_n) begin
    reg_led <= LED_0;
  end else if (en_led) begin
    case (reg_led)
      LED_0:
        reg_led <= LED_1;
      LED_1:
        reg_led <= LED_2;
      LED_2:
        reg_led <= LED_3;
      LED_3:
        reg_led <= LED_0;
      default: 
        reg_led <= LED_0;
    endcase
  end
end


endmodule
