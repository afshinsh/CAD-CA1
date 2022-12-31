`timescale 1ns/1ns
module controller(input clk, start, input [31:0] cnt,
     output reg rst, enC, readData, storeConvertedNumber, writeToFile);
					
	reg [2:0] presentState, nextState;
	parameter [2:0] 
	idle = 0, starting = 1, readingData = 2, calculation = 3, storingNumber = 4, countingUp = 5, writingToFile = 6;
	always@(presentState, start) begin
		nextState = idle;
		{rst, readData, storeConvertedNumber, writeToFile, enC} = 5'b0;
        case(presentState)
            idle: begin nextState = (start) ? starting : idle; rst = 1; end
            starting: begin nextState = (~start) ? readingData : starting; end
            readingData: begin nextState = calculation; readData = 1; end
            calculation: begin nextState = storingNumber; end
            storingNumber: begin nextState = countingUp; storeConvertedNumber = 1; end
            countingUp: begin nextState = (cnt > 23) ? writingToFile : readingData; enC = 1; end
            writingToFile: begin nextState = idle; writeToFile = 1; end
            default: nextState = idle;
        endcase
	end
	
	always@(posedge clk, posedge rst) begin
		presentState <= nextState;
        $display("current state : %d", presentState);
	end
	
endmodule
