`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/25 12:30:03
// Design Name: 
// Module Name: xvii_top
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


module xvii_top
(
  input   wire        sys_clk_p,
  input   wire        sys_clk_n,
  input   wire        sys_rst_n,
  output  wire [3:0]  led
);

reg [3:0] reg_out_led;
wire wire_clk;
wire one_ms_event;

assign led = reg_out_led;

IBUFDS IBUFDS_u0
(
  .O  (wire_clk),
  .I  (sys_clk_p),
  .IB (sys_clk_n)
);

counter one_ms_counter
(
  .clk_sys       (wire_clk),
  .rst_sys_n     (sys_rst_n),
  .clk_freq_mhz  (17'd200),
  .count_20_ns   (17'd0),
  .count_us      (17'd0),
  .count_ms      (17'd500),
  .count_s       (17'd0),
  .event_counter (one_ms_event)
);

always @(posedge wire_clk or negedge sys_rst_n) begin
  if (!sys_rst_n) begin
    reg_out_led <= 4'b0;
  end else begin
    if (one_ms_event) begin
      case (reg_out_led)
        4'b0_000: begin
          reg_out_led <= 4'b1;
        end
        4'b1_000: begin
          reg_out_led <= 4'b0;
        end
        default: begin
          reg_out_led <= reg_out_led << 1;
        end
      endcase
    end
  end
end

endmodule
