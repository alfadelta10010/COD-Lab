module main_control (opcode,branch,memread,memtoreg,aluop,memwrite,alusrc,regwrite);
input logic [6:0]opcode;
output logic branch,memread,memwrite,alusrc,regwrite;
output logic [2:0]aluop;
output logic [1:0]memtoreg;

always@(*)
begin
branch = 0;
memread = 0;
memtoreg = 0;
memwrite = 0;
alusrc = 0;
regwrite = 0;
aluop = 0;


case(opcode)
7'b0110011: // R-type
begin
branch = 0;
memread = 0;
memtoreg = 2'b00;
memwrite = 0;
alusrc = 0;
regwrite = 1;
aluop = 3'b000;
end

7'b0010011: // I-type
begin 
branch = 0;
memread = 0;
memtoreg = 2'b00;
memwrite = 0;
alusrc = 1;
regwrite = 1;
aluop = 3'b001;
end

7'b0000011: //load
begin
branch = 0;
memread = 1;
memtoreg = 2'b00;
memwrite = 0;
alusrc = 1;
regwrite = 1;
aluop = 3'b010;
end

7'b0100011: // store
begin
branch = 0;
memread = 0;
memtoreg = 2'b01;
memwrite = 1;
alusrc = 1;
regwrite = 0;
aluop = 3'b011;
end

7'b1100011: //branch
begin
branch = 1;
memread = 0;
memtoreg = 2'b0;
memwrite = 0;
alusrc = 0;
regwrite = 0;
aluop = 3'b100;
end

7'b1101111: //jal
begin
branch = 0;
memread = 0;
memtoreg = 2'b10;
memwrite = 0;
alusrc = 1;
regwrite = 1;
aluop = 3'b101;
end

7'b0110111: //U-type
begin
branch = 0;
memread = 0;
memtoreg = 2'b10;
memwrite = 0;
alusrc = 1;
regwrite = 1;
aluop = 3'b110;
end
endcase
end
endmodule
