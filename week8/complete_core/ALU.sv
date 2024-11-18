module ALU(
    input logic [3:0] alu_op,
    input logic [31:0] rs1, rs2,
    output logic [31:0] rd1,
    output logic zf, eq, ne, lt, ltu, ge, geu
);
    logic signed [31:0] signed_rs1, signed_rs2;

    always_comb begin
        // Default values
        rd1 = 32'b0;
        zf = 1'b0;
        eq = 1'b0;
        ne = 1'b0;
        lt = 1'b0;
        ltu = 1'b0;
        ge = 1'b0;
        geu = 1'b0;
        
        signed_rs1 = $signed(rs1);
        signed_rs2 = $signed(rs2);

        // ALU Operations
        case(alu_op)
            4'b0000: rd1 = rs1 + rs2;            // ADD
            4'b0001: rd1 = rs1 << rs2[4:0];      // SLL
            4'b0010: rd1 = (signed_rs1 < signed_rs2) ? 32'h00000001 : 32'h00000000; // SLT
            4'b0011: rd1 = (rs1 < rs2) ? 32'h00000001 : 32'h00000000;               // SLTU
            4'b0100: rd1 = rs1 ^ rs2;            // XOR
            4'b0101: rd1 = rs1 >> rs2[4:0];      // SRL
            4'b0110: rd1 = rs1 | rs2;            // OR
            4'b0111: rd1 = rs1 & rs2;            // AND
            4'b1000: rd1 = rs1 - rs2;            // SUB
            4'b1101: rd1 = rs1 >>> rs2[4:0];     // SRA
            default: rd1 = 32'bX;                // Undefined operation
        endcase

        // Flag calculations
        zf = (rd1 == 32'b0);                    // Zero flag
        eq = (rs1 == rs2);                      // Equal flag
        ne = (rs1 != rs2);                      // Not Equal flag
        lt = (signed_rs1 < signed_rs2);         // Less Than (signed)
        ltu = (rs1 < rs2);                      // Less Than (unsigned)
        ge = (signed_rs1 >= signed_rs2);        // Greater Than or Equal (signed)
        geu = (rs1 >= rs2);                     // Greater Than or Equal (unsigned)
    end
endmodule
