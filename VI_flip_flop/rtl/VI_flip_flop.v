module VI_flip_flop
(
  input wire system_clk,
  input wire system_reset,
  input wire key_0,
  output reg led_0
);

// always@(posedge system_clk)
//   if(system_reset == 1'b0)
//     led_0 <= 1'b0;
//   else
//     led_0 <= key_0;

always@(posedge system_clk or negedge system_reset)
  if(system_reset == 1'b0)
    led_0 <= 1'b0;
  else
    led_0 <= key_0;

endmodule