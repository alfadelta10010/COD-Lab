module instruction_decode #(
    parameter INSTR_WIDTH = 32,
    parameter REG_ADDR_WIDTH = 5,
    parameter IMM_WIDTH = 12
) (
    input  logic                    clk,           // Clock signal
    input  logic                    reset,         // Reset signal
    input  logic [INSTR_WIDTH-1:0]  instruction,   // Input instruction
    output logic [REG_ADDR_WIDTH-1:0] rs1,         // Source register 1 address
    output logic [REG_ADDR_WIDTH-1:0] rs2,         // Source register 2 address
    output logic [REG_ADDR_WIDTH-1:0] rd,          // Destination register address
    output logic [IMM_WIDTH-1:0]      imm,         // Immediate value
    output logic [6:0]                opcode,      // Opcode
    output logic                     branch,       // Branch control signal
    output logic                     mem_read,     // Memory read signal
    output logic                     mem_write,    // Memory write signal
    output logic                     reg_write,    // Register write signal
    output logic                     alu_op        // ALU operation control
);

    // Instruction fields decoding
    always_comb begin
        opcode = instruction[6:0];                 // Opcode field
        rd     = instruction[11:7];               // Destination register
        rs1    = instruction[19:15];              // Source register 1
        rs2    = instruction[24:20];              // Source register 2
        imm    = instruction[31:20];              // Immediate value (I-type)
    end

    // Control signal generation
    always_comb begin
        // Default values
        branch    = 1'b0;
        mem_read  = 1'b0;
        mem_write = 1'b0;
        reg_write = 1'b0;
        alu_op    = 1'b0;

        case (opcode)
            7'b0110011: begin // R-type
                reg_write = 1'b1;
                alu_op    = 1'b1;
            end
            7'b0000011: begin // Load (I-type)
                reg_write = 1'b1;
                mem_read  = 1'b1;
            end
            7'b0100011: begin // Store (S-type)
                mem_write = 1'b1;
            end
            7'b1100011: begin // Branch (B-type)
                branch = 1'b1;
            end
            default: begin
                // Default case for unsupported instructions
                branch    = 1'b0;
                mem_read  = 1'b0;
                mem_write = 1'b0;
                reg_write = 1'b0;
                alu_op    = 1'b0;
            end
        endcase
    end

endmodule
