module decode_block#(parameter N=32)(input logic [N-1:0]instr,
output logic [6:0]opcode,
output logic [4:0]rs1,rs2,rd,
output logic [2:0] fn3,
output logic [6:0] fn7,
output logic [11:0]imm);

always_comb
begin
rd = 0;
fn3 = 0;
rs1 = 0;
rs2 = 0;
fn7 = 0;
imm = 0;
opcode = instr[6:0];
case(opcode)
    7'b0110011:
    begin
        rd = instr[11:7];
        fn3 = instr[14:12];
        rs1 = instr[19:15];
        rs2 = instr[24:20];
        fn7 = instr[31:25];
        
    end
    7'b0010011:
    begin
        rd = instr[11:7];
        fn3 = instr[14:12];
        rs1 = instr[19:15];
        imm = instr[31:20];
    end
    7'b0000011:
    begin 
        rd = instr[11:7];
        fn3 = instr[14:12];
        rs1 = instr[19:15];
        imm = instr[31:20];
    end
    7'b0100011:
    begin
        fn3 = instr[14:12];
        rs1 = instr[19:15];
        rs2 = instr[24:20];
        imm = {instr[11:5],instr[5:0]};
    end
    7'b1100011:
    begin
        fn3= instr[14:12];
        rs1 = instr[19:15];
        rs2 = instr[24:20];
        imm = {instr[31],instr[7],instr[30:25],instr[11:8]};
    end
endcase
end
endmodule


