`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/15 16:30:45
// Design Name: 
// Module Name: ip_rom_test
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


module ip_rom_test
(
  input wire sys_clk,
  input wire [7:0] address_a,
  output wire [7:0] data_a
);

ip_rom_256x8_0 rom_0_inst 
(
  .clka(sys_clk),    // input wire clka
  .addra(address_a),  // input wire [7 : 0] addra
  .douta(data_a)  // output wire [7 : 0] douta
);

endmodule
