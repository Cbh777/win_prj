module fsm_seller(CLK_IN, RST, COIN, DRINK_OUT);
input		 CLK_IN;    //时钟
input		 RST;		//复位
input  [1:0] COIN;		//输入
output       DRINK_OUT; //输出

reg          DRINK_OUT;

//定义四种状态（状态编码）
parameter  S0 = 2'b00;
parameter  S1 = 2'b01;
parameter  S2 = 2'b10;
parameter  S3 = 2'b11;

reg	   [1:0] current_st;
reg	   [1:0] next_st;

//第一段：当前状态的定义
always @(posedge CLK_IN or posedge RST) begin
	if (RST)
		current_st <= S0;
	else
		current_st <= next_st;
end

//第二段：下一个状态的跳转情况
always @(*) begin //用*来表示下一个阶段任何可能的触发信号
	case (current_st)
		S0: begin
			if (COIN == 2'b01) //注意这里一定要写两个==,一个=是赋值了
				next_st = S1;
			else if (COIN == 2'b10)
				next_st = S2;
			else
				next_st = S0;
			end 
		S1: begin
			if (COIN == 2'b01)
				next_st = S2;
			else if (COIN == 2'b10)
				next_st = S3;
			else
				next_st = S1;
			end 
		S2: begin
			if ( (COIN == 2'b01)||(COIN == 2'b10) )
				next_st = S3;
			else
				next_st = S2;
			end 
		S3: begin
			if (COIN == 2'b01)
				next_st = S1;
			else if (COIN == 2'b10)
				next_st = S2;
			else
				next_st = S0;
			end 
		 default: next_st = S0;	//因为这里两比特的数都被占满了，所以就算不写也不会综合出锁存器
	endcase
end

//第三段：输出
always @(posedge CLK_IN or posedge RST) begin //This is Milly, Moore uses (*)
	if (RST)
		DRINK_OUT <= 1'b0;
	else if (current_st == S3)
		DRINK_OUT <= 1'b1;
	else
		DRINK_OUT <= 1'b0;
end

endmodule
