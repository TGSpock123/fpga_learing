`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/09 13:15:09
// Design Name: 
// Module Name: servo_level
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


module servo_level
(
  input wire clk_sys,
  input wire rst_sys_n,
  input wire event_button,
  output wire [2:0] out_level
);

reg [2:0] reg_out_level;
assign out_level = reg_out_level;

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    reg_out_level <= 3'b0;
  end else if (event_button == 1'b1) begin
    if (reg_out_level == 3'b101) begin
      reg_out_level <= 3'b0;
    end else begin
      reg_out_level <= reg_out_level + 1;
    end
  end
end

endmodule
