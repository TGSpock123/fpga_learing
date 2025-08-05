`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/04 21:44:15
// Design Name: 
// Module Name: breath_led
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

module breath_led
#(
  parameter US_COUNT_MAX  = 7'd99,
  parameter MS_COUNT_MAX  = 10'd999,
  parameter S_COUNT_MAX   = 10'd999
)
(
  input wire clock_system,
  input wire reset_system_n,
  output wire led_pwm,
  output wire led_off
);

reg [6:0] reg_1_us_count;
reg [9:0] reg_1_ms_count;
reg [9:0] reg_1_s_count;
reg       reg_pwm_en;
reg       reg_output_led;

assign led_pwm = reg_output_led;
assign led_off = 1'b0;

always @(posedge clock_system or negedge reset_system_n) begin
  if (reset_system_n == 1'b0) begin
    reg_1_us_count <= 7'b0;
  end else if (reg_1_us_count == US_COUNT_MAX) begin
    reg_1_us_count <= 7'b0;
  end else begin
    reg_1_us_count <= reg_1_us_count + 1'b1;
  end
end

always @(posedge clock_system or negedge reset_system_n) begin
  if (reset_system_n == 1'b0) begin
    reg_1_ms_count <= 10'b0;
  end else if (reg_1_us_count == US_COUNT_MAX 
            && reg_1_ms_count == MS_COUNT_MAX) begin
    reg_1_ms_count <= 10'b0;
  end else if (reg_1_us_count == US_COUNT_MAX) begin
    reg_1_ms_count <= reg_1_ms_count + 10'b1;
  end else begin
    reg_1_ms_count <= reg_1_ms_count;
  end
end

always @(posedge clock_system or negedge reset_system_n) begin
  if (reset_system_n == 1'b0) begin
    reg_1_s_count <= 10'b0;
  end else if (reg_1_s_count == S_COUNT_MAX 
            && reg_1_us_count == US_COUNT_MAX 
            && reg_1_ms_count == MS_COUNT_MAX) begin
    reg_1_s_count <= 10'b0;
  end else if (reg_1_us_count == US_COUNT_MAX 
            && reg_1_ms_count == MS_COUNT_MAX) begin
    reg_1_s_count <= reg_1_s_count + 10'b1;
  end else begin
    reg_1_s_count <= reg_1_s_count;
  end
end

always @(posedge clock_system or negedge reset_system_n) begin
  if (reset_system_n == 1'b0) begin
    reg_pwm_en <= 1'b0;
  end else if (reg_1_s_count == S_COUNT_MAX 
            && reg_1_us_count == US_COUNT_MAX 
            && reg_1_ms_count == MS_COUNT_MAX) begin
    reg_pwm_en <= ~reg_pwm_en;
  end else begin
    reg_pwm_en <= reg_pwm_en;
  end
end

always @(posedge clock_system or negedge reset_system_n) begin
  if (reset_system_n == 1'b0) begin
    reg_output_led <= 1'b0;
  end else if ((reg_pwm_en == 1'b1 && reg_1_ms_count < reg_1_s_count) 
            || (reg_pwm_en == 1'b0 && reg_1_ms_count > reg_1_s_count)) begin
    reg_output_led <= 1'b0;
  end else begin
    reg_output_led <= 1'b1;            
  end
end

endmodule
