`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/22 12:09:11
// Design Name: 
// Module Name: uart_rx
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


module uart_rx
(
  input  wire       uart_rx_clk,
  input  wire       uart_rst_n,
  input  wire       uart_rx_input,
  output wire       uart_rx_finish,
  output wire [7:0] uart_rx_output
);

localparam UART_RX_ACQUIRE_COUNT_MAX = 8'd159;

reg       reg_uart_rx_finish;
reg       reg_uart_rx;
reg       uart_rx_negedge;
reg [7:0] reg_uart_rx_output;
reg [7:0] uart_rx_output_temp;
reg [7:0] uart_rx_acquire_count;

assign uart_rx_output = reg_uart_rx_output;
assign uart_rx_finish = reg_uart_rx_finish;

always @(posedge uart_rx_clk or negedge uart_rst_n) begin
  if (uart_rst_n == 1'b0) begin
    reg_uart_rx <= 1'b0;
    uart_rx_negedge <= 1'b0;
  end else begin
    reg_uart_rx <= uart_rx_input;
    if ((uart_rx_input == 1'b0) & (reg_uart_rx == 1'b1)) begin
      uart_rx_negedge <= 1'b1;
    end else begin
      uart_rx_negedge <= 1'b0;
    end
  end
end

always @(posedge uart_rx_clk or negedge uart_rst_n) begin
  if (uart_rst_n == 1'b0) begin
    uart_rx_acquire_count <= 8'b0;
  end else if ((uart_rx_negedge == 1'b1) & (uart_rx_acquire_count == 8'b0)) begin
    uart_rx_acquire_count <= uart_rx_acquire_count + 1;
  end else if ((uart_rx_acquire_count > 0) & (uart_rx_acquire_count < UART_RX_ACQUIRE_COUNT_MAX)) begin
    uart_rx_acquire_count <= uart_rx_acquire_count + 1;
  end else if (uart_rx_acquire_count >= UART_RX_ACQUIRE_COUNT_MAX) begin
    uart_rx_acquire_count <= 8'b0;
  end
end

always @(posedge uart_rx_clk or negedge uart_rst_n) begin
  if (uart_rst_n == 1'b0) begin
    uart_rx_output_temp <= 8'b0;
    reg_uart_rx_output <= 8'd0;
    reg_uart_rx_finish <= 1'b0;
  end else begin
    case (uart_rx_acquire_count)
      8'd23: begin
        uart_rx_output_temp[0] <= uart_rx_input;
      end
      8'd39: begin
        uart_rx_output_temp[1] <= uart_rx_input;
      end
      8'd55: begin
        uart_rx_output_temp[2] <= uart_rx_input;
      end
      8'd71: begin
        uart_rx_output_temp[3] <= uart_rx_input;
      end
      8'd87: begin
        uart_rx_output_temp[4] <= uart_rx_input;
      end
      8'd103: begin
        uart_rx_output_temp[5] <= uart_rx_input;
      end
      8'd119: begin
        uart_rx_output_temp[6] <= uart_rx_input;
      end
      8'd135: begin
        uart_rx_output_temp[7] <= uart_rx_input;
      end
      8'd143: begin
        reg_uart_rx_output <= uart_rx_output_temp;
        uart_rx_output_temp <= 8'b0;
        reg_uart_rx_finish <= 1'b1;
      end
      UART_RX_ACQUIRE_COUNT_MAX: begin
        reg_uart_rx_finish <= 1'b0;
      end
      default: begin
        uart_rx_output_temp <= uart_rx_output_temp;
        reg_uart_rx_output <= reg_uart_rx_output;
        reg_uart_rx_finish <= reg_uart_rx_finish;
      end
    endcase
  end
end

endmodule
