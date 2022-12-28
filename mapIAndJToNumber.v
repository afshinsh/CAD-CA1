module mapIAndJToNumber(input [31:0] i, input [31:0] j, output integer convertNum);
	always @ (i, j) begin
		if(i == 3 && j == 0) begin
            convertNum = 10;
	 		$display("dastand");
		end
	end
endmodule
