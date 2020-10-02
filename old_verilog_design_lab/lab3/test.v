`timescale 1ns/100ps;//1ns=1000ps
module test ();

reg [3:0] in1;
//wire  in2;

initial begin
    in1 = 0;
    #2.18;    //As we can see from the report, the display of time is 20(it means 20*100ps)
    $display("this is testbench: %d, %t", in1, $time);
    in1 = 3;
    
    #3;
    $display("this is testbench: %d, %t", in1, $realtime);
    in1 = 5; //As we can see from the report, the diplay of time is 52, it is beacause $time define a int,  while $realtime define a float
    $display("this is testbench: %d, %t", in1, $realtime);

    $finish;
    
end

initial begin
    $fsdbDumpfile("test.fsdb");
    $fsdbDumpvars();     //if you write nothing, you will dump every signal
end

endmodule
