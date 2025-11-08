`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/01 10:55:27
// Design Name: 
// Module Name: buzzer
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

`include "button_define.vh"

module buzzer
(
  input  wire         clk_sys         ,
  input  wire         rst_sys_n       ,
  input  wire [4:0]   which_button    ,
  output wire         out_buzzer      
);

reg [16:0] reg_count_20_ns  ;
reg [16:0] reg_count_us     ;
reg [16:0] reg_count_ms     ;
reg        reg_out_buzzer   ;   
wire       flag_tune_convers;

assign out_buzzer = reg_out_buzzer;

counter counter_inst
(
  .clk_sys          (clk_sys)           ,
  .rst_sys_n        (rst_sys_n)         ,
`ifdef SIMULATION
  .clk_freq_mhz     (17'd1)             ,
`else
  .clk_freq_mhz     (17'd200)           ,
`endif 
  .count_20_ns      (reg_count_20_ns)   ,
  .count_us         (reg_count_us)      ,
  .count_ms         (reg_count_ms)      ,
  .count_s          (17'd0)             ,
  .event_counter    (flag_tune_convers)
);

always @(*) begin
  case (which_button)
    `BUTTON_0_HOLD: begin
      reg_count_20_ns = 17'd20;
      reg_count_us    = 17'd908;
      reg_count_ms    = 17'd1;
    end
    `BUTTON_1_HOLD: begin
      reg_count_20_ns = 17'd34;
      reg_count_us    = 17'd700;
      reg_count_ms    = 17'd1;
    end
    `BUTTON_2_HOLD: begin
      reg_count_20_ns = 17'd8;
      reg_count_us    = 17'd515;
      reg_count_ms    = 17'd1;
    end
    `BUTTON_3_HOLD: begin
      reg_count_20_ns = 17'd33;
      reg_count_us    = 17'd432;
      reg_count_ms    = 17'd1;
    end
    `BUTTON_4_HOLD: begin
      reg_count_20_ns = 17'd26;
      reg_count_us    = 17'd275;
      reg_count_ms    = 17'd1;
    end
    `BUTTON_5_HOLD: begin
      reg_count_20_ns = 17'd13;
      reg_count_us    = 17'd136;
      reg_count_ms    = 17'd1;
    end
    `BUTTON_6_HOLD: begin
      reg_count_20_ns = 17'd7;
      reg_count_us    = 17'd12;
      reg_count_ms    = 17'd1;
    end
    `BUTTON_7_HOLD: begin
      reg_count_20_ns = 17'd1;
      reg_count_us    = 17'd956;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_8_HOLD: begin
      reg_count_20_ns = 17'd39;
      reg_count_us    = 17'd851;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_9_HOLD: begin
      reg_count_20_ns = 17'd36;
      reg_count_us    = 17'd758;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_10_HOLD: begin
      reg_count_20_ns = 17'd17;
      reg_count_us    = 17'd716;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_11_HOLD: begin
      reg_count_20_ns = 17'd38;
      reg_count_us    = 17'd637;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_12_HOLD: begin
      reg_count_20_ns = 17'd9;
      reg_count_us    = 17'd568;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_13_HOLD: begin
      reg_count_20_ns = 17'd4;
      reg_count_us    = 17'd506;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_14_HOLD: begin
      reg_count_20_ns = 17'd1;
      reg_count_us    = 17'd478;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_15_HOLD: begin
      reg_count_20_ns = 17'd27;
      reg_count_us    = 17'd425;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_16_HOLD: begin
      reg_count_20_ns = 17'd13;
      reg_count_us    = 17'd379;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_17_HOLD: begin
      reg_count_20_ns = 17'd46;
      reg_count_us    = 17'd357;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_18_HOLD: begin
      reg_count_20_ns = 17'd44;
      reg_count_us    = 17'd318;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_19_HOLD: begin
      reg_count_20_ns = 17'd5;
      reg_count_us    = 17'd284;
      reg_count_ms    = 17'd0;
    end
    `BUTTON_20_HOLD: begin
      reg_count_20_ns = 17'd2;
      reg_count_us    = 17'd253;
      reg_count_ms    = 17'd0;
    end    
    `NO_BUTTON_HOLD: begin
      reg_count_20_ns = 17'd0;
      reg_count_us    = 17'd0;
      reg_count_ms    = 17'd0;
    end
    default: begin
      reg_count_20_ns = 17'd0;
      reg_count_us    = 17'd0;
      reg_count_ms    = 17'd0;
    end
  endcase
end

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    reg_out_buzzer <= 1'b1;
  end else if (which_button != `NO_BUTTON_HOLD) begin
    if (flag_tune_convers == 1'b1) begin
      reg_out_buzzer <= ~reg_out_buzzer;
    end
  end else begin
    reg_out_buzzer <= 1'b1;
  end
end

endmodule
