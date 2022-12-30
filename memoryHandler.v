module memoryHandler(input clk, rst, ldn, writeToFile, input [31:0] number, input [63:0] nIn);
	integer data_file; 
  	integer scan_file;
  	`define NULL 0    

	reg [24:0] outputReg [0:63];
	integer n;
	always @ (posedge clk, posedge rst) begin
		if (rst)
			for (n = 0; n < 64; n = n + 1) begin
					outputReg[n] = 25'b0;
			end	
		else begin
			if (ldn) begin
				for (n = 0; n < 64; n = n + 1) begin
					outputReg[n][24 - number] = nIn[n];
				end
			end
		end
		if(writeToFile) begin
			data_file = $fopen("out.dat", "w");

			if (data_file == `NULL) begin
				$display("data_file handle was NULL");
				$finish;
			end
			
			for (n = 0; n < 64; n = n + 1) 
				$fwrite(data_file, "%b\n",outputReg[n]);
		end
	end
endmodule
