module mux_3_1 (
    input  logic [31:0] a,     // 32-bit input 0
    input  logic [31:0] b,     // 32-bit input 1
    input  logic [31:0] c,     // 32-bit input 2
    input  logic [1:0] sel,    // 2-bit selection input
    output logic [31:0] y      // 32-bit output of the MUX
);
    always_comb begin
        case (sel)
            2'b00: y = a;      // Select input a
            2'b01: y = b;      // Select input b
            2'b10: y = c;      // Select input c
            default: y = 32'b0; // Default case (optional)
        endcase
    end
endmodule

