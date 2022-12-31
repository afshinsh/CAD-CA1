module permutation(input clk, start);
	wire rst;
	wire ldn;
	wire readData;
	wire enC;
	wire writeToFile;
	wire signed [31:0] cnt;
	
    datapath dp(clk, rst, ldn, readData, enC, writeToFile, cnt);
    controller ct(clk, start, cnt, rst, enC, readData, ldn, writeToFile);
endmodule