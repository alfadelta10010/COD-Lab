module imm_generator(input logic [11:0]imm,
input logic [6:0]opcode,
output logic [31:0]imm_out);

always_comb
begin
case(opcode)
7'b1100011:
imm_out = {{19{imm[12]}},imm,1'b0};
7'b1101111:
imm_out = {{19{imm[12]}},imm,1'b0};
default:
imm_out = {{20{imm[11]}},imm};
endcase
end
endmodule


