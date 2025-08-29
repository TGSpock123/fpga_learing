`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/09 13:15:09
// Design Name: 
// Module Name: pwm_generate
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


module pwm_generate
(
  input wire clk_sys,
  input wire rst_sys_n,
  input wire [2:0] output_level,
  output wire out_pwm
);

wire flag_500_us;
wire flag_20_ms;
wire flag_high_low;
reg [2:0] reg_500ms_times;
reg reg_out_pwm;

assign out_pwm = reg_out_pwm;
assign flag_high_low = (reg_500ms_times == output_level);

counter
#(
  .CLK_FREQUENCY_MHZ(32'd100),
  .COUNT_10_NS(32'd0),
  .COUNT_US(32'd500),
  .COUNT_MS(32'd0),
  .COUNT_S(32'd0)
)
counter_0_5_ms_inst(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .event_counter(flag_500_us)
);

counter
#(
  .CLK_FREQUENCY_MHZ(32'd100),
  .COUNT_10_NS(32'd0),
  .COUNT_US(32'd0),
  .COUNT_MS(32'd20),
  .COUNT_S(32'd0)
)
counter_20_ms_inst(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .event_counter(flag_20_ms)
);

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    reg_500ms_times <= 3'b0;
  end else if (flag_20_ms == 1'b1) begin
    reg_500ms_times <= 3'b0;
  end else if (flag_500_us == 1'b1) begin
    reg_500ms_times <= reg_500ms_times + 1;
  end
end

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    reg_out_pwm <= 1'b0;
  end else if (flag_20_ms == 1'b1) begin
    reg_out_pwm <= 1'b1; 
  end else if (flag_high_low == 1'b1) begin
    reg_out_pwm <= 1'b0; 
  end
end

endmodule
