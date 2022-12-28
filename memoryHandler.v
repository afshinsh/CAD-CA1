module memoryHandler(input clk, rst, ldn, number, writeToFile, input [63:0] nIn);
	
	reg [24:0] outputReg [0:63];
	integer n;
	always @ (posedge clk, posedge rst, posedge writeToFile) begin
		if (rst)
			regout <= 64'b0;
		else begin
			if (ldn) begin
				    for (n = 0; n < 64; n = n + 1) begin
						outputReg[n][24 - number] = nIn[n];
					end
			end
		end
		if(writeToFile) begin
			for (n = 0; n < 64; n = n + 1) begin
      			$display("natijaro bebin %d : %b", n, outputReg[n]);
			end
		end
	end
endmodule
