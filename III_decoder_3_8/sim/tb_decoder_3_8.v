`timescale 1ns/1ns
module tb_decoder_3_8();

reg in_0;
reg in_1;
reg in_2;
wire [7:0] out_0;

initial begin
  in_0 <= 1'b0;
  in_1 <= 1'b0;
  in_2 <= 1'b0;
end

always #10 in_0 <= {$random} % 2;
always #10 in_1 <= {$random} % 2;
always #10 in_2 <= {$random} % 2;

initial begin
  $timeformat(-9, 0, "ns", 6);
  $monitor("@time %t: in_0 = %b, in_1 = %b, in_2 = %b, out_0 = %b. ", $time, in_0, in_1, in_2, out_0);
end

III_decoder_3_8 decoder_3_8_inst
(
  .in_0(in_0),
  .in_1(in_1),
  .in_2(in_2),
  .out_0(out_0)
);

endmodule