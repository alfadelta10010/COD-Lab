module ALUControl (
    input logic [1:0] ALUOp,            // ALUOp from Main Control
    input logic [6:0] func7,            // func7 from instruction
    input logic [2:0] func3,            // func3 from instruction
    output logic [3:0] ALUoperation     // ALU operation control lines
);

    always_comb begin
        case (ALUOp)
            2'b00: ALUoperation = 4'b0010; // Load/Store: ALU performs ADD (e.g., LD, SD)
            2'b01: ALUoperation = 4'b0110; // Branch: ALU performs SUB (e.g., BEQ)
            2'b10: begin                    // R-type instructions (e.g., ADD, SUB, OR, AND)
                case ({func7, func3})
                    // Arithmetic operations
                    10'b0000000_000: ALUoperation = 4'b0000; // ADD
                    10'b0100000_000: ALUoperation = 4'b0001; // SUB
                    10'b0000000_001: ALUoperation = 4'b1000; // SLL (Shift Left Logical)
                    10'b0000000_101: ALUoperation = 4'b1010; // SRL (Shift Right Logical)
                    10'b0100000_101: ALUoperation = 4'b1011; // SRA (Shift Right Arithmetic)

                    // Logical operations
                    10'b0000000_110: ALUoperation = 4'b0110; // OR
                    10'b0000000_111: ALUoperation = 4'b1110; // AND
                    10'b0000000_100: ALUoperation = 4'b0010; // XOR

                    // Comparison operations
                    10'b0000000_010: ALUoperation = 4'b0100; // SLT (Set Less Than)
                    10'b0000000_011: ALUoperation = 4'b1100; // SLTU (Set Less Than Unsigned)

                    default: ALUoperation = 4'b0000; // Default to AND for unsupported R-type operations
                endcase
            end
            2'b11: begin // Additional operation types if needed (e.g., custom instructions)
                // Custom cases for different operations can go here
                ALUoperation = 4'b0000; // Default to AND for unsupported ALUOp = 2'b11
            end
            default: ALUoperation = 4'b0000; // Default to AND for unsupported ALUOp values
        endcase
    end
endmodule
