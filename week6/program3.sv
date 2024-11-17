module mux3_to_1 (
    input logic [31:0] in0,  // First input
    input logic [31:0] in1,  // Second input
    input logic [31:0] in2,  // Third input
    input logic [1:0] sel,   // 2-bit select signal
    output logic [31:0] out  // Output
);
    always_comb begin
        case (sel)
            2'b00: out = in0;   // If sel = 00, select in0
            2'b01: out = in1;   // If sel = 01, select in1
            2'b10: out = in2;   // If sel = 10, select in2
            default: out = 32'bx; // Default case to handle invalid sel values
        endcase
    end

endmodule
