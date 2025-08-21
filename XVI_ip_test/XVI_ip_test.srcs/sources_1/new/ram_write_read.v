`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/18 11:09:55
// Design Name: 
// Module Name: ram_write_read
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


module ram_write_read
(
  input wire ram_clk,
  input wire ram_rst_n,
  output wire ram_en,
  output wire ram_we,
  output wire [4:0] ram_addr,
  output wire [7:0] ram_write_data,
  input wire [7:0] ram_read_data
);

reg reg_ram_en;
reg [4:0] reg_ram_addr;
reg [7:0] reg_ram_write_data;
reg [5:0] reg_count;

assign ram_en = reg_ram_en;
assign ram_addr = reg_ram_addr;
assign ram_write_data = reg_ram_write_data;
assign ram_we = (reg_count <= 6'd31 && reg_ram_en == 1'b1) ? 1'b1 : 1'b0;

always @(posedge ram_clk or negedge ram_rst_n) begin
  if (ram_rst_n == 1'b0) begin
    reg_ram_en <= 1'b0;
  end else begin
    reg_ram_en <= 1'b1;
  end
end

always @(posedge ram_clk or negedge ram_rst_n) begin
  if (ram_rst_n == 1'b0) begin
    reg_count <= 6'b0;
  end else if (reg_count == 6'd63 && reg_ram_en == 1'b1) begin
    reg_count <= 6'b0;
  end else if (reg_ram_en == 1'b1) begin
    reg_count <= reg_count + 1'b1;
  end else begin
    reg_count <= 6'b0;
  end
end

always @(posedge ram_clk or negedge ram_rst_n) begin
  if (ram_rst_n == 1'b0) begin
    reg_ram_addr <= 5'b0;
  end else if (reg_ram_addr == 5'd31 && reg_ram_en == 1'b1) begin
    reg_ram_addr <= 5'd0;
  end else if (reg_ram_en == 1'b1) begin
    reg_ram_addr <= reg_ram_addr + 1'b1;
  end else begin
    reg_ram_addr <= 5'b0;
  end
end

always @(posedge ram_clk or negedge ram_rst_n) begin
  if (ram_rst_n == 1'b0) begin
    reg_ram_write_data <= 8'b0;
  end else if (reg_ram_write_data == 8'd31 && ram_we == 1'b1) begin
    reg_ram_write_data <= 8'b0;
  end else if (ram_we == 1'b1) begin
    reg_ram_write_data <= reg_ram_write_data + 1'b1;
  end else begin
    reg_ram_write_data <= 8'b0;
  end
end

endmodule
