// Write a SV program for 3:1 MUX

module mux_3to1 (
    input logic [1:0] select,  // 2-bit select input (00, 01, 10)
    input logic [15:0] a,       // First data input (16 bits)
    input logic [15:0] b,       // Second data input (16 bits)
    input logic [15:0] c,       // Third data input (16 bits)
    output logic [15:0] y       // Output (16 bits)
);
    always @* begin
        case (select)
            2'b00: y = a;      // If select is 00, output a
            2'b01: y = b;      // If select is 01, output b
            2'b10: y = c;      // If select is 10, output c
            default: y = 16'hxxxx; // Undefined state for safety
        endcase
    end
endmodule