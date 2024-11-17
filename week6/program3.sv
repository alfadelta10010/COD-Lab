module mux_3to1 (
    input logic [1:0] select,  // 2-bit select input
    input logic [15:0] a,       // First data input
    input logic [15:0] b,       // Second data input
    input logic [15:0] c,       // Third data input
    output logic [15:0] y       // Output
);

    always @* begin
        case (select)
            2'b00: y = a;      // Select a
            2'b01: y = b;      // Select b
            2'b10: y = c;      // Select c
            default: y = 16'hxxxx; // Undefined case
        endcase
    end

endmodule
