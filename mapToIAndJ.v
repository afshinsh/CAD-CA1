module mapToIAndJ(input [31:0] number, output integer i, j);
	always @ (number) begin
        case (number)
            0 : begin i = 3; j = 3; end
            1 : begin i = 4; j = 3; end
            2 : begin i = 0; j = 3; end
            3 : begin i = 1; j = 3; end
            4 : begin i = 2; j = 3; end
            5 : begin i = 3; j = 4; end
            6 : begin i = 4; j = 4; end
            7 : begin i = 0; j = 4; end
            8 : begin i = 1; j = 4; end
            9 : begin i = 2; j = 4; end
            10 : begin i = 3; j = 0; end
            11 : begin i = 4; j = 0; end
            12 : begin i = 0; j = 0; end
            13 : begin i = 1; j = 0; end
            14 : begin i = 2; j = 0; end
            15 : begin i = 3; j = 1; end
            16 : begin i = 4; j = 1; end
            17 : begin i = 0; j = 1; end
            18 : begin i = 1; j = 1; end
            19 : begin i = 2; j = 1; end
            20 : begin i = 3; j = 2; end
            21 : begin i = 4; j = 2; end
            22 : begin i = 0; j = 2; end
            23 : begin i = 1; j = 2; end
            24 : begin i = 2; j = 2; end
            default: begin i = 0; j = 0; end
        endcase
    end
endmodule
