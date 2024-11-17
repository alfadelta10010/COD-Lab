module Excecution(
    input logic [31:0] rs1_d,rs2_d,
    input logic[31:0] imm, input logic[3:0]aluop,
    input logic alusrc,branch,output logic bo, logic[31:0]alur
    );
    wire zero;
    MUX g1(rs2_d,imm,alusrc,y);
    ALU g2(.d1(rs1_d),.d2(y),.alu_op(aluop),.alur(alur),.zero(zero));
    andg g3(branch,zero,bo);
endmodule
