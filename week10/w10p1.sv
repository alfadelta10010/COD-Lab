module controlunit (
    input logic [6:0] opcode,
    output logic ALUSrc,
    output logic MemToReg,
    output logic RegWrite,
    output logic MemRead,
    output logic MemWrite,
    output logic Branch,
    output logic [1:0] ALUOp
);

    always_comb begin
        ALUSrc   = 0;
        MemToReg = 0;
        RegWrite = 0;
        MemRead  = 0;
        MemWrite = 0;
        Branch   = 0;
        ALUOp    = 2'b00;

        case (opcode)
            7'b0110011: begin  // R-type
                ALUSrc = 0; RegWrite = 1; ALUOp = 2'b10;
            end
            7'b0010011, 7'b0000011: begin  // I-type (addi, lw)
                ALUSrc = 1; MemToReg = (opcode == 7'b0000011); RegWrite = 1;
                MemRead = (opcode == 7'b0000011); ALUOp = 2'b00;
            end
            7'b0100011: begin  // S-type (sw)
                ALUSrc = 1; MemWrite = 1; ALUOp = 2'b00;
            end
            7'b1100011: begin  // B-type (beq)
                Branch = 1; ALUOp = 2'b01;
            end
            7'b0110111, 7'b0010111: begin  // U-type (lui, auipc)
                RegWrite = 1; ALUSrc = 1;
            end
            7'b1101111: begin  // J-type (jal)
                RegWrite = 1; ALUSrc = 1;
            end
        endcase
    end
endmodule





module alucontrol (
    input logic [6:0] funct7,
    input logic [2:0] funct3,
    input logic [1:0] ALUOp,
    output logic [3:0] ALUControl
);

    always_comb begin
        case (ALUOp)
            2'b00: ALUControl = 4'b0010; // ADD for I/S-type instructions
            2'b01: ALUControl = 4'b0110; // SUB for B-type (e.g., BEQ)
            2'b10: begin // R-type operations
                case ({funct7, funct3})
                    10'b0000000_000: ALUControl = 4'b0010; // ADD
                    10'b0100000_000: ALUControl = 4'b0110; // SUB
                    10'b0000000_111: ALUControl = 4'b0000; // AND
                    10'b0000000_110: ALUControl = 4'b0001; // OR
                    10'b0000000_010: ALUControl = 4'b0111; // SLT
                    default: ALUControl = 4'bxxxx;         // Invalid
                endcase
            end
            default: ALUControl = 4'bxxxx;
        endcase
    end
endmodule
