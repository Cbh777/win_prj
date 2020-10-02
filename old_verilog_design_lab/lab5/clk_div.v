module clk_div(CLK_IN, RST, CLK_DIV2, CLK_DIV10, CLK_DIV100);
input   CLK_IN;
input   RST;
output  CLK_DIV2;
output  CLK_DIV10;
output  CLK_DIV100;

reg     CLK_DIV2;
reg     CLK_DIV10;
reg     CLK_DIV100;

//define variable
reg   [3:0] cnt_10;  
reg   [6:0] cnt_100;

//---------------- 50MHz ----------------------------
//2 divider: don't need counter, a clk is enough
always @(posedge CLK_IN or posedge RST) begin
  if (RST)
    CLK_DIV2 <= 1'b0;  //make sure there is a initial value
  else
    CLK_DIV2 <= ~CLK_DIV2;
end

//----------------- 10MHz ---------------------------
//counter 0~9
always @(posedge CLK_IN or posedge RST) begin
  if (RST)
    cnt_10 <= 0;
  else if (cnt_10 >= 4'd9)
    cnt_10 <= 0;
//    cnt_10 <= #1 0;  //delay=1ns
  else
    cnt_10 <= cnt_10 + 1'b1;
//    cnt_10 <= #1 cnt_10 + 1'b1;
end

//10 divider
always @(posedge CLK_IN or posedge RST) begin
  if (RST)
    CLK_DIV10 <= 0;
  else if (cnt_10 >= 4'd9)
//else if (cnt_10 >= 4'd5)  //Duty Cycle=50%
    CLK_DIV10 <= 1;
  else
    CLK_DIV10 <= 0;
end

//----------------- 1MHz ----------------------------
//counter 0~99
always @(posedge CLK_IN or posedge RST) begin
  if (RST)
    cnt_100 <= 0;    
  else if (cnt_100 >= 7'd99)
    cnt_100 <= 0;
  else
    cnt_100 <= cnt_100 + 1'b1;
end

  
//100 divider
always @(posedge CLK_IN or posedge RST) begin
  if (RST)
    CLK_DIV100 <= 0;
  else if (cnt_100 >= 7'd99)
//else if (cnt_100 >= 7'd50)  //Duty Cycle=50%
    CLK_DIV100 <= 1;
  else
    CLK_DIV100 <= 0;
end

endmodule




