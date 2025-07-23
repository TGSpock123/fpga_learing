module III_decoder_3_8
(
  input wire in_0,
  input wire in_1,
  input wire in_2,
  output reg [7:0] out_0
);

always @(*)
  // if (3'b000 == {in_0, in_1, in_2}) begin
  //   out_0 = 8'b0000_0001;
  // end
  // else if (3'b001 == {in_0, in_1, in_2}) begin
  //   out_0 = 8'b0000_0010;
  // end
  // else if (3'b010 == {in_0, in_1, in_2}) begin
  //   out_0 = 8'b0000_0100;
  // end
  // else if (3'b011 == {in_0, in_1, in_2}) begin
  //   out_0 = 8'b0000_1000;
  // end
  // else if (3'b100 == {in_0, in_1, in_2}) begin
  //   out_0 = 8'b0001_0000;
  // end
  // else if (3'b101 == {in_0, in_1, in_2}) begin
  //   out_0 = 8'b0010_0000;
  // end
  // else if (3'b110 == {in_0, in_1, in_2}) begin
  //   out_0 = 8'b0100_0000;
  // end
  // else if (3'b111 == {in_0, in_1, in_2}) begin
  //   out_0 = 8'b1000_0000;
  // end
  // else begin
  //   out_0 = 8'b0000_0001;
  // end

case ({in_0, in_1, in_2})
  3'b000: out_0 = 8'b0000_0001;
  3'b001: out_0 = 8'b0000_0010;
  3'b010: out_0 = 8'b0000_0100;
  3'b011: out_0 = 8'b0000_1000;
  3'b100: out_0 = 8'b0001_0000;
  3'b101: out_0 = 8'b0010_0000;
  3'b110: out_0 = 8'b0100_0000;
  3'b111: out_0 = 8'b1000_0000;
  default: out_0 = 8'b0000_0001;
endcase

endmodule
