 Write a SV program for Instruction Execute Stage

module instruction_execution (
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


Write a SV program for the ALU
module alu(out, rs1, alu_op, alu_out, zero);
    input logic [31:0] rs1;
    input logic [31:0] out;
    input logic [3:0] alu_op;
    output logic [31:0] alu_out;
    output logic zero;  // changed from `bit` to `logic`

    always @(*)
    begin
        case(alu_op)
            4'b0000: alu_out = rs1 & out;
            4'b0001: alu_out = rs1 | out;
            4'b0010: alu_out = rs1 + out;
            4'b0110: alu_out = rs1 - out;
            default: alu_out = 0;
        endcase

        zero = (alu_out == 0);  // set zero if alu_out is zero
    end
endmodule