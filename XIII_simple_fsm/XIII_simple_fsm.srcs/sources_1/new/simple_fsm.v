`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/05 23:53:02
// Design Name: 
// Module Name: simple_fsm
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

module simple_fsm
(
  input wire clk_sys,
  input wire rst_sys_n,
  input wire in_coin_one,
  input wire in_coin_point,
  output wire out_cola,
  output wire out_change
);

parameter STATE_IDLE = 3'b000;
parameter STATE_ZERO_POINT = 3'b001;
parameter STATE_ONE = 3'b011;
parameter STATE_ONE_POINT = 3'b010;
parameter STATE_TWO = 3'b110;
parameter STATE_TWO_POINT = 3'b111;
parameter STATE_THREE = 3'b101;
parameter STATE_THREE_POINT = 3'b100;

reg [2:0] state, next_state;
reg reg_out_cola, reg_out_change;
wire [1:0] in_money;

assign out_cola = reg_out_cola;
assign out_change = reg_out_change;
assign in_money = {in_coin_point, in_coin_one};

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    state <= STATE_IDLE;
  end else begin
    state <= next_state;
  end
end

always @(*) begin
  case (state)
    STATE_IDLE: begin
      case (in_money)
        2'b10: begin
          next_state = STATE_ZERO_POINT;
        end
        2'b01: begin
          next_state = STATE_ONE;
        end
        default: begin
          next_state = STATE_IDLE;
        end
      endcase
    end
    STATE_ZERO_POINT: begin
      case (in_money)
        2'b10: begin
          next_state = STATE_ONE;
        end
        2'b01: begin
          next_state = STATE_ONE_POINT;
        end
        default: begin
          next_state = STATE_ZERO_POINT;
        end
      endcase
    end
    STATE_ONE: begin
      case (in_money)
        2'b10: begin
          next_state = STATE_ONE_POINT;
        end
        2'b01: begin
          next_state = STATE_TWO;
        end
        default: begin
          next_state = STATE_ONE;
        end
      endcase
    end
    STATE_ONE_POINT: begin
      case (in_money)
        2'b10: begin
          next_state = STATE_TWO;
        end
        2'b01: begin
          next_state = STATE_TWO_POINT;
        end
        default: begin
          next_state = STATE_ONE_POINT;
        end
      endcase
    end
    STATE_TWO: begin
      case (in_money)
        2'b10: begin
          next_state = STATE_TWO_POINT;
        end
        2'b01: begin
          next_state = STATE_THREE;
        end
        default: begin
          next_state = STATE_TWO;
        end
      endcase
    end 
    STATE_TWO_POINT: begin
      case (in_money)
        2'b10: begin
          next_state = STATE_THREE;
        end
        2'b01: begin
          next_state = STATE_THREE_POINT;
        end
        default: begin
          next_state = STATE_TWO_POINT;
        end
      endcase
    end
    STATE_THREE: begin
      case (in_money)
        2'b10: begin
          next_state = STATE_ZERO_POINT;
        end
        2'b01: begin
          next_state = STATE_ONE;
        end
        default: begin
          next_state = STATE_IDLE;
        end
      endcase
    end
    STATE_THREE_POINT: begin
      case (in_money)
        2'b10: begin
          next_state = STATE_ONE;
        end
        2'b01: begin
          next_state = STATE_ONE_POINT;
        end
        default: begin
          next_state = STATE_IDLE;
        end
      endcase
    end
    default: begin
      next_state = STATE_IDLE;
    end
  endcase
end

always @(*) begin
  case (state)
    STATE_THREE: begin
      reg_out_cola = 1'b1;
      reg_out_change = 1'b0;
    end 
    STATE_THREE_POINT:begin
      reg_out_cola = 1'b1;
      reg_out_change = 1'b1;
    end
    default: begin
      reg_out_cola = 1'b0;
      reg_out_change = 1'b0;
    end 
  endcase
end

endmodule
