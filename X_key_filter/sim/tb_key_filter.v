`timescale 1ns/1ns

module tb_key_filter();

parameter CNT_1MS  = 20'd19,
          CNT_11MS = 21'd69,
          CNT_41MS = 22'd149,
          CNT_51MS = 22'd199,
          CNT_60MS = 22'd249;
          
wire        key_0_flag;

reg         system_clock;
reg         system_reset_n;
reg         key_0;
reg [21:0]  tb_count;

initial begin
  system_clock = 1'b1;
  system_reset_n <= 1'b0;
  key_0 <= 1'b0;
  #20
  system_reset_n <= 1'b1;
end

always #10 system_clock = ~system_clock;

always@(posedge system_clock or negedge system_reset_n) begin
  if(system_reset_n == 1'b0) begin
    tb_count <= 22'b0;
  end else if (tb_count == CNT_60MS) begin
    tb_count <= 22'b0;
  end else begin
    tb_count <= tb_count + 1'b1;
  end
end

always@(posedge system_clock or negedge system_reset_n) begin
  if(system_reset_n == 1'b0) begin
    key_0 <= 1'b1;
  end else if ((tb_count >= CNT_1MS && tb_count <= CNT_11MS) || 
    (tb_count >= CNT_41MS && tb_count <= CNT_51MS)) begin
    key_0 <= {$random} % 2;
  end else if (tb_count >= CNT_11MS && tb_count <= CNT_41MS) begin
    key_0 <= 1'b0;
  end else begin
    key_0 <= 1'b1;
  end
end

X_key_filter
#(
  .COUNT_MAX (20'd24)
)X_key_filter
(
  .system_clock (system_clock), 
  .system_reset_n (system_reset_n),
  .key_0 (key_0),
  .key_0_flag (key_0_flag)
);

endmodule