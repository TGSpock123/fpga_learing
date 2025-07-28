module VIII_counter
#(
  parameter COUNT_MAX = 25'd24_999_999
)
(
  input wire system_clock,
  input wire system_reset_n,
  output reg led_0
);

`define IF_USE_FLAG

reg [24:0] counter;
`ifdef IF_USE_FLAG
reg counter_flag;
`endif 

always@(posedge system_clock or negedge system_reset_n) begin
  if(system_reset_n == 1'b0) begin
    counter <= 25'd0;
  end else if(counter == COUNT_MAX) begin
    counter <= 25'd0;
  end else begin
    counter <= counter + 1'b1;
  end
end

`ifdef IF_USE_FLAG
always@(posedge system_clock or negedge system_reset_n) begin
  if(system_reset_n == 1'b0) begin
    counter_flag <= 1'b0;
  end else if(counter == COUNT_MAX - 25'b1) begin
    counter_flag <= 1'b1;
  end else begin
    counter_flag <= 1'b0;
  end
end
`endif 

`ifdef IF_USE_FLAG
always@(posedge system_clock or negedge system_reset_n) begin
  if(system_reset_n == 1'b0) begin
    led_0 <= 1'b0;
  end else if(counter_flag == 1'b1) begin
    led_0 <= ~led_0;
  end
end
`else
always@(posedge system_clock or negedge system_reset_n) begin
  if(system_reset_n == 1'b0) begin
    led_0 <= 1'b0;
  end else if(counter == COUNT_MAX) begin
    led_0 <= ~led_0;
  end
end
`endif 
  
endmodule