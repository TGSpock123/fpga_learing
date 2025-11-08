`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 22:21:12
// Design Name: 
// Module Name: button_debounce
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

module button_debounce
(
  input  wire clk_sys       ,
  input  wire rst_sys_n     ,
  input  wire in_button     ,
  output wire event_press   ,
  output wire event_release
);

parameter STATE_BTN_IDLE = 2'b00;
parameter STATE_BTN_DOWN = 2'b01;
parameter STATE_BTN_KEEP = 2'b11;
parameter STATE_BTN_UP = 2'b10;

localparam REAL_CLK_FREQ = 32'd100;
localparam TEST_CLK_FREQ = 32'd1;

reg [1:0] reg_next;
reg [1:0] reg_state;
wire flag_10_ms;
reg reg_event_press;
reg reg_event_release;
wire is_entering_up_state;
wire is_entering_down_state;

assign event_press = reg_event_press;
assign event_release = reg_event_release;
assign is_entering_up_state = (reg_state == STATE_BTN_KEEP) && (in_button == 1'b1) && (flag_10_ms);
assign is_entering_down_state = (reg_state == STATE_BTN_DOWN) && (in_button == 1'b0) && (flag_10_ms);

counter counter_inst
(
  .clk_sys(clk_sys),
  .rst_sys_n(rst_sys_n),
`ifdef SIMULATION
  .clk_freq_mhz(TEST_CLK_FREQ),
`else
  .clk_freq_mhz(REAL_CLK_FREQ),
`endif 
  .count_20_ns(32'd0),
  .count_us(32'd0),
  .count_ms(32'd10),
  .count_s(32'd0),
  .event_counter(flag_10_ms)
);

//时序逻辑部分
always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    reg_state <= STATE_BTN_IDLE;
  end else if (flag_10_ms == 1'b1) begin
    reg_state <= reg_next;
  end else;
end

//组合逻辑部分
always @(*) begin
  case (reg_state)
    /*如果检测到输入信号为低电平, 切换状态至STATE_BTN_DOWN*/
    STATE_BTN_IDLE: begin
      case (in_button)   
        1'b0: begin
          reg_next = STATE_BTN_DOWN;
        end
        default: begin
          reg_next = STATE_BTN_IDLE;
        end
      endcase
    end
    /*10ms后检测输入信号, 
    如果保持为低电平则视为有效按键输入, 切换状态至STATE_BTN_KEEP, 
    否则丢弃值, 切换状态至STATE_BTN_IDLE*/
    STATE_BTN_DOWN: begin
      case (in_button)   
        1'b0: begin
          reg_next = STATE_BTN_KEEP;
        end
        default: begin
          reg_next = STATE_BTN_IDLE;
        end
      endcase
    end
    /*10ms后检测输入信号, 
    如果检测为高电平, 切换状态至STATE_BTN_UP, 
    如果检测为低电平, 保持STATE_BTN_KEEP状态*/
    STATE_BTN_KEEP: begin 
      case (in_button)   
        1'b1: begin
          reg_next = STATE_BTN_UP;
        end
        default: begin
          reg_next = STATE_BTN_KEEP;
        end
      endcase
    end
    /*弹起消抖10ms后归位状态至STATE_BTN_IDLE*/
    STATE_BTN_UP: begin
      reg_next = STATE_BTN_IDLE;
    end
    default: begin
      reg_next = STATE_BTN_IDLE;
    end
  endcase
end

//输出部分
always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    reg_event_press <= 1'b0;
    reg_event_release <= 1'b0;
  end else if(is_entering_down_state == 1) begin
    reg_event_press <= 1'b1;
    reg_event_release <= 1'b0;
  end else if(is_entering_up_state == 1) begin
    reg_event_press <= 1'b0;
    reg_event_release <= 1'b1;
  end else begin
    reg_event_press <= 1'b0;
    reg_event_release <= 1'b0;
  end
end

endmodule
