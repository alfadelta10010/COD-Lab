module sign_extension(
  input logic [11:0] imm,
  output logic [31:0] imm_extended
);

  assign imm_extended = imm[11] ? {20'b11111111111111111111, imm} : {20'b0, imm};

endmodule
