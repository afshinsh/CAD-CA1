module mapToIAndJ(input number, output integer i, j);
	always @ (number) begin
        case (number)
            0 : begin i = 3; j = 3; end
            default: begin i = 0; j = 0; end
        endcase
    end
endmodule
