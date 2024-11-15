// Write a SV program for Control units

module Control_top(
input logic[6:0] opcode,
input logic clk,fun7,
input logic [2:0]fun3,
output logic branch,reg_write,Memtoreg,Mem_wr,Mem_rd,Alu_src,
output logic [4:0] Alu_operation
);
logic [2:0] Alu_op;

main_control mc(
.clk(clk),
.opcode(opcode),
.Alu_op(Alu_op),
.branch(branch),
.regWrite(reg_write),
.MemtoReg(Memtoreg),
.Mem_wr(Mem_wr),
.Mem_rd(Mem_rd),
.Alu_src(Alu_src)
);

Alu_control ac(
.Alu_op(Alu_op),
.Alu_operation(Alu_operation),
.fun3(fun3),
.fun7(fun7),
);
endmodule




module main_control(
    input logic clk,
    input logic [6:0] opcode, 
    output logic branch, regWrite, MemtoReg, Mem_wr, Mem_rd, Alu_src,
    output logic [1:0] Alu_op
);

always @(posedge clk) begin
    case (opcode)
        7'b0101111: begin // R-type
            branch <= 1'b0;
            regWrite <= 1'b1;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b0;
            Alu_op <= 2'b10;
        end
        7'b0010011: begin // I-type
            branch <= 1'b0;
            regWrite <= 1'b1;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b1;
            Alu_op <= 2'b11; // to decide which operation in I-type
        end
        7'b0000011: begin // Load
            branch <= 1'b0;
            regWrite <= 1'b1;
            MemtoReg <= 1'b1;
            Mem_rd <= 1'b1;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b1;
            Alu_op <= 2'b00;
        end
        7'b0100011: begin // Store
            branch <= 1'b0;
            regWrite <= 1'b0;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b1;
            Alu_src <= 1'b1;
            Alu_op <= 2'b00;
        end
        7'b1100011: begin // BEQ
            branch <= 1'b1;
            regWrite <= 1'b0;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b1;
            Alu_op <= 2'b01;
        end
        default: begin
            branch <= 1'b0;
            regWrite <= 1'b0;
            MemtoReg <= 1'b0;
            Mem_rd <= 1'b0;
            Mem_wr <= 1'b0;
            Alu_src <= 1'b0;
            Alu_op <= 2'b00;
        end
    endcase
end

endmodule



module Alu_control (
    input logic [2:0] fun3,
    input logic fun7,
    input logic [6:0] opcode,
    input logic [1:0] Alu_op,
    output logic [4:0] Alu_operation
);

    always_comb begin
        // Default assignment to avoid latches
        Alu_operation = 5'b00000;

        case ({Alu_op, opcode})
            9'b00_0000011: begin // load
                case (fun3)
                    3'b000: Alu_operation = 5'b00000;
                    3'b001: Alu_operation = 5'b00001;
                    3'b010: Alu_operation = 5'b00010;
                    3'b100: Alu_operation = 5'b00011;
                    3'b101: Alu_operation = 5'b00100;
                    default: Alu_operation = 5'b00000;
                endcase
            end

            9'b00_0100011: begin // store
                case (fun3)
                    3'b000: Alu_operation = 5'b00101;
                    3'b001: Alu_operation = 5'b00110;
                    3'b010: Alu_operation = 5'b00111;
                    default: Alu_operation = 5'b00000;
                endcase
            end

            9'b01_1100011: begin // branch
                case (fun3)
                    3'b000: Alu_operation = 5'b00000;
                    3'b001: Alu_operation = 5'b01000;
                    3'b100: Alu_operation = 5'b01001;
                    3'b101: Alu_operation = 5'b01010;
                    3'b110: Alu_operation = 5'b01011;
                    3'b111: Alu_operation = 5'b01100;
                    default: Alu_operation = 5'b00000;
                endcase
            end

            9'b10_0110011: begin // r-type
                if (fun3 == 3'b000 && fun7 == 1'b0)
                    Alu_operation = 5'b01101;
                else if (fun3 == 3'b000 && fun7 == 1'b1)
                    Alu_operation = 5'b01110;
                else if (fun3 == 3'b100 && fun7 == 1'b0)
                    Alu_operation = 5'b01111;
                else if (fun3 == 3'b110 && fun7 == 1'b0)
                    Alu_operation = 5'b10000;
                else if (fun3 == 3'b001 && fun7 == 1'b0)
                    Alu_operation = 5'b10001;
                else if (fun3 == 3'b101 && fun7 == 1'b0)
                    Alu_operation = 5'b10011;
                else if (fun3 == 3'b101 && fun7 == 1'b1)
                    Alu_operation = 5'b10100;
                else if (fun3 == 3'b010 && fun7 == 1'b0)
                    Alu_operation = 5'b10101;
                else if (fun3 == 3'b011 && fun7 == 1'b0)
                    Alu_operation = 5'b10110;
                else
                    Alu_operation = 5'b00000;
            end

            9'b11_0010011: begin // i-type
                case (fun3)
                    3'b000: Alu_operation = 5'b10111;
                    3'b100: Alu_operation = 5'b11000;
                    3'b110: Alu_operation = 5'b11010;
                    3'b001: Alu_operation = 5'b11011;
                    3'b101: begin
                        if (fun7 == 1'b0)
                            Alu_operation = 5'b11100;
                        else
                            Alu_operation = 5'b11101;
                    end
                    3'b010: Alu_operation = 5'b11110;
                    3'b011: Alu_operation = 5'b11111;
                    default: Alu_operation = 5'b00000;
                endcase
            end

            default: begin
                Alu_operation = 5'b00000; // Default case to ensure all paths are covered
            end
        endcase
    end

endmodule