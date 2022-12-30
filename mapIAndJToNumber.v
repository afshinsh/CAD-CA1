module mapIAndJToNumber(input [31:0] i, input [31:0] j, output integer convertNum);
	always @ (i, j) begin
		if(i == 3 && j == 3) begin
            convertNum = 0;
		end
		if(i == 4 && j == 3) begin
            convertNum = 1;
		end
		if(i == 0 && j == 3) begin
            convertNum = 2;
		end
		if(i == 1 && j == 3) begin
            convertNum = 3;
		end
		if(i == 2 && j == 3) begin
            convertNum = 4;
		end
		if(i == 3 && j == 4) begin
            convertNum = 5;
		end
		if(i == 4 && j == 4) begin
            convertNum = 6;
		end
		if(i == 0 && j == 4) begin
            convertNum = 7;
		end
		if(i == 1 && j == 4) begin
            convertNum = 8;
		end
		if(i == 2 && j == 4) begin
            convertNum = 9;
		end
		if(i == 3 && j == 0) begin
            convertNum = 10;
		end
		if(i == 4 && j == 0) begin
            convertNum = 11;
		end
		if(i == 0 && j == 0) begin
            convertNum = 12;
		end
		if(i == 1 && j == 0) begin
            convertNum = 13;
		end
		if(i == 2 && j == 0) begin
            convertNum = 14;
		end
		if(i == 3 && j == 1) begin
            convertNum = 15;
		end
		if(i == 4 && j == 1) begin
            convertNum = 16;
		end
		if(i == 0 && j == 1) begin
            convertNum = 17;
		end
		if(i == 1 && j == 1) begin
            convertNum = 18;
		end
		if(i == 2 && j == 1) begin
            convertNum = 19;
		end
		if(i == 3 && j == 2) begin
            convertNum = 20;
		end
		if(i == 4 && j == 2) begin
            convertNum = 21;
		end
		if(i == 0 && j == 2) begin
            convertNum = 22;
		end
		if(i == 1 && j == 2) begin
            convertNum = 23;
		end
		if(i == 2 && j == 2) begin
            convertNum = 24;
		end
	end
endmodule
