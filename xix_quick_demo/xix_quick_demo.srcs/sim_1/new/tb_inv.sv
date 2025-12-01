`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/28 16:10:14
// Design Name: 
// Module Name: tb_inv
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


module tb_inv;

logic [3:0] in_0;
logic [3:0] out_0;

demo_inv demo_inv_inst
(
  .in_0  (in_0),
  .out_0 (out_0)
);

initial begin
  in_0 = 4'b0_000;

  for(int i = 0; i < 16; i ++) begin
    #10;
    in_0 = in_0 + 1;
  end

  #10;
  $display("仿真完成");
  $finish;
end

endmodule
