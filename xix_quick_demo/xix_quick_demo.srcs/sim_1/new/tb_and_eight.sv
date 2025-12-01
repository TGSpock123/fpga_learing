`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/29 21:57:08
// Design Name: 
// Module Name: tb_and_eight
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


module tb_and_eight();

logic [7:0] in_0;
logic out_0;

demo_and_eight demo_and_eight_inst
(
  .in_0  (in_0 ),
  .out_0 (out_0)
);

initial begin
  in_0 = 8'b00_000_000;

  for(int i = 0; i < 8'b11_111_111; i ++) begin
    #10;
    in_0 = in_0 + 1;
  end

  #10;
  $display("仿真完成");
  $finish;
end

endmodule
