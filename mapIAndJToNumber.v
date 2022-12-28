module mapIAndJToNumber(input i, j, output integer convertNum);
	always @ (i, j) begin
		if(i == 3 && j == 0)
            convertNum = 10;
	end
endmodule
