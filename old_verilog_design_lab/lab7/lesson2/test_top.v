module test_top();

reg		CLK;
reg		RST;

reg		[7:0]	OPERA_A;
reg		[7:0]	OPERA_B;
reg		[3:0]	MODE;

wire	[15:0]	ALU_OUT;

alu		dut(
			.CLK_IN(CLK),
			.RST(RST),
			.OPERA_A(OPERA_A),
			.OPERA_B(OPERA_B),
			.MODE(MODE),
			.CIN(CIN),
			.COUT(COUT),
			.ALU_OUT(ALU_OUT)
			);
			
initial begin
	CLK = 0;
	forever #5 CLK = ~CLK;
end

initial begin
	#10;
	RST = 1;
	#30;
	RST = 0;
	OPERA_A = 0;
	OPERA_B = 0;
	MODE = 0;
	
	#50;
	repeat (30) begin
		OPERA_A = $random % 128; //即这个数的范围会在负的128到正127之间
		OPERA_B = $random % 128;
		MODE    = {$random} % 16;//这个数的范围会在0到15之间
        $display("MODE ramdom number is: %d", MODE); 
		@(negedge CLK);
	end
	
	#10000;
	$finish;
end

initial begin
	$fsdbDumpfile("alu.fsdb");
	$fsdbDumpvars();
end

endmodule
