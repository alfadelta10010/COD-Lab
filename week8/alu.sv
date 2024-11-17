module alu(aluop, mux_out, rs1_out, alu_out, zero);
input logic[31:0] mux_out;
input logic[31:0] rs1_out;
input logic[3:0] aluop;
output logic[31:0] alu_out;
output logic zero;

always @(*) 
begin
alu_out = 32'b0;
case(aluop)

4'b0000: alu_out = (rs1_out & mux_out);

4'b0001: alu_out = (rs1_out | mux_out);

4'b0010: alu_out = (rs1_out + mux_out);

4'b0110: alu_out = (rs1_out - mux_out);

default: alu_out = 32'b0;
endcase

zero = alu_out[31];
end
endmodule