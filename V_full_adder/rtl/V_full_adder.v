module V_full_adder 
(
  input wire in_0,
  input wire in_1,
  input wire in_2,
  output wire sum,
  output wire cnt
);

wire half_adder_0_sum;
wire half_adder_0_cnt;
wire half_adder_1_sum;
wire half_adder_1_cnt;

half_adder half_adder_inst_0
(
  .in_0(in_0),
  .in_1(in_1),
  .sum(half_adder_0_sum),
  .cnt(half_adder_0_cnt)
);

half_adder half_adder_inst_1
(
  .in_0(half_adder_0_sum),
  .in_1(in_2),
  .sum(half_adder_1_sum),
  .cnt(half_adder_1_cnt)
);

assign cnt = half_adder_0_cnt | half_adder_1_cnt;
assign sum = half_adder_1_sum;
  
endmodule