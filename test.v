`timescale 1ns/1ns
module TB();
	reg clk;
	reg rst;
	reg ldn;
	reg init;
	reg readData;
	reg enC;
	reg writeToFile;
    wire [63:0] matrix;
    wire [63:0] regValue;
	integer newI;
	integer newJ;
	integer i;
	integer j;
	integer number;
	integer convertedNumber;
    readData rd(clk, readData, number, matrix);
	memoryHandler mem(clk, rst, ldn, convertedNumber, writeToFile, matrix);
	counter cnt(clk, rst, init, enC, number);
	mapToIAndJ mapToij(number, i, j);
	converter cnvt(i, j, newI, newJ);
	mapIAndJToNumber mapijToNum(newI, newJ, convertedNumber);
	always #5 clk = ~clk;

	initial begin
		clk = 0;
		rst = 0;
		#100 rst = 1;
		#100 rst = 0;
		#100 readData = 1;
		#100 readData = 0;
		#1000 ldn = 1;
		#1000 writeToFile = 1;
		#200 $display("endddddddddd: %b", regValue);
		#4300 $stop;
	end

endmodule