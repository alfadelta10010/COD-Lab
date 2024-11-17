#Program1: Write a SV program for Control units
#Control Unit 

module Control_Unit (
    input logic [6:0] opcode,           // Opcode from the instruction
    output logic Branch, MemRead, MemWrite,
    output logic RegWrite, ALUSrc, MemtoReg,
    output logic [1:0] ALUOp
);

    always_comb begin
        // Default values
        Branch = 0;
        MemRead = 0;
        MemWrite = 0;
        RegWrite = 0;
        ALUSrc = 0;
        MemtoReg = 0;
        ALUOp = 2'b00;

        case (opcode)
            7'b0110011: begin  // R-type
                ALUOp = 2'b10;
                RegWrite = 1;
            end
            7'b0000011: begin  // Load
                ALUOp = 2'b00;
                MemRead = 1;
                RegWrite = 1;
                MemtoReg = 1;
                ALUSrc = 1;
            end
            7'b0100011: begin  // Store
                ALUOp = 2'b00;
                MemWrite = 1;
                ALUSrc = 1;
            end
            7'b1100011: begin  // Branch
                ALUOp = 2'b01;
                Branch = 1;
            end
            default: begin
                // Defaults for unsupported opcodes
                ALUOp = 2'b00;
            end
        endcase
    end
endmodule

#ALU Control Unit 

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
                    10'b0000000_000: ALUoperation = 4'b0010; // ADD
                    10'b0100000_000: ALUoperation = 4'b0110; // SUB
                    10'b0000000_001: ALUoperation = 4'b1000; // SLL (Shift Left Logical)
                    10'b0000000_101: ALUoperation = 4'b1010; // SRL (Shift Right Logical)
                    10'b0100000_101: ALUoperation = 4'b1011; // SRA (Shift Right Arithmetic)

                    // Logical operations
                    10'b0000000_110: ALUoperation = 4'b0001; // OR
                    10'b0000000_111: ALUoperation = 4'b0000; // AND
                    10'b0000000_100: ALUoperation = 4'b0011; // XOR

                    // Comparison operations
                    10'b0000000_010: ALUoperation = 4'b0111; // SLT (Set Less Than)
                    10'b0000000_011: ALUoperation = 4'b1001; // SLTU (Set Less Than Unsigned)

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
