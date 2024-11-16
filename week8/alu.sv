`timescale 1ns / 1ps


module alu (
    input logic [31:0] rs1_data,         
    input logic [31:0] alu_input2,       
    input logic [3:0] aluop,            
    output logic [31:0] aluresult,       
    output logic zero                    
);

    always_comb 
    begin
        case (aluop)
            4'b0000: begin // (I-type ADD or Load/Store)
                aluresult = rs1_data + alu_input2;  // ADD operation
            end
            
            4'b0001: begin // SUBTRACT (for Branch operations)
                aluresult = rs1_data - alu_input2;  // SUB operation
            end
            
            4'b0010: begin // AND operation (Logical AND)
                aluresult = rs1_data & alu_input2;  // AND operation
            end
            
            4'b0011: begin // OR operation (Logical OR)
                aluresult = rs1_data | alu_input2;  // OR operation
            end
            
            4'b0100: begin // XOR operation (Logical XOR)
                aluresult = rs1_data ^ alu_input2;  // XOR operation
            end

            4'b0101: begin // SLL (Shift Left Logical)
                aluresult = rs1_data << alu_input2[4:0];  // Logical shift left (only use lower 5 bits of the immediate)
            end

            4'b0110: begin // SRL (Shift Right Logical)
                aluresult = rs1_data >> alu_input2[4:0];  // Logical shift right (only use lower 5 bits of the immediate)
            end

           
            4'b1010: begin // NOT operation (Logical NOT)
                aluresult = ~rs1_data;  // NOT operation (inverts all bits of rs1_data)
            end

            4'b1011: begin // ADDI (Addition with immediate)
                aluresult = rs1_data + alu_input2;  // Same as ADD
            end

            4'b1100: begin // SUBI (Subtraction with immediate)
                aluresult = rs1_data - alu_input2;  // Same as SUB
            end
        endcase

        //  flag is set to 1 if ALU result is zero.
        zero = (aluresult == 32'b0) ? 1 : 0;
    end
endmodule
