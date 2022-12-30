module counter(input clk, rst, enC, output integer counter);
	always @ (posedge clk, posedge rst) begin
		if (rst) 
			counter <= 0;
		else
			if (enC)
				counter <= counter + 1;
			else
				counter <= counter;
	end
endmodule
