`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/28 16:11:14
// Design Name: 
// Module Name: tb_silly
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


module tb_silly;

logic in_0  ;
logic in_1  ;
logic in_2  ;
logic out_0 ;

logic [2:0] counter;

demo_silly demo_silly_inst
(
  .in_0  (in_0  ),
  .in_1  (in_1  ),
  .in_2  (in_2  ),
  .out_0 (out_0 )
);

assign in_0 = counter[0];
assign in_1 = counter[1];
assign in_2 = counter[2];

initial begin
  counter = 3'b000;
  
  for(int i = 0; i < 8; i ++) begin
    #10;
    counter = counter + 1;
  end

  #10;
  $display("仿真完成");
  $finish;
end

endmodule
