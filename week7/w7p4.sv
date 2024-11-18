module decoder(
    input  logic [31:0] instruction,    
    output logic [6:0]  opcode,         
    output logic [4:0]  rd,             
    output logic [2:0]  funct3,         
    output logic [4:0]  rs1,            
    output logic [4:0]  rs2,            
    output logic [6:0]  funct7,         
    output logic [31:0] imm             
);

    always_comb begin
        opcode = instruction[6:0]; 
        rd     = instruction[11:7];
        funct3 = instruction[14:12];
        rs1    = instruction[19:15];
        rs2    = instruction[24:20];
        funct7 = instruction[31:25];
        imm    = 32'b0;

        case (opcode)
            7'b0110011: imm = 32'b0;  // R-type
            7'b0010011, 7'b0000011:  // I-type (addi, lw)
                imm = {{20{instruction[31]}}, instruction[31:20]};
            7'b1100011:  // B-type (beq)
                imm = {{20{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0};
            7'b0100011:  // S-type (sw)
                imm = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
            7'b0110111, 7'b0010111:  // U-type (lui, auipc)
                imm = {instruction[31:12], 12'b0};
            7'b1101111:  // J-type (jal)
                imm = {{12{instruction[31]}}, instruction[19:12], instruction[20], instruction[30:21], 1'b0};
        endcase
    end
endmodule
