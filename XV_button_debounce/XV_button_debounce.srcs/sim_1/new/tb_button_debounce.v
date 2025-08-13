`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/10 15:18:25
// Design Name: 
// Module Name: tb_button_debounce
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

//使用之前将counter中CLK_FREQUENCY_MHZ设为10

module tb_button_debounce();

reg clk_sys;
reg rst_sys_n;
reg in_button;
wire event_button;
wire led_out;

initial begin
  clk_sys = 1'b1;
  rst_sys_n = 1'b0;
  in_button = 1'b1;
  #20;
  rst_sys_n = 1'b1;

  forever begin
    in_button = 1'b1;
    #1_000;
    in_button = 1'b0;
    #1_000;
    in_button = 1'b1;
    #500;
    in_button = 1'b0;
    #2_000;
    in_button = 1'b1;
    #100;
    in_button = 1'b0;
    #300_000;
    in_button = 1'b1;
    #1_000;
    in_button = 1'b0;
    #1_000;
    in_button = 1'b1;
    #500;
    in_button = 1'b0;
    #2_000;
    in_button = 1'b1;
    #300_000;
  end
end

always #5 clk_sys = ~clk_sys;

button_debounce button_debounce_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .in_button(in_button),
  .event_button(event_button),
  .led_out(led_out)
);

endmodule
