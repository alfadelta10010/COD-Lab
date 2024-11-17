module topdecode(in32,reg1,reg2,f3,f7,immf,opcode,ws,wen);
input logic [31:0]in32;
input logic wen;
input logic [31:0]ws;
output logic [31:0]reg1,reg2;
output logic [31:0]immf;
output logic [6:0]opcode;
output logic [2:0]f3;
output logic [6:0]f7;

logic [4:0]r1,r2,rd;
dec decoder(in32,r1,r2,rd,opcode,f3,f7);
sign_ext sign(opcode,in32,immf);
register regstr(r1,r2,rd,ws,wen,reg1,reg2);
endmodule
