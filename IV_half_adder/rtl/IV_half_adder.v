module IV_half_adder (
  input wire in_0,
  input wire in_1,
  output wire sum,
  output wire cnt
  // output reg sum,
  // output reg cnt
);

assign {cnt, sum} = in_0 + in_1;

// always @(*) begin
//   sum <= in_0 ^ in_1;
//   cnt <= in_0 & in_1;
// end
  
endmodule