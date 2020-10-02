//`timescale 1ns/1ps
module test_top();

reg     clk;
reg     rst;

wire    clk_out2;
wire    clk_out10;
wire    clk_out100; 

clk_div dut(.CLK_IN(clk), .RST(rst), .CLK_DIV2(clk_out2), .CLK_DIV10(clk_out10), .CLK_DIV100(clk_out100));

//------------------- 100MHz clock -----------------------------------
initial begin
  clk = 0;
  forever #5  clk = ~clk;  //a clk with T=10
end

initial begin
  #10;
  $display("################### This is a clock divider test ###################");
  rst = 1;
  #35;
  rst = 0;

  #100000;
  $finish;
end

initial begin
  $fsdbDumpfile("clk_div.fsdb");
  $fsdbDumpvars();
end

endmodule
