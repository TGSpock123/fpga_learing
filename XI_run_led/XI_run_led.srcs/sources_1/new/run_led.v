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
  output wire  [1:0]  led
);
reg  [31:0]   reg_count;
reg  [1:0]    reg_led;
assign led = ~reg_led;

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
    reg_led <= 2'b1;
  end else if (en_led) begin
    if (reg_led == 2'b10) begin
      reg_led <= 2'b1;
    end else begin
      reg_led <= reg_led << 1;
    end
  end
end


endmodule
