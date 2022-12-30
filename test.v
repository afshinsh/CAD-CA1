`timescale 1ns/1ns
module TB();
	reg start;
	reg clk;
	reg rst;
	reg ldn;
	reg init;
	reg readData;
	reg enC;
	reg writeToFile;
	wire signed [31:0] cnt;
	
    datapath dp(clk, rst, ldn, readData, enC, writeToFile, cnt);
    controller ct(clk, rst, start, enC, readData, storeConvertedNumber, writeToFile);

	always #10 clk = ~clk;

	initial begin
		clk = 0;
		#100 start = 1;
		#100 start = 0;
		#2000 $stop;
	end

endmodule