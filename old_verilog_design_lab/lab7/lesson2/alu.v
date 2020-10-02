module alu(
input			CLK_IN,
input			RST,
input	[7:0]	OPERA_A,
input	[7:0]	OPERA_B,
input	[3:0]	MODE,
input			CIN,

output			COUT,
output	reg	[15:0]	ALU_OUT
);

parameter	PLUS_S = 4'b0000;
parameter	SUB_S = 4'b0001; 
parameter	MUL_S = 4'b0010;

wire signed		[7:0] A_S;
wire signed		[7:0] B_S;
wire			[7:0] A_U;
wire			[7:0] B_U;

assign A_S = $signed(OPERA_A);
assign B_S = $signed(OPERA_B);
assign A_U = $unsigned(OPERA_A);
assign B_U = $unsigned(OPERA_B);

always @(posedge CLK_IN or posedge RST) begin
	if (RST)
		ALU_OUT <= 16'd0;
	else begin
	case (MODE)
		PLUS_S:		ALU_OUT <= A_S + B_S;
		SUB_S:		ALU_OUT <= A_S - B_S;
		MUL_S:		ALU_OUT <= A_S * B_S;
		4'b0100:	ALU_OUT <= A_U + B_U;
		4'b0101:	ALU_OUT <= A_U - B_U;
		4'b0110:	ALU_OUT <= A_U * B_U;
		4'b1000:	ALU_OUT <= OPERA_A || OPERA_B; //逻辑或
		4'b1001:	ALU_OUT <= OPERA_A && OPERA_B; //逻辑与
		4'b1010:	ALU_OUT <= OPERA_A | OPERA_B;  //按位或
		4'b1011:	ALU_OUT <= OPERA_A & OPERA_B;  //按位与
		4'b1100:	ALU_OUT <= ~OPERA_A;		   //按位非
		4'b1101:	ALU_OUT <= ~OPERA_A<<1;		   //逻辑左移1位
		4'b1110:	ALU_OUT <= ~OPERA_A>>1;		   //逻辑右移1位
		default:	ALU_OUT <= {OPERA_A, OPERA_B}; //拼接
	endcase
	end
end

endmodule
	
	

