module alu #(parameter N = 32)(
    input logic [N-1:0] a,
    input logic [N-1:0] b,
    input logic [3:0] aluop,
    output logic [N-1:0] out,
    output logic zero
);

    
    always_comb begin
        case (aluop)
            4'b0110: out = a - b; 
            4'b0010: out = a + b; 
            4'b0001: out = a | b; 
            4'b0000: out = a & b; 
            default: out = {N{1'b0}}; 
        endcase
    end

    // Compute zero flag
    always_comb begin
        zero = (out == {N{1'b0}}) ? 1 : 0; // Set zero flag if `out` is all zeros
    end

endmodule
