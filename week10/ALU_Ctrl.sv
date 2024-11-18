module ALU_Ctrl(
    input logic [6:0] funct7,        // funct7 field from instruction
    input logic [2:0] funct3,        // funct3 field from instruction
    input logic [1:0] ALUOp,         // ALUOp from Control Unit
    output logic [3:0] ALUControl    // ALU operation control signal
);

    always_comb begin
        case(ALUOp)
            2'b00: begin  // Load/Store or Branch instructions
                ALUControl = 4'b0010;  // ADD operation (for address calculation)
            end

            2'b01: begin  // Branch instructions (e.g., BEQ, BNE)
                ALUControl = 4'b0110;  // SUB operation (for comparison)
            end

            2'b10: begin  // R-type (Arithmetic operations)
                case(funct3)
                    3'b000: begin  // ADD or SUB
                        if(funct7 == 7'b0000000)  // ADD
                            ALUControl = 4'b0010;  // ADD
                        else if(funct7 == 7'b0100000)  // SUB
                            ALUControl = 4'b0110;  // SUB
                    end

                    3'b001: begin  // SLL (Shift Left Logical)
                        ALUControl = 4'b0100;  // SLL
                    end

                    3'b010: begin  // SLT (Set Less Than)
                        ALUControl = 4'b0111;  // SLT
                    end

                    3'b011: begin  // SLTU (Set Less Than Unsigned)
                        ALUControl = 4'b1000;  // SLTU
                    end

                    3'b100: begin  // XOR
                        ALUControl = 4'b0001;  // XOR
                    end

                    3'b101: begin  // SRL or SRA (Shift Right Logical or Arithmetic)
                        if(funct7 == 7'b0000000)  // SRL
                            ALUControl = 4'b0101;  // SRL
                        else if(funct7 == 7'b0100000)  // SRA
                            ALUControl = 4'b0111;  // SRA
                    end

                    3'b110: begin  // OR
                        ALUControl = 4'b0000;  // OR
                    end

                    3'b111: begin  // AND
                        ALUControl = 4'b0011;  // AND
                    end

                    default: ALUControl = 4'b0000;  // Default case (should never happen)
                endcase
            end

            2'b11: begin  // I-type instructions (e.g., ADDI, XORI)
                case(funct3)
                    3'b000: begin  // ADDI
                        ALUControl = 4'b0010;  // ADD
                    end

                    3'b010: begin  // SLTI (Set Less Than Immediate)
                        ALUControl = 4'b0111;  // SLT
                    end

                    3'b011: begin  // SLTIU (Set Less Than Immediate Unsigned)
                        ALUControl = 4'b1000;  // SLTU
                    end

                    3'b100: begin  // XORI
                        ALUControl = 4'b0001;  // XOR
                    end

                    3'b110: begin  // ORI
                        ALUControl = 4'b0000;  // OR
                    end

                    3'b111: begin  // ANDI
                        ALUControl = 4'b0011;  // AND
                    end

                    default: ALUControl = 4'b0000;  // Default case
                endcase
            end

            default: ALUControl = 4'b0000;  // Default case for unsupported ALUOp
        endcase
    end
endmodule
