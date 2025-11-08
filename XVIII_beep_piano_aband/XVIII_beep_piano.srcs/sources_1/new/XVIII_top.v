`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/29 17:30:34
// Design Name: 
// Module Name: XVIII_top
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


module XVIII_top
(
  input  wire clk_sys_p,
  input  wire clk_sys_n,
  input  wire rst_sys_n,
  input  wire in_button_0,
  output wire out_led
);

wire event_press;
wire event_release;
wire clk_sys;
reg reg_out_led;

assign out_led = reg_out_led;

IBUFDS clk_differ_to_single
(
  .I  (clk_sys_p),
  .IB (clk_sys_n),
  .O  (clk_sys)
);

button_debounce button_0_inst
(
  .clk_sys      (clk_sys),
  .rst_sys_n    (rst_sys_n),
  .in_button    (in_button_0),
  .event_press  (event_press),
  .event_release(event_release)
);

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    reg_out_led <= 1'b0;
  end else if (event_press == 1'b1) begin
    reg_out_led <= 1'b1;
  end else if (event_release == 1'b1) begin
    reg_out_led <= 1'b0;
  end
end

endmodule
