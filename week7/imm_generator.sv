module imm_generator(imm_input,imm_output,opcode,imm_input_uj);
input logic [11:0]imm_input;
input logic [6:0]opcode;
output logic [31:0]imm_output;
input logic [19:0]imm_input_uj;

always_comb
begin
case(opcode)
7'b1100011: //B-Type
imm_output = {{20{imm_input[11]}},imm_input}<<1;
7'b1101111: //J-Type
imm_output = {{12{imm_input_uj[19]}},imm_input}<<1;
7'b0110111: //U-Type
imm_output = {{imm_input<<1},12'b0};
default:
imm_output = {{20{imm_input[11]}},imm_input};
endcase
end
endmodule
