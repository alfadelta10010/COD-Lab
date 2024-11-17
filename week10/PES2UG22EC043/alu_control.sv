module alu_control(input logic[6:0] opcode, 
                   input logic[2:0] fn3, 
                   /*input logic[6:0] fn7,*/
                   input logic imm10,
                   output logic[4:0] alu_op
    );
    
    always_comb begin
        case(opcode)
            // R and I
             7'b0110011, 7'b0010011: begin
                case(fn3)
                    3'b000: begin
                            case(imm10)
                                0: alu_op = 5'b00000; // add
                                1: alu_op = 5'b00001; // sub
                            endcase
                            end
                            
                    3'b001: begin
                            alu_op = 5'b00101; // sll
                            end
                            
                    3'b010: begin
                            alu_op = 5'b01000; // slt
                            end
                            
                    3'b011: begin
                            alu_op = 5'b01001; // sltu
                            end
                            
                    3'b100: begin
                            alu_op = 5'b00010; // xor
                            end
                            
                    3'b101: begin
                            case(imm10)
                                0: alu_op = 5'b00110; // srl
                                1: alu_op = 5'b00111; // sra
                            endcase
                            end
                            
                    3'b110: begin
                            alu_op = 5'b00011; // or
                            end
                            
                    3'b111: begin
                            alu_op = 5'b00100; // and
                            end
                endcase
            end
            
            // L and S
            7'b0000011, 7'b0100011: alu_op = 5'b00000; //add
            
            // Branch
			7'b1100011: begin
                        case(fn3)
                            3'b000: alu_op = 5'b01010;
                            3'b001: alu_op = 5'b01011;
                            3'b100: alu_op = 5'b01100;
                            3'b101: alu_op = 5'b01101;
                            3'b110: alu_op = 5'b01110;
                            3'b111: alu_op = 5'b01111;
                        endcase
                        end
            // J
            7'b1101111: alu_op = 5'b10000;
            
            // JALR
            7'b1100111: alu_op = 5'b10001;
            
            // LUI
            7'b0110111: alu_op = 5'b10010;
            
            // AUIPC
            7'b0010111: alu_op = 5'b10011;
        endcase
    end
endmodule

