`timescale 1ns/1ns
module tb();
	reg start;
	reg clk;
	
	permutation per(clk, start);
	
	always #10 clk = ~clk;

	initial begin
		clk = 0;
		#10 start = 1;
		#10 start = 0;
		#2200 $stop;
	end

endmodule