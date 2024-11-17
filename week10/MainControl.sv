`timescale 1ns / 1ps

module MainControl (
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
