`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/20 20:28:09
// Design Name: 
// Module Name: ram_write
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


module ram_write
(
  input  wire       ram_clk_write,
  input  wire       ram_reset_n,
  output wire       ram_write_we,
  output wire       ram_write_en,
  output wire       ram_rw_flag,
  output wire [5:0] ram_write_address,
  output wire [7:0] ram_write_data
);

reg reg_ram_rw_flag;
reg reg_ram_write_en;
reg [5:0] reg_ram_write_address;

assign ram_write_en = reg_ram_write_en;
assign ram_write_we = ram_write_en;
assign ram_rw_flag = reg_ram_rw_flag;
assign ram_write_address = reg_ram_write_address;
assign ram_write_data = {2'b0, ram_write_address};

always @(posedge ram_clk_write or negedge ram_reset_n) begin
  if(ram_reset_n == 1'b0) begin
    reg_ram_write_en <= 1'b0;
  end else begin
    reg_ram_write_en <= 1'b1;
  end
end

always @(posedge ram_clk_write or negedge ram_reset_n) begin
  if(ram_reset_n == 1'b0) begin
    reg_ram_write_address <= 6'b0;
  end else if (reg_ram_write_address < 6'd63 && ram_write_en == 1'b1) begin
    reg_ram_write_address <= reg_ram_write_address + 1'b1;
  end else begin
    reg_ram_write_address <= 6'b0;
  end
end

always @(posedge ram_clk_write or negedge ram_reset_n) begin
  if(ram_reset_n == 1'b0) begin
    reg_ram_rw_flag <= 1'b0;
  end else if (reg_ram_write_address == 6'd31) begin
    reg_ram_rw_flag <= 1'b1;
  end else begin
    reg_ram_rw_flag <= reg_ram_rw_flag;
  end
end

endmodule
