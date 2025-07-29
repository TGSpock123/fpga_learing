module IX_divider 
#(
  //分频值用COUNT_SLECT这个参数调整
  parameter COUNT_SLECT = 3'b110
)
(
  input wire system_clock,
  input wire system_reset_n,
  output reg clock_flag
);

reg [2:0] count;

always@(posedge system_clock or negedge system_reset_n) begin
  if(system_reset_n == 1'b0) begin
    count <= 3'b0;
  end else if(count == COUNT_SLECT - 3'b1) begin
    count <= 3'b0;
  end else begin
    count <= count + 3'b1;
  end
end

always@(posedge system_clock or negedge system_reset_n) begin
  if(system_reset_n == 1'b0) begin
    clock_flag <= 1'b0;
  end else if(count == COUNT_SLECT - 3'b10) begin
    clock_flag <= 1'b1;
  end else begin
    clock_flag <= 1'b0;
  end
end
  
endmodule