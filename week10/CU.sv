module CU (
    input logic [6:0] opcode,        // Opcode from instruction
    output logic reg_write,          // Register write signal
    output logic mem_read,           // Memory read signal
    output logic mem_write,          // Memory write signal
    output logic branch,             // Branch control signal
    output logic alu_src,            // ALU source selection
    output logic [1:0] alu_op        // ALU operation code
);

    always_comb begin
        case (opcode)
            7'b0110011: begin // R-Type
                reg_write = 1;
                mem_read = 0;
                mem_write = 0;
                branch = 0;
                alu_src = 0;
                alu_op = 2'b10;
            end
            7'b0000011: begin // Load
                reg_write = 1;
                mem_read = 1;
                mem_write = 0;
                branch = 0;
                alu_src = 1;
                alu_op = 2'b00;
            end
            7'b0100011: begin // Store
                reg_write = 0;
                mem_read = 0;
                mem_write = 1;
                branch = 0;
                alu_src = 1;
                alu_op = 2'b00;
            end
            7'b1100011: begin // Branch
                reg_write = 0;
                mem_read = 0;
                mem_write = 0;
                branch = 1;
                alu_src = 0;
                alu_op = 2'b01;
            end
            default: begin // Default
                reg_write = 0;
                mem_read = 0;
                mem_write = 0;
                branch = 0;
                alu_src = 0;
                alu_op = 2'b11; // Invalid
            end
        endcase
    end
endmodule
