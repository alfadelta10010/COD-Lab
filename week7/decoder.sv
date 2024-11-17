module decoder( 
input logic [31:0] inst,
output logic [4:0]rs1,rs2,rd, 
output logic [6:0] func7,opcode,
output logic [2:0] func3,
output logic [12:0] imm);
always@(*) begin
opcode= inst[6:0];

case(opcode)
7'b0110011: begin //rtype
rd=inst[11:7];
rs1=inst[19:15];
rs2=inst[24:20];
func3=inst[14:12];
func7=inst[31:25];
end
7'b0010011: begin //itype
rd=inst[11:7];
rs1=inst[19:15];
func3=inst[14:12];
imm=inst[31:20];
end
7'b0000011: begin//Ltype
rd=inst[11:7];
rs1=inst[19:15];
func3=inst[14:12];
imm=inst[31:20];
end
7'b0100011: begin //stype
rs1=inst[19:15];
rs2=inst[24:20];
func3=inst[14:12];
imm={inst[31:25],inst[11:7]};
end
7'b1100011:begin //btype
rs1=inst[19:15];
rs2=inst[24:20];
func3=inst[14:12];
imm={inst[31],inst[30:25],inst[11:8],inst[7],1'b0};
end
endcase
end
endmodule