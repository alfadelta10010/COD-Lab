module IE #(parameter n=32) (rs1,rs2, imm12, aluop,alusrc1,alusrc2,result,pc,branch,pcselec,b_control)
	input logic [n-1:0] rs1;
	input logic [n-1:0] rs2;
	input logic [11:0] imm12;
	input logic [3:0] aluop;
	input logic [n-1:0] pc;
	input logic alusrc1;
	input logic alusrc2;
	output logic [n-1:0] result;
	logic zero;
	input logic branch;
	output logic pcselec;
	logic [n-1:0] a,b;

	mux21 m1(.a(pc),.b(rs1),.s(alusrc1),.out(a));
	mux21 m2(.a(imm12),.b(rs2),.s(alusrc2),.out(b));
	alu alu1(.inp1(a),.inp2(b),.aluop(aluop),.zero(zero),.aluout(result);
	branchcontroller b1(.b_control(b_control),.inp1(rs1),.inp2(rs2),.b_out(zero);
	and a1(.a(branch),.b(zero),.out(pcselec);

endmodule
