`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/15 17:33:35
// Design Name: 
// Module Name: tb_ip_rom_test
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


module tb_ip_rom_test();

reg sys_clk;
reg sys_rst_n;
reg [7:0] address_a;
wire [7:0] data_a;

initial begin
  sys_clk = 1'b1;
  sys_rst_n <= 1'b0;
  #200;
  sys_rst_n <= 1'b1;
end

always #5 sys_clk = ~sys_clk;

always @(posedge sys_clk or negedge sys_rst_n) begin
  if (sys_rst_n == 1'b0) begin
    address_a <= 8'd0;
  end else if (address_a == 8'd255) begin
    address_a <= 8'd0;
  end else begin
    address_a <= address_a + 8'd1;
  end
end

ip_rom_test ip_rom_test_inst
(
  .sys_clk(sys_clk),
  .address_a(address_a),
  .data_a(data_a)
);

endmodule
