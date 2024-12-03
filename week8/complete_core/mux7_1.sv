module mux7_1(
    input logic d0,     // Input 0
    input logic d1,     // Input 1
    input logic d2,     // Input 2
    input logic d3,     // Input 3
    input logic d4,     // Input 4
    input logic d5,     // Input 5
    input logic d6,     // Input 6
    input logic [2:0] sel, // 3-bit select signal
    output logic y          // Single-bit output
);

    always_comb begin
        case (sel)
            3'b000: y = d0;
            3'b001: y = d1;
            3'b010: y = d2;
            3'b011: y = d3;
            3'b100: y = d4;
            3'b101: y = d5;
            3'b110: y = d6;
            default: y = 1'b0;  // Default case for safety
        endcase
    end
endmodule
