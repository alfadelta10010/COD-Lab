module IE2 (
    input logic [31:0] rs1,
    input logic [31:0] rs2,
    input logic [31:0] immfinal,
    input logic alu_src,
    input logic [3:0] alu_op,
    input logic branch,
    output logic [31:0] alu_out,
    output logic and_out
);

    logic [31:0] out;
    logic zero;

    mux21 mux_inst(.rs2(rs2), .immfinal(immfinal), .alu_src(alu_src), .out(out));
    alu alu_inst(.out(out), .rs1(rs1), .alu_op(alu_op), .alu_out(alu_out), .zero(zero));
    andgate andgate_inst(.zero(zero), .branch(branch), .and_out(and_out));
endmodule
