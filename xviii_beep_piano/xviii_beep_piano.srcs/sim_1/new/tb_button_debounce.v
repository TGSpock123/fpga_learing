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

//使用之前将counter中clk_freq_mhz设为1以避免等待

module tb_button_debounce();

`define SIMULATION

reg clk_sys;
reg rst_sys_n;
reg in_button;
wire event_press;
wire event_release;

// helper task: 产生 n 次弹跳（低->高）
task bounce;
  input integer n;
  input integer low_time_ns; // 保持低电平的时间（ns）
  input integer high_time_ns; // 保持高电平的时间（ns）
  integer i;
begin
  for (i = 0; i < n; i = i + 1) begin
    in_button = 1'b0; #(low_time_ns);
    in_button = 1'b1; #(high_time_ns);
  end
end
endtask

initial begin
  clk_sys = 1'b1;
  rst_sys_n = 1'b0;
  in_button = 1'b1;
  #20;
  rst_sys_n = 1'b1;

  bounce(6, 100, 100);
  #5_000;

  in_button = 1'b0; #20_000; 
  in_button = 1'b1; #20_000; 

  bounce(4, 200, 200);
  #5_000;

  bounce(3, 100, 100);
  in_button = 1'b0; #50_000; // 50 us
  in_button = 1'b1; #50_000;

  $display("TB finished at %0t ns", $time);
  $stop;
end

always #2.5 clk_sys = ~clk_sys;

button_debounce button_debounce_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .in_button(in_button),
  .event_press(event_press),
  .event_release(event_release)
);

endmodule
