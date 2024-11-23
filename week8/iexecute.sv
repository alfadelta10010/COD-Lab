module iexecute(rs1_data,rs2_data,imm,branch,alures,out,alusrc,aluop,andout);
input bit branch;
input logic[31:0] rs1_data;
input logic [31:0] rs2_data;
input logic [31:0] imm;
input logic [31:0] alusrc;
input logic [3:0] aluop;
output logic[31:0] alures;
output logic[31:0] out;
output bit andout;
bit zero;

exmux ex_mux1(.rs2_data(rs2_data),.imm(imm),.alusrc(alusrc),.out(out));
alu alu1(.out(out),.rs1_data(rs1_data),.alures(alures),.aluop(aluop));
and_2 a2(.a(zero),.b(branch),.out(andout));
endmodule
