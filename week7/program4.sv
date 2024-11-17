module sign_extn(imm, imm_exd);

input logic[11:0] imm;
output logic[31:0] imm_exd;

assign imm_exd=  imm[11] ? {20'b11111111111111111111,imm} : {20'b0,imm};

endmodule//
