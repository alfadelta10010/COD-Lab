module control_unit(
    input  logic [6:0] opcode,         // 7-bit opcode from instruction
    output logic reg_write,           // Register write enable
    output logic mem_read,            // Memory read enable
    output logic mem_write,           // Memory write enable
    output logic branch,              // Branch signal
    output logic alu_src,             // ALU source select (1 for immediate, 0 for register)
    output logic [1:0] alu_op         // ALU operation control
);

    // Define opcode values for RISC-V instructions
    parameter [6:0] R_TYPE = 7'b0110011;  // R-type (e.g., add, sub)
    parameter [6:0] I_TYPE = 7'b0010011;  // I-type (e.g., addi)
    parameter [6:0] LOAD   = 7'b0000011;  // Load (e.g., lw)
    parameter [6:0] STORE  = 7'b0100011;  // Store (e.g., sw)
    parameter [6:0] BRANCH = 7'b1100011;  // Branch (e.g., beq)

    // Generate control signals based on opcode
    always_comb begin
        // Default values for control signals
        reg_write = 0;
        mem_read  = 0;
        mem_write = 0;
        branch    = 0;
        alu_src   = 0;
        alu_op    = 2'b00;

        case (opcode)
            R_TYPE: begin
                reg_write = 1;       // Write to register file
                alu_src   = 0;       // ALU operand comes from register
                alu_op    = 2'b10;   // ALU control for R-type
            end
            I_TYPE: begin
                reg_write = 1;       // Write to register file
                alu_src   = 1;       // ALU operand comes from immediate
                alu_op    = 2'b00;   // ALU control for I-type
            end
            LOAD: begin
                reg_write = 1;       // Write loaded data to register file
                mem_read  = 1;       // Enable memory read
                alu_src   = 1;       // ALU computes address using immediate
                alu_op    = 2'b00;   // ALU control for address calculation
            end
            STORE: begin
                mem_write = 1;       // Enable memory write
                alu_src   = 1;       // ALU computes address using immediate
                alu_op    = 2'b00;   // ALU control for address calculation
            end
            BRANCH: begin
                branch    = 1;       // Enable branching
                alu_src   = 0;       // ALU operands come from registers
                alu_op    = 2'b01;   // ALU control for branch comparison
            end
            default: begin
                // Default values remain inactive
            end
        endcase
    end

endmodule
