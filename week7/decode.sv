module decode (instr,rs1,rs2,rd,opcode,func3,func7,imm);
input logic [31:0] instr;
output logic [4:0] rs1;
output logic [4:0] rs2;
output logic [4:0] rd;
output logic [6:0] opcode;
output logic [2:0] func3;
output logic [6:0] func7;
output logic[11:0] imm;
assign opcode= instr[6:0];
always @(*)
begin

case(opcode)

7'b0110011:
begin 
rd = instr[11:7];
func3 = instr[14:12];
rs1 = instr[19:15];
rs2 = instr[24:20];
func7 = instr[31:25];
end

7'b0010011|7'b0000011:
begin
rd = instr[11:7];
func3 = instr[14:12];
rs1 = instr[19:15];
imm=instr[31:20];
end

7'b0100011:
begin
func3=instr[14:12];
rs1 = instr[19:15];
rs2 = instr[24:20];
imm={instr[31:25],instr[11:7]};
end

7'b1100011:
begin
func3=instr[14:12];
rs1 = instr[19:15];
rs2 = instr[24:20];
imm={instr[31],instr[7],instr[30:25],instr[11:8]};
end

endcase
end endmodule
