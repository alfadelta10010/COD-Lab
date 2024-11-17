module mux_3to1 (
    input  logic [1:0] sel,   // 2-bit selection input
    input  logic       in0,   // Input 0
    input  logic       in1,   // Input 1
    input  logic       in2,   // Input 2
    output logic       out    // Output
);

    always_comb begin
        case (sel)
            2'b00: out = in0; // Select input 0
            2'b01: out = in1; // Select input 1
            2'b10: out = in2; // Select input 2
            default: out = 1'b0; // Default case to handle unused state
        endcase
    end

endmodule
