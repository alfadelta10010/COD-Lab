module mux3_1 (
    input logic [1:0] sel,    // 2-bit selection input
    input logic a,            // Input a
    input logic b,            // Input b
    input logic c,            // Input c
    output logic y             // Output
);

    always @(*) begin
        case (sel)
            2'b00: y = a;    // If sel = 00, output is a
            2'b01: y = b;    // If sel = 01, output is b
            2'b10: y = c;    // If sel = 10, output is c
            default: y = 1'bx; // Undefined state (for safety)
        endcase
    end

endmodule

