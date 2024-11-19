module instr_execute(
    input logic [31:0] reg1,reg2,
    input logic [31:0] pc_present,
    input logic [31:0] imm_o,
    input logic [3:0] alu_op,
    input logic [2:0] branch_control,
    input logic alu_src_1, alu_src_2,
    output logic [31:0] result,
    output logic branch_sel
    );
    
    logic [31:0] opr1,opr2;
    
    mux21 mux2(.in1(pc_present), .in2(reg1), .select(alu_src_1), .y(opr1));
    mux21 mux3(.in1(imm_o), .in2(reg2), .select(alu_src_2), .y(opr2)); 
    ALU alu1(.opr1(opr1), .opr2(opr2), .result(result), .alu_control(alu_op));
    branch_control brcon1(.branch_control(branch_control), .rs1(reg1), .rs2(reg2), .branch_sel(branch_sel));
endmodule