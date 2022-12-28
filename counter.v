module counter(input clk, rst, init, en_c, output integer counter);
	always @ (posedge clk, posedge rst) begin
		if (rst) 
			counter <= 0;
		else
			if (init)
				counter <= 0;
			else
				if (en_c)
					counter <= counter + 1;
				else
					counter <= counter;
	end
endmodule
