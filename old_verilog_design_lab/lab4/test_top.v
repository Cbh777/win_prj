`timescale 1ns/1ps
//`include "./plus.v"  butuijian yongzhezhong fangfa
module test_top();

reg   [10:0]  in_a;
reg   [10:0]  in_b;
wire  [11:0]  sum_out;

plus dut(.plus_a(in_a), .plus_b(in_b), .sum_out(sum_out));

initial begin
  #10;
  in_a = 30; in_b = 27;  //the most standard way is : in_a = 11'd30; in_b = 11'd27;
  $display("plus_a is %d, plus_b is %d, sum_out is %d", in_a, in_b, sum_out);
  #20
  in_a = 1000; in_b = 900;
  $display("plus_a is %d, plus_b is %d, sum_out is %d", in_a, in_b, sum_out);
  #10;
  $finish;
end

initial begin
  $fsdbDumpfile("lesson4.fsdb");
  $fsdbDumpvars();
end

endmodule
