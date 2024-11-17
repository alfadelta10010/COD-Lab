module inst_exe(
    input logic[31:0] rs1_d,rs2_d,imm,logic[3:0]aluop,logic alusrc,branch,
    output logic bo,logic [31:0]alur
);

wire zero;
mux_21 g1(rs2_d,imm,alusrc,y);
alu g2(rs1_d,y,aluop,alur,zero);
andgate g3(branch,zero,bo);
endmodule