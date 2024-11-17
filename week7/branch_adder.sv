module branch_adder(pc_out, imm_new_shift, branch_imm);
    input logic [31:0] pc_out, imm_new_shift;
    output logic [31:0] branch_imm;
    assign branch_imm = imm_new_shift + pc_out;
endmodule
