module main_control(
    //input logic clk,
    input logic [6:0] opcode, 
    output logic branch, regWrite, MemtoReg, Mem_wr, Mem_rd, Alu_src,
    output logic [1:0] Alu_op
);

always_comb begin
    case (opcode)
        7'b0101111: begin // R-type
            branch = 1'b0;
            regWrite = 1'b1;
            MemtoReg = 1'b0;
            Mem_rd = 1'b0;
            Mem_wr = 1'b0;
            Alu_src = 1'b0;
            Alu_op = 2'b10;
        end
        7'b0010011: begin // I-type
            branch = 1'b0;
            regWrite = 1'b1;
            MemtoReg = 1'b0;
            Mem_rd = 1'b0;
            Mem_wr = 1'b0;
            Alu_src = 1'b1;
            Alu_op = 2'b11; // to decide which operation in I-type
        end
        7'b0000011: begin // Load
            branch = 1'b0;
            regWrite = 1'b1;
            MemtoReg = 1'b1;
            Mem_rd = 1'b1;
            Mem_wr = 1'b0;
            Alu_src = 1'b1;
            Alu_op = 2'b00;
        end
        7'b0100011: begin // Store
            branch = 1'b0;
            regWrite = 1'b0;
            MemtoReg = 1'b0;
            Mem_rd = 1'b0;
            Mem_wr = 1'b1;
            Alu_src = 1'b1;
            Alu_op = 2'b00;
        end
        7'b1100011: begin // BEQ
            branch = 1'b1;
            regWrite = 1'b0;
            MemtoReg = 1'b0;
            Mem_rd = 1'b0;
            Mem_wr = 1'b0;
            Alu_src = 1'b1;
            Alu_op = 2'b01;
        end
        default: begin
            branch = 1'b0;
            regWrite = 1'b0;
            MemtoReg = 1'b0;
            Mem_rd = 1'b0;
            Mem_wr = 1'b0;
            Alu_src = 1'b0;
            Alu_op = 2'b00;
        end
    endcase
end

endmodule



#ALU CONTROL UNIT

module Alu_control (
    input logic [2:0] fun3,
    input logic fun7,
    input logic [6:0] opcode,
    input logic [1:0] Alu_op,
    output logic [5:0] Alu_operation
);

    always_comb begin
        // Default assignment to avoid latches
        Alu_operation = 6'b000000;

        case ({Alu_op, opcode})
            9'b00_0000011: begin // load
                case (fun3)
                    3'b000: Alu_operation = 6'b000000;
                    3'b001: Alu_operation = 6'b000001;
                    3'b010: Alu_operation = 6'b000010;
                    3'b100: Alu_operation = 6'b000011;
                    3'b101: Alu_operation = 6'b000100;
                    default: Alu_operation = 6'b000101;
                endcase
            end

            9'b00_0100011: begin // store
                case (fun3)
                    3'b000: Alu_operation = 6'b000110;
                    3'b001: Alu_operation = 6'b000111;
                    3'b010: Alu_operation = 6'b001000;
                    default: Alu_operation = 6'b001001;
                endcase
            end

            9'b01_1100011: begin // branch
                case (fun3)
                    3'b000: Alu_operation = 6'b001010;
                    3'b001: Alu_operation = 6'b001011;
                    3'b100: Alu_operation = 6'b001100;
                    3'b101: Alu_operation = 6'b001101;
                    3'b110: Alu_operation = 6'b001110;
                    3'b111: Alu_operation = 6'b001111;
                    default: Alu_operation = 6'b010000;
                endcase
            end

            9'b10_0110011: begin // r-type
                if (fun3 == 3'b000 && fun7 == 1'b0)
                    Alu_operation = 6'b010001;
                else if (fun3 == 3'b000 && fun7 == 1'b1)
                    Alu_operation = 6'b010010;
                else if (fun3 == 3'b100 && fun7 == 1'b0)
                    Alu_operation = 6'b010011;
                else if (fun3 == 3'b110 && fun7 == 1'b0)
                    Alu_operation = 6'b010100;
                else if (fun3 == 3'b001 && fun7 == 1'b0)
                    Alu_operation = 6'b010101;
                else if (fun3 == 3'b101 && fun7 == 1'b0)
                    Alu_operation = 6'b010110;
                else if (fun3 == 3'b101 && fun7 == 1'b1)
                    Alu_operation = 6'b010111;
                else if (fun3 == 3'b010 && fun7 == 1'b0)
                    Alu_operation = 6'b011000;
                else if (fun3 == 3'b011 && fun7 == 1'b0)
                    Alu_operation = 6'b011001;
                else
                    Alu_operation = 6'b011010;
            end

            9'b11_0010011: begin // i-type
                case (fun3)
                    3'b000: Alu_operation = 6'b011011;
                    3'b100: Alu_operation = 6'b011100;
                    3'b110: Alu_operation = 6'b011101;
                    3'b001: Alu_operation = 6'b011110;
                    3'b101: begin
                        if (fun7 == 1'b0)
                            Alu_operation = 6'b011111;
                        else
                            Alu_operation = 6'b100000;
                    end
                    3'b010: Alu_operation = 6'b100001;
                    3'b011: Alu_operation = 6'b100010;
                    default: Alu_operation = 6'b100011;
                endcase
            end

            default: begin
                case (opcode) // handle jal and jalr
                    7'b1101111: Alu_operation = 6'b100100; // jal
                    7'b1100111: Alu_operation = 6'b100101; // jalr
                    default: Alu_operation = 6'b000000; // Default case to ensure all paths are covered
                endcase
            end
        endcase
    end

