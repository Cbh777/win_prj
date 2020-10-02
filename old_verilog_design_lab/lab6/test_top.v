//`timescale 1ns/1ps;
module test_top();

reg     clk;
reg     rst;

wire   [5:0]  SECOND;
wire   [5:0]  MINUTE;
wire   [4:0]  HOUR;

calender  dut(.CLK_IN(clk), .RST(rst), .SECOND(SECOND), .MINUTE(MINUTE), .HOUR(HOUR));

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  #10;
  rst = 1;
  #35;
  rst = 0;

  #1000000;
  $finish;
end

initial begin
  $fsdbDumpfile("calender.fsdb");
  $fsdbDumpvars();
end

endmodule
