module test_top();

reg 	CLK;
reg 	RST;
wire 	CLK_OUT;

clk_div7 dut(
			.CLK(CLK),
			.CLK_OUT(CLK_OUT),
			.RST(RST)
			);

initial begin
	CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin
    #10;
	RST = 1;
	#35;
    RST = 0;

	#100000;
	$finish;
end

initial begin
  $fsdbDumpfile("clk_div7.fsdb");
  $fsdbDumpvars();
end

endmodule
