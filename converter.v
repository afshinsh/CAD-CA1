module converter(input [31:0] i, input [31:0] j, output integer x, y);
	always @ (i, j) begin
		x = j;
		y = (2 * i + 3 * j) % 5;
	end
endmodule
