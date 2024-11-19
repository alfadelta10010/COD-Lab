module mux_3to1 (
    input  logic [2:0] in,   // 3 input lines
    input  logic [1:0] sel,  // 2-bit select signal
    output logic out         // Output
);

    always_comb begin
        case (sel)
            2'b00: out = in[0]; // Select input 0
            2'b01: out = in[1]; // Select input 1
            2'b10: out = in[2]; // Select input 2
            default: out = 1'b0; // Default case
        endcase
    end

endmodule
