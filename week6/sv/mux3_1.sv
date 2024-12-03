module mux3_1 (input logic [31:0] a,b, c, input logic [1:0] sel, output logic [31:0] y);
    always_comb begin
        case (sel)
            2'b00: y = a;
            2'b01: y = b;
            2'b10: y = c;
            default: y = 32'b0;
        endcase
    end
endmodule

