`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: T G Spock
// 
// Create Date: 2025/08/09 22:14:37
// Design Name: 
// Module Name: counter
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


module counter
#(
  parameter CLK_FREQUENCY_MHZ = 32'd100,
  parameter COUNT_10_NS = 32'd0,
  parameter COUNT_US = 32'd0,
  parameter COUNT_MS = 32'd10,
  parameter COUNT_S = 32'd0
)
(
  input wire clk_sys,
  input wire rst_sys_n,
  output wire event_counter
);

localparam TEN_NS = 32'd1;
localparam ONE_US = CLK_FREQUENCY_MHZ;
localparam ONE_MS = ONE_US * 32'd1_000;
localparam ONE_S = ONE_MS * 32'd1_000;
localparam COUNT_MAX = 64'd1 * COUNT_10_NS * TEN_NS + 
                       64'd1 * COUNT_US * ONE_US + 
                       64'd1 * COUNT_MS * ONE_MS + 
                       64'd1 * COUNT_S * ONE_S - 64'b1;
localparam COUNT_WIDTH = $clog2(COUNT_MAX + 1);

reg [COUNT_WIDTH - 1:0] reg_count;

assign event_counter = (reg_count == COUNT_MAX);

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    reg_count <= {COUNT_WIDTH{1'b0}};
  end else if (reg_count == COUNT_MAX) begin
    reg_count <= {COUNT_WIDTH{1'b0}};
  end else begin
    reg_count <= reg_count + 1;
  end
end

endmodule
