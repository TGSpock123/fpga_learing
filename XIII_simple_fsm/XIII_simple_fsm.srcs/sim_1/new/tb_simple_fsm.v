`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/06 21:53:51
// Design Name: 
// Module Name: tb_simple_fsm
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


module tb_simple_fsm();

reg clk_sys;
reg rst_sys_n;
reg in_coin_one;
reg in_coin_point;
wire out_cola;
wire out_change;

reg random_data;

initial begin
  clk_sys = 1'b1;
  rst_sys_n <= 1'b0;
  #10;
  rst_sys_n <= 1'b1;
end

always #5 clk_sys = ~clk_sys;

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    random_data <= 1'b0;
  end else begin
    random_data <= {$random} % 2;
  end
end

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    in_coin_point <= 1'b0;
  end else begin
    in_coin_point <= random_data;
  end
end

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    in_coin_one <= 1'b0;
  end else begin
    in_coin_one <= ~random_data;
  end
end

wire [2:0] state = simple_fsm_inst.state;
wire [1:0] in_money = simple_fsm_inst.in_money;

initial begin
  $timeformat(-9, 0, "ns", 6);
  $monitor("@time %t: in_money = %b, state = %b, out_cola = %b. ", $time, in_money, state, out_cola);
end

simple_fsm simple_fsm_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
  .in_coin_one(in_coin_one),
  .in_coin_point(in_coin_point),
  .out_cola(out_cola),
  .out_change(out_change)
);

endmodule
