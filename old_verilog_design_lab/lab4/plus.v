module plus(plus_a, plus_b,sum_out);
  input   [10:0]  plus_a;
  input   [10:0]  plus_b;
  output  [11:0]  sum_out;

  assign sum_out = plus_a + plus_b;

endmodule

