module sign_extension(
    input  logic[11:0] iti,            // I-Type immediate (12 bits)
    input  logic[11:0] sti,            // S-Type immediate (12 bits)
    input  logic[11:0] bti,            // B-Type immediate (12 bits)
    input  logic[19:0] uti,            // U-Type immediate (20 bits)
    input  logic[19:0] jti,            // J-Type immediate (20 bits)
    input  logic[6:0]  opcode,         // Opcode to determine instruction format
    output logic[31:0] eimm            // Single 32-bit extended immediate output
);
    always_comb begin
        case (opcode)
            7'b0010011: 
                eimm = {{20{iti[11]}}, iti}; 
            7'b0100011: 
                eimm = {{20{sti[11]}}, sti}; 
            7'b1100011: 
                eimm = {{19{bti[11]}}, bti, 1'b0}; 
            7'b0110111, 7'b0010111: 
                eimm = {uti, 12'b0}; 
            7'b1101111: 
                eimm = {{11{jti[19]}}, jti, 1'b0}; 
            default:
                eimm = 32'b0; 
        endcase
    end
endmodule
