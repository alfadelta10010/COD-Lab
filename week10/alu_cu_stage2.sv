module alu_cu (
    input logic [1:0] alu_op,         // ALU operation type from main control unit
    input logic [2:0] funct3,         // 3-bit funct3 field from instruction
    input logic funct7,               // 1-bit funct7 field (only the most significant bit is used for SUB)
    output logic [3:0] alu_control    // ALU control signal to specify ALU operation
);

    always_comb begin
        case (alu_op)
            2'b00: alu_control = 4'b0010; // Load/Store - ALU performs addition
            2'b01: alu_control = 4'b0110; // Branch - ALU performs subtraction (for comparison)
            2'b10: begin // R-type instructions - Use funct fields
                case ({funct7, funct3})
                    4'b0000: alu_control = 4'b0010; // ADD
                    4'b1000: alu_control = 4'b0110; // SUB
                    4'b0111: alu_control = 4'b0000; // AND
                    4'b0110: alu_control = 4'b0001; // OR
                    default: alu_control = 4'bxxxx; // Undefined operation
                endcase
            end
            default: alu_control = 4'bxxxx; // Undefined ALU operation
        endcase
    end

endmodule