// Write a SV program for the ALU

module alu_ex #(parameter N = 32, M = 6) (
    input logic [N-1:0] op1, op2,
    input logic [M-1:0] aluop,
    output logic [N-1:0] res,
    output logic zero
);
    
    always_comb begin
        // Default assignments
        res = 0;  // Initialize result to zero
        zero = 0; // Initialize zero flag

        // ALU operations based on aluop code
        case (aluop)
            // ADD / ADDI
            6'b000000: res = op1 + op2;

            // SUB
            6'b000001: res = op1 - op2;

            // XOR / XORI
            6'b000010: res = op1 ^ op2;

            // OR / ORI
            6'b000011: res = op1 | op2;

            // AND / ANDI
            6'b000100: res = op1 & op2;

            // SLL / SLLI
            6'b000101: res = op1 << op2[4:0];  // Shift left logical

            // SRL / SRLI
            6'b000110: res = op1 >> op2[4:0];  // Shift right logical

            // SRA / SRAI
            6'b000111: res = op1 >>> op2[4:0]; // Shift right arithmetic

            // SLT / SLTI
            6'b001000: res = (op1 < op2) ? 32'h00000001 : 32'h00000000;

            // SLTU / SLTUI
            6'b001001: res = (op1 < op2) ? 32'h00000001 : 32'h00000000; 

            default: res = 32'b0; // Default case to handle unrecognized operations
        endcase
        
        // Set the zero flag based on the result
        zero = (res == 32'b0) ? 1 : 0;
    end 
endmodule