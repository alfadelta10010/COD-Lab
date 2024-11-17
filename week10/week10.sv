Write a SV program for Control units

module control_unit (
    input  logic [6:0] opcode,        
    output logic [3:0] ALUOp,         
    output logic ALUSrc,              
    output logic Branch,              
    output logic MemRead,             
    output logic MemWrite,            
    output logic MemToReg,            
    output logic RegWrite             
);

    always_comb begin

        ALUOp     = 4'b0000;
        ALUSrc    = 1'b0;
        Branch    = 1'b0;
        MemRead   = 1'b0;
        MemWrite  = 1'b0;
        MemToReg  = 1'b0;
        RegWrite  = 1'b0;


        case (opcode)

            7'b0110011: begin
                ALUOp     = 4'b0010;  
                ALUSrc    = 1'b0;     
                RegWrite  = 1'b1;     
                MemToReg  = 1'b0;     
                MemRead   = 1'b0;     
                MemWrite  = 1'b0;     
                Branch    = 1'b0;     
            end


            7'b0010011: begin
                ALUOp     = 4'b0011;  
                ALUSrc    = 1'b1;     
                RegWrite  = 1'b1;     
                MemToReg  = 1'b0;     
                MemRead   = 1'b0;     
                MemWrite  = 1'b0;     
                Branch    = 1'b0;     
            end


            7'b0000011: begin
                ALUOp     = 4'b0000;  
                ALUSrc    = 1'b1;     
                RegWrite  = 1'b1;     
                MemToReg  = 1'b1;     
                MemRead   = 1'b1;     
                MemWrite  = 1'b0;     
                Branch    = 1'b0;     
            end


            7'b0100011: begin
                ALUOp     = 4'b0000;  
                ALUSrc    = 1'b1;     
                RegWrite  = 1'b0;     
                MemToReg  = 1'b0;     
                MemRead   = 1'b0;     
                MemWrite  = 1'b1;
                Branch    = 1'b0;     
            end


            7'b1100011: begin
                ALUOp     = 4'b0110;  
                ALUSrc    = 1'b0;     
                RegWrite  = 1'b0;     
                MemToReg  = 1'b0;     
                MemRead   = 1'b0;   
                MemWrite  = 1'b0;     
                Branch    = 1'b1;     
            end

            default: begin

                ALUOp     = 4'b0000;
                ALUSrc    = 1'b0;
                Branch    = 1'b0;
                MemRead   = 1'b0;
                MemWrite  = 1'b0;
                MemToReg  = 1'b0;
                RegWrite  = 1'b0;
            end
        endcase
    end
endmodule

module alu_control_unit (
    input logic [2:0] funct3,    // funct3 from the instruction
    input logic [6:0] funct7,    // funct7 from the instruction
    input logic [1:0] alu_op,    // ALU Operation (from control unit)
    output logic [3:0] alu_ctrl  // ALU Control signal
);

    // Define ALU operations
    typedef enum logic [3:0] {
        ALU_ADD   = 4'b0000, // Addition
        ALU_SUB   = 4'b0001, // Subtraction
        ALU_AND   = 4'b0010, // AND
        ALU_OR    = 4'b0011, // OR
        ALU_XOR   = 4'b0100, // XOR
        ALU_SLL   = 4'b0101, // Shift Left Logical
        ALU_SRL   = 4'b0110, // Shift Right Logical
        ALU_SRA   = 4'b0111  // Shift Right Arithmetic
    } alu_op_t;

    // ALU Control logic based on funct3, funct7, and ALU_OP
    always_comb begin
        case (alu_op)
            2'b00: begin // R-type instructions (Arithmetic and logical operations)
                case (funct3)
                    3'b000: begin
                        if (funct7[5] == 1)  // Check for subtraction (funct7[5] = 1)
                            alu_ctrl = ALU_SUB;
                        else
                            alu_ctrl = ALU_ADD; // Default is addition
                    end
                    3'b111: alu_ctrl = ALU_AND; // AND operation
                    3'b110: alu_ctrl = ALU_OR;  // OR operation
                    3'b100: alu_ctrl = ALU_XOR; // XOR operation
                    3'b001: alu_ctrl = ALU_SLL; // Shift Left Logical
                    3'b101: alu_ctrl = ALU_SRL; // Shift Right Logical
                    default: alu_ctrl = ALU_ADD; // Default to addition if unknown funct3
                endcase
            end

            2'b01: begin // I-type instructions (Immediate operations)
                case (funct3)
                    3'b000: alu_ctrl = ALU_ADD; // ADD Immediate
                    3'b111: alu_ctrl = ALU_AND; // AND Immediate
                    3'b110: alu_ctrl = ALU_OR;  // OR Immediate
                    3'b100: alu_ctrl = ALU_XOR; // XOR Immediate
                    default: alu_ctrl = ALU_ADD; // Default to addition
                endcase
            end

            2'b10: begin // Branch instructions (BEQ, BNE, etc.)
                case (funct3)
                    3'b000: alu_ctrl = ALU_SUB; // BEQ/BNE (Subtraction to check equality)
                    default: alu_ctrl = ALU_ADD; // Default to addition for branch offset calculation
                endcase
            end

            default: alu_ctrl = ALU_ADD; // Default ALU operation is addition
        endcase
    end

endmodule