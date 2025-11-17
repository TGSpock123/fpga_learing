`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/01 10:14:20
// Design Name: 
// Module Name: xviii_top
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


module xviii_top
(
  input  wire         clk_sys_p ,
  input  wire         clk_sys_n ,
  input  wire         rst_sys_n ,
  input  wire [25:0]  in_button ,
  output wire [6:0]   out_buzzer
);

wire clk_sys_ibuf;
wire clk_sys;
wire [34:0] which_button;

// Ensure the differential system clock drives the global clock network
IBUFGDS #(
  .DIFF_TERM   ("FALSE"),
  .IBUF_LOW_PWR("TRUE")
) IBUFGDS_SYS
(
  .I  (clk_sys_p),
  .IB (clk_sys_n),
  .O  (clk_sys_ibuf)
);

BUFG BUFG_SYS
(
  .I(clk_sys_ibuf),
  .O(clk_sys)
);

button_top button_top_inst
(
  .clk_sys      (clk_sys),
  .rst_sys_n    (rst_sys_n),
  .in_button    (in_button),
  .which_button (which_button)
);

buzzer_top buzzer_top_inst
(
  .clk_sys       (clk_sys),
  .rst_sys_n     (rst_sys_n),
  .which_button  (which_button),
  .out_buzzer    (out_buzzer)
);

endmodule
