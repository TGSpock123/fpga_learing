`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/22 12:09:11
// Design Name: 
// Module Name: uart_tx
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


module uart_tx
(
  input  wire       uart_tx_clk,
  input  wire       uart_rst_n,
  input  wire       uart_tx_start,
  input  wire [7:0] uart_tx_input,
  output wire       uart_tx_output,
  output wire       uart_tx_busy
);

localparam IDLE = 4'b0_000;
localparam TX_START = 4'b0_001;
localparam TX_BIT_0 = 4'b0_011;
localparam TX_BIT_1 = 4'b0_010;
localparam TX_BIT_2 = 4'b0_110;
localparam TX_BIT_3 = 4'b0_111;
localparam TX_BIT_4 = 4'b0_101;
localparam TX_BIT_5 = 4'b0_100;
localparam TX_BIT_6 = 4'b1_100;
localparam TX_BIT_7 = 4'b1_101;
localparam TX_END = 4'b1_111;

reg [3:0] uart_tx_state;
reg reg_uart_tx_output;
reg [7:0] reg_uart_tx_input;
reg reg_uart_tx_busy;

assign uart_tx_output = reg_uart_tx_output;
assign uart_tx_busy = reg_uart_tx_busy;

always @(posedge uart_tx_clk or negedge uart_rst_n) begin
  if (uart_rst_n == 1'b0) begin
    reg_uart_tx_input <= 8'b0;
    reg_uart_tx_busy <= 1'b0;
    reg_uart_tx_output <= 1'b1;
    uart_tx_state <= IDLE;
  end else begin
    case (uart_tx_state)
      IDLE: begin
        reg_uart_tx_output <= 1'b1;
        if (uart_tx_start) begin
          reg_uart_tx_busy <= 1'b1;
          reg_uart_tx_input <= uart_tx_input;
          uart_tx_state <= TX_START;
        end 
      end
      TX_START: begin
        reg_uart_tx_output <= 1'b0;
        uart_tx_state <= TX_BIT_0;
      end
      TX_BIT_0: begin
        reg_uart_tx_output <= reg_uart_tx_input[0]; 
        uart_tx_state <= TX_BIT_1;
      end
      TX_BIT_1: begin
        reg_uart_tx_output <= reg_uart_tx_input[1]; 
        uart_tx_state <= TX_BIT_2;
      end
      TX_BIT_2: begin
        reg_uart_tx_output <= reg_uart_tx_input[2]; 
        uart_tx_state <= TX_BIT_3;
      end
      TX_BIT_3: begin
        reg_uart_tx_output <= reg_uart_tx_input[3]; 
        uart_tx_state <= TX_BIT_4;
      end
      TX_BIT_4: begin
        reg_uart_tx_output <= reg_uart_tx_input[4]; 
        uart_tx_state <= TX_BIT_5;
      end
      TX_BIT_5: begin
        reg_uart_tx_output <= reg_uart_tx_input[5]; 
        uart_tx_state <= TX_BIT_6;
      end
      TX_BIT_6: begin
        reg_uart_tx_output <= reg_uart_tx_input[6]; 
        uart_tx_state <= TX_BIT_7;
      end
      TX_BIT_7: begin
        reg_uart_tx_output <= reg_uart_tx_input[7]; 
        uart_tx_state <= TX_END;
      end
      TX_END: begin
        reg_uart_tx_output <= 1'b1; 
        reg_uart_tx_busy <= 1'b0;
        uart_tx_state <= IDLE;
      end
      default: begin
        reg_uart_tx_busy <= 1'b0;
        reg_uart_tx_output <= 1'b1;
        uart_tx_state <= IDLE;
      end
    endcase
  end
end

endmodule
