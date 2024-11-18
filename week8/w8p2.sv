module ALU (
    input logic [31:0] A,            // First operand
    input logic [31:0] B,            // Second operand
    input logic [3:0] ALUControl,    // Control signal from ALUControl module
    output logic [31:0] ALUResult,   // Result of ALU operation
    output logic Zero                // Zero flag, active when ALUResult is 0
);

    always_comb begin
        case (ALUControl)
            4'b0010: ALUResult = A + B;         // ADD
            4'b0110: ALUResult = A - B;         // SUB
            4'b0000: ALUResult = A & B;         // AND
            4'b0001: ALUResult = A | B;         // OR
            4'b0111: ALUResult = (A < B) ? 1 : 0; // SLT (Set on Less Than)
            default: ALUResult = 0;             // Default case
        endcase

        // Set Zero flag if ALUResult is zero
        Zero = (ALUResult == 0);
    end

endmodule