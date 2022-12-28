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
	wire signed [31:0] newI;
	wire signed [31:0] newJ;
	wire signed [31:0] i;
	wire signed [31:0] j;
	//integer number;
	wire signed [31:0] number;
	wire signed [31:0] convertedNumber;
    readData rd(clk, readData, number, matrix);
	memoryHandler mem(clk, rst, ldn, writeToFile, convertedNumber, matrix);
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
		#200 $display("adad: %d", number);
		#100 readData = 1;
		#100 readData = 0;
		#200 $display("endddddddddd: %b", matrix);
		#1000 ldn = 1;
		#10 ldn = 0;
		#1000 writeToFile = 1;
		#10 enC = 1;
		#25 enC = 0;
		/*#200 $display("adad: %d", number);
		#100 readData = 1;
		#200 $display("endddddddddd: %b", matrix);*/
		#20 $stop;
	end

endmodule