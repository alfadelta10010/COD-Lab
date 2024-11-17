module signExtension#(parameter N=32,M=12)
(
    input logic [M-1:0] imm12,
    output logic [N-1:0] imm32  );
    assign imm32={{20{imm12[11]}},imm12};
endmodule
