module immediate_unit #(
    parameter INSTR_WIDTH = 32,
    parameter IMM_WIDTH = 32
) (
    input  logic [INSTR_WIDTH-1:0] instruction,  // Input instruction
    input  logic [2:0]             imm_type,     // Immediate type selector
                                              // 3'b000: I-type
                                              // 3'b001: S-type
                                              // 3'b010: B-type
                                              // 3'b011: U-type
                                              // 3'b100: J-type
    output logic [IMM_WIDTH-1:0]   imm_out       // Sign-extended immediate value
);

    // Internal signals
    logic [IMM_WIDTH-1:0] imm_i;  // Immediate for I-type
    logic [IMM_WIDTH-1:0] imm_s;  // Immediate for S-type
    logic [IMM_WIDTH-1:0] imm_b;  // Immediate for B-type
    logic [IMM_WIDTH-1:0] imm_u;  // Immediate for U-type
    logic [IMM_WIDTH-1:0] imm_j;  // Immediate for J-type

    // I-type: 12-bit immediate (bits 31:20)
    always_comb begin
        imm_i = {{20{instruction[31]}}, instruction[31:20]};
    end

    // S-type: 12-bit immediate (bits 31:25 | 11:7)
    always_comb begin
        imm_s = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
    end

    // B-type: 13-bit immediate (bits 31 | 7 | 30:25 | 11:8)
    always_comb begin
        imm_b = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
    end

    // U-type: 20-bit immediate (bits 31:12)
    always_comb begin
        imm_u = {instruction[31:12], 12'b0};
    end

    // J-type: 21-bit immediate (bits 31 | 19:12 | 20 | 30:21)
    always_comb begin
        imm_j = {{11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
    end

    // Select the appropriate immediate value based on `imm_type`
    always_comb begin
        case (imm_type)
            3'b000: imm_out = imm_i;  // I-type
            3'b001: imm_out = imm_s;  // S-type
            3'b010: imm_out = imm_b;  // B-type
            3'b011: imm_out = imm_u;  // U-type
            3'b100: imm_out = imm_j;  // J-type
            default: imm_out = {IMM_WIDTH{1'b0}}; // Default: zero immediate
        endcase
    end

endmodule
