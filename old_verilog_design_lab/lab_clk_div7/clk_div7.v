module 	clk_div7(CLK, RST, CLK_OUT);
input 	CLK;
input 	RST;
output 	CLK_OUT;		//分频时钟输出
wire 	CLK_OUT;

reg	[2:0]	cnt_pos;		//上升沿计数7个周期
reg	[2:0]	cnt_neg;		//下降沿计数7个周期

//上升沿计数7个周期
always@(posedge CLK or posedge RST)begin
	if(RST)
		cnt_pos <= 3'd0;
	else if(cnt_pos >= 3'd6)
		cnt_pos <= 3'd0;
	else
		cnt_pos <= cnt_pos + 1;
end

//下降沿计数7个周期
always@(negedge CLK or posedge RST)begin
	if(RST)
		cnt_neg <= 3'd0;
	else if(cnt_neg >= 3'd6)
		cnt_neg <= 3'd0;
	else
		cnt_neg <= cnt_neg + 1;
end

reg 	clk_out_pos;				//上升沿计数得到的占空比4:7的时钟
reg 	clk_out_neg;				//下降沿计数得到的占空比4:7的时钟

//上升沿计数得到的占空比4:7的时钟
always@(posedge CLK or posedge RST)begin
	if(RST)
		clk_out_pos <= 1'b0;
	else if(cnt_pos >= 3'd4)
		clk_out_pos <= 1'b0;
	else
		clk_out_pos <= 1'b1;
end

//下降沿计数得到的占空比4:7的时钟
always@(negedge CLK or posedge RST)begin
	if(RST)
		clk_out_neg <= 1'b0;
	else if(cnt_pos >= 3'd4)
		clk_out_neg <= 1'b0;
	else
		clk_out_neg <= 1'b1;
end

assign CLK_OUT = clk_out_pos & clk_out_neg;  //两个时钟相与就得到占空比50%的7分频时钟输出

endmodule
