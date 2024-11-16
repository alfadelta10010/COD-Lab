module alu(
    input logic [31:0] rs1,       // First register input
    input logic [31:0] out,       // Second input (mux output)
    input logic [3:0] alu_op,     // ALU operation code
    output logic [31:0] alu_out,  // ALU result
    output bit zero               // Zero flag output
);

    always_comb begin
        case(alu_op)
            4'b0000: alu_out = rs1 & out; // AND
            4'b0001: alu_out = rs1 | out; // OR
            4'b0010: alu_out = rs1 + out; // ADD
            4'b0110: alu_out = rs1 - out; // SUB
            default: alu_out = 32'b0;    // Default case
        endcase

        // Set zero flag
        if (alu_out == 32'b0)
            zero = 1;  // Zero flag is set if ALU output is zero
        else
            zero = 0;  // Zero flag is cleared otherwise
    end

endmodule
