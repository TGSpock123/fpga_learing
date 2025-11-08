`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/01 14:49:30
// Design Name: 
// Module Name: buzzer_top
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

`include "button_define.vh"

module buzzer_top
(
  input  wire         clk_sys       ,
  input  wire         rst_sys_n     ,
  input  wire [34:0]  which_button  ,
  output wire [6:0]   out_buzzer    
);

genvar g;
generate
  for (g = 0; g < 7; g = g + 1) begin : buzzer_array
    buzzer buzzer_inst
    (
      .clk_sys         (clk_sys),
      .rst_sys_n       (rst_sys_n),
      .which_button    (which_button[(g + 1) * 5 - 1: g * 5]),
      .out_buzzer      (out_buzzer[g])
    );
  end
endgenerate

endmodule
