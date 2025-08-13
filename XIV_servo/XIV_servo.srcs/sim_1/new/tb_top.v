`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/11 17:48:31
// Design Name: 
// Module Name: tb_top
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


module tb_top();

reg clk_sys;
reg rst_sys_n;
reg in_button;
wire out_servo;

initial begin
  clk_sys = 1'b0;
  rst_sys_n = 1'b0;
  in_button = 1'b1; 
  #20;
  rst_sys_n = 1'b1;
  #100;

  in_button = 1'b0;
  #1_000_000;
  in_button = 1'b1;
  #500_000;
  in_button = 1'b0;
  #1_500_000;  
  in_button = 1'b1; 
  #500_000;         
  in_button = 1'b0; 
  #2_000_000;  
  in_button = 1'b1;  
  #500_000;          
  
  #1_000_000;
  $finish;
end

always #5 clk_sys = ~clk_sys;

top top_inst
(
 .clk_sys(clk_sys),
 .rst_sys_n(rst_sys_n),
 .in_button(in_button),
 .out_servo(out_servo)
);

endmodule
