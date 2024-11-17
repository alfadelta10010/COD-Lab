module signext (
    input  logic [11:0] imm,   
    output logic [31:0] imm_ext   
);

    
    assign imm_ext = {{20{imm[11]}}, imm};

endmodule
