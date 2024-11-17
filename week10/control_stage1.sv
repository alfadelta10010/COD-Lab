module control_unit(
    input logic [6:0] opcode,     // 7-bit opcode from the instruction
    output logic reg_write,       // Register write enable
    output logic alu_src,         // ALU source selector
    output logic mem_read,        // Memory read enable
    output logic mem_write,       // Memory write enable
    output logic branch,          // Branch enable
    output logic [1:0] alu_op ,    // ALU operation type
    output logic mem_to_reg
    
);

    always_comb begin
        // Default control signals
        reg_write = 0;
        alu_src   = 0;
        mem_read  = 0;
        mem_write = 0;
        branch    = 0;
        alu_op    = 2'b00;
        mem_to_reg=0;

        case (opcode)
            7'b0110011: begin // R-type instructions (e.g., ADD, SUB, AND, OR)
                reg_write = 1;
                alu_src   = 0;
                alu_op    = 2'b10;
                 mem_to_reg=0; // ALU operation for R-type
            end
            7'b0000011: begin // Load instructions (e.g., LB, LW)
                reg_write = 1;
                alu_src   = 1;
                mem_read  = 1;
                alu_op    = 2'b00;
                 mem_to_reg=1;
            end
            7'b0100011: begin // Store instructions (e.g., SB, SW)
                alu_src   = 1;
                mem_write = 1;
                alu_op    = 2'b00;
                 mem_to_reg=0;
            end
            7'b1100011: begin // Branch instructions (e.g., BEQ, BNE)
                branch    = 1;
                alu_op    = 2'b01;
                 mem_to_reg=0; // Branch operation
            end
            default: begin
                // Default case for unsupported opcodes
                reg_write = 0;
                alu_src   = 0;
                mem_read  = 0;
                mem_write = 0;
                branch    = 0;
                alu_op    = 2'b00;
                 mem_to_reg=0;
            end
        endcase
    end

endmodule