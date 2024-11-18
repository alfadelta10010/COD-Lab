module alu(out, rs1, alu_op, alu_out, zero);
    input logic [31:0] rs1;
    input logic [31:0] out;
    input logic [3:0] alu_op;
    output logic [31:0] alu_out;
    output logic zero;  // changed from `bit` to `logic`
    
    always @(*)
    begin
        case(alu_op)
            4'b0000: alu_out = rs1 & out;
            4'b0001: alu_out = rs1 | out;
            4'b0010: alu_out = rs1 + out;
            4'b0110: alu_out = rs1 - out;
            default: alu_out = 0;
        endcase
        
        zero = (alu_out == 0);  // set zero if alu_out is zero
    end
endmodule
