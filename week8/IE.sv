module IE #(parameter n=32) (rs1,rs2, immout, aluop,alusrc1,alusrc2,result,pc,pcselec,b_control);
	input logic [n-1:0] rs1;
	input logic [n-1:0] rs2;
	input logic [31:0] immout; //comes from sign extender
	input logic [3:0] aluop;
	input logic [n-1:0] pc;
	input logic alusrc1;
	input logic alusrc2;
	output logic [n-1:0] result;
	logic zero;
	input logic[2:0] b_control;
	output logic pcselec;
	logic [n-1:0] a,b;

	mux21 m1(.a(pc),.b(rs1),.s(alusrc1),.out(a));
	mux21 m2(.a(immout),.b(rs2),.s(alusrc2),.out(b));
	alu alu1(.inp1(a),.inp2(b),.aluop(aluop),.alu_out(result));
	branchcontroller b1(.b_control(b_control),.inp1(rs1),.inp2(rs2),.b_out(pcselec));

endmodule
