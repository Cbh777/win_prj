//`timescale 1ns/1ps;
module test_top();

reg     clk;
reg     rst;

reg    [1:0]  COIN;
wire          DRINK_OUT;  

fsm_seller  dut( .CLK_IN(clk), .RST(rst), .COIN(COIN), .DRINK_OUT(DRINK_OUT) );

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  #10;
  rst = 1;
  #32;
  rst = 0;
  COIN = 2'b00;
  #105;
  COIN = 2'b01;
  #10;
  COIN = 2'b00; //clear COIN
  #30;
  COIN = 2'b10;
  #10;
  COIN = 2'b00;//clear COIN
  #10;
  COIN = 2'b10;
  #30;
  COIN = 2'b00;

  #1000000;
  $finish;
end

initial begin
  $fsdbDumpfile("fsm_seller.fsdb");
  $fsdbDumpvars();
end

endmodule
