module mux31(input logic a, b, c, input logic[1:0] s, output logic y);
    always_comb begin
        case(s)
            2'b00: y = a;
            2'b01: y = b;
            2'b10: y = c;
            2'b11: y = 1'bX;
        endcase
    end
endmodule
