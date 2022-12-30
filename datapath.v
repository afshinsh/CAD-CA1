`timescale 1ns/1ns
module TB(input clk, rst, ldn, readData, enC, writeToFile, output integer cnt);
    wire [63:0] matrix;
    wire [63:0] regValue;
	wire signed [31:0] newI;
	wire signed [31:0] newJ;
	wire signed [31:0] i;
	wire signed [31:0] j;
	wire signed [31:0] number;
	wire signed [31:0] convertedNumber;
    readData rd(clk, readData, number, matrix);
	memoryHandler mem(clk, rst, ldn, writeToFile, convertedNumber, matrix);
	counter cnt(clk, rst, enC, number);
	mapToIAndJ mapToij(number, i, j);
	converter cnvt(i, j, newI, newJ);
	mapIAndJToNumber mapijToNum(newI, newJ, convertedNumber);
    assign cnt = number;

endmodule