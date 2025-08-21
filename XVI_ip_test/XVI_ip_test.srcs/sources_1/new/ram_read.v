`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/20 20:28:09
// Design Name: 
// Module Name: ram_read
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


module ram_read
(
  input   wire        ram_clk_read,
  input   wire        ram_reset_n,
  input   wire        ram_rw_flag,
  input   wire [7:0]  ram_read_data,
  output  wire        ram_read_en,
  output  wire [5:0]  ram_read_address
);

reg [5:0] reg_ram_read_address;

assign ram_read_en = ram_rw_flag;
assign ram_read_address = reg_ram_read_address;

always @(posedge ram_clk_read or negedge ram_reset_n) begin
  if (ram_reset_n == 1'b0) begin
    reg_ram_read_address <= 6'b0;
  end else if (reg_ram_read_address < 6'd63 && ram_read_en == 1'b1) begin
    reg_ram_read_address <= reg_ram_read_address + 6'b1;
  end else begin
    reg_ram_read_address <= 6'b0;
  end
end

endmodule
