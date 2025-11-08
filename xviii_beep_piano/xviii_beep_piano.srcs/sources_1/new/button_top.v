`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/01 14:48:37
// Design Name: 
// Module Name: button_top
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

module button_top
(
  input  wire         clk_sys       ,
  input  wire         rst_sys_n     ,
  input  wire [25:0]  in_button     ,
  output wire [34:0]  which_button  
);

integer i;
reg   [4:0] which_button_buffer_0 [0:6];
reg   [4:0] which_button_buffer_1 [0:6];
wire [25:0] event_button_press;
wire [25:0] event_button_release;
wire if_buzzer_0_free = (which_button_buffer_0[0] == `NO_BUTTON_HOLD);
wire if_buzzer_1_free = (which_button_buffer_0[1] == `NO_BUTTON_HOLD);
wire if_buzzer_2_free = (which_button_buffer_0[2] == `NO_BUTTON_HOLD);
wire if_buzzer_3_free = (which_button_buffer_0[3] == `NO_BUTTON_HOLD);
wire if_buzzer_4_free = (which_button_buffer_0[4] == `NO_BUTTON_HOLD);
wire if_buzzer_5_free = (which_button_buffer_0[5] == `NO_BUTTON_HOLD);
wire if_buzzer_6_free = (which_button_buffer_0[6] == `NO_BUTTON_HOLD);
wire [2:0] first_buzzer_free =  if_buzzer_0_free ? 3'd0 : (
                                if_buzzer_1_free ? 3'd1 : (
                                if_buzzer_2_free ? 3'd2 : (
                                if_buzzer_3_free ? 3'd3 : (
                                if_buzzer_4_free ? 3'd4 : (
                                if_buzzer_5_free ? 3'd5 : (
                                if_buzzer_6_free ? 3'd6 : 3'd7
                                ))))));
wire if_no_buzzer_free = (first_buzzer_free == 3'd7);

assign which_button = 
{
  which_button_buffer_0[6],
  which_button_buffer_0[5],
  which_button_buffer_0[4],
  which_button_buffer_0[3],
  which_button_buffer_0[2],
  which_button_buffer_0[1],
  which_button_buffer_0[0]
};

genvar g;
generate
  for (g = 0; g < 26; g = g + 1) begin : button_debounce_array
    button_debounce button_debounce_inst
    (
      .clk_sys       (clk_sys),
      .rst_sys_n     (rst_sys_n),
      .in_button     (in_button[g]),
      .event_press   (event_button_press[g]),
      .event_release (event_button_release[g])
    );
  end
endgenerate

function [4:0] button_id;
  input [4:0] index;
  case (index)
    5'd0: begin
      button_id = `BUTTON_0_HOLD;
    end
    5'd1: begin
      button_id = `BUTTON_1_HOLD;
    end
    5'd2: begin
      button_id = `BUTTON_2_HOLD;
    end
    5'd3: begin
      button_id = `BUTTON_3_HOLD;
    end
    5'd4: begin
      button_id = `BUTTON_4_HOLD;
    end
    5'd5: begin
      button_id = `BUTTON_5_HOLD;
    end
    5'd6: begin
      button_id = `BUTTON_6_HOLD;
    end
    5'd7: begin
      button_id = `BUTTON_7_HOLD;
    end
    5'd8: begin
      button_id = `BUTTON_8_HOLD;
    end
    5'd9: begin
      button_id = `BUTTON_9_HOLD;
    end
    5'd10: begin
      button_id = `BUTTON_10_HOLD;
    end
    5'd11: begin
      button_id = `BUTTON_11_HOLD;
    end
    5'd12: begin
      button_id = `BUTTON_12_HOLD;
    end
    5'd13: begin
      button_id = `BUTTON_13_HOLD;
    end
    5'd14: begin
      button_id = `BUTTON_14_HOLD;
    end
    5'd15: begin
      button_id = `BUTTON_15_HOLD;
    end
    5'd16: begin
      button_id = `BUTTON_16_HOLD;
    end
    5'd17: begin
      button_id = `BUTTON_17_HOLD;
    end
    5'd18: begin
      button_id = `BUTTON_18_HOLD;
    end
    5'd19: begin
      button_id = `BUTTON_19_HOLD;
    end
    5'd20: begin
      button_id = `BUTTON_20_HOLD;
    end
    5'd21: begin
      button_id = `BUTTON_21_HOLD;
    end
    5'd22: begin
      button_id = `BUTTON_22_HOLD;
    end
    5'd23: begin
      button_id = `BUTTON_23_HOLD;
    end
    5'd24: begin
      button_id = `BUTTON_24_HOLD;
    end
    5'd25: begin
      button_id = `BUTTON_25_HOLD;
    end
    default: begin
      button_id = `NO_BUTTON_HOLD;
    end
  endcase
endfunction

always @(*) begin
  for (i = 0; i < 7; i = i + 1) begin
    which_button_buffer_1[i] = which_button_buffer_0[i];
  end

  for (i = 0; i < 26; i = i + 1) begin
    if (event_button_press[i] == 1'b1) begin
      if (if_no_buzzer_free == 1'b0) begin
        which_button_buffer_1[first_buzzer_free] = button_id(i[4:0]);
      end
    end
  end

  for (i = 0; i < 26; i = i + 1) begin
    if (event_button_release[i] == 1'b1) begin
      if (which_button_buffer_1[0] == button_id(i[4:0])) begin
        which_button_buffer_1[0] = `NO_BUTTON_HOLD;
      end else if (which_button_buffer_1[1] == button_id(i[4:0])) begin
        which_button_buffer_1[1] = `NO_BUTTON_HOLD;
      end else if (which_button_buffer_1[2] == button_id(i[4:0])) begin
        which_button_buffer_1[2] = `NO_BUTTON_HOLD;
      end else if (which_button_buffer_1[3] == button_id(i[4:0])) begin
        which_button_buffer_1[3] = `NO_BUTTON_HOLD;
      end else if (which_button_buffer_1[4] == button_id(i[4:0])) begin
        which_button_buffer_1[4] = `NO_BUTTON_HOLD;
      end else if (which_button_buffer_1[5] == button_id(i[4:0])) begin
        which_button_buffer_1[5] = `NO_BUTTON_HOLD;
      end else if (which_button_buffer_1[6] == button_id(i[4:0])) begin
        which_button_buffer_1[6] = `NO_BUTTON_HOLD;
      end
    end
  end

end

always @(posedge clk_sys or negedge rst_sys_n) begin
  if (rst_sys_n == 1'b0) begin
    which_button_buffer_0[0] <= `NO_BUTTON_HOLD;
    which_button_buffer_0[1] <= `NO_BUTTON_HOLD;
    which_button_buffer_0[2] <= `NO_BUTTON_HOLD;
    which_button_buffer_0[3] <= `NO_BUTTON_HOLD;
    which_button_buffer_0[4] <= `NO_BUTTON_HOLD;
    which_button_buffer_0[5] <= `NO_BUTTON_HOLD;
    which_button_buffer_0[6] <= `NO_BUTTON_HOLD;
  end else begin
    which_button_buffer_0[0] <= which_button_buffer_1[0];
    which_button_buffer_0[1] <= which_button_buffer_1[1];
    which_button_buffer_0[2] <= which_button_buffer_1[2];
    which_button_buffer_0[3] <= which_button_buffer_1[3];
    which_button_buffer_0[4] <= which_button_buffer_1[4];
    which_button_buffer_0[5] <= which_button_buffer_1[5];
    which_button_buffer_0[6] <= which_button_buffer_1[6];
  end
end

endmodule
