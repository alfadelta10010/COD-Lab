module execution #(parameter n =32)(
input logic [n-1:0] rs1_data,
input logic [n-1:0] rs2_data,
input logic [n-1:0] imm,
input logic branch,
input logic alu_src,
input logic [2:0] alu_op,
output logic [n-1:0] result,
output logic jump 
);
logic [n-1:0] rs2;
logic zero;
mux2 src(.a(rs2_data),.b(imm),.sel(alu_src),.out(rs2));
alu a1(.a(rs1_data),.b(rs2),.alu_op(alu_op),.zero(zero),.result(result));
assign jump= zero & branch;
endmodule
