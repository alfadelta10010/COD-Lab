module ID #(parameter n=32)(clk,instr_id,rs1data_id,rs2data_id,immout_id,wr_data,regwrite,reset,fun7,fun3,opcode);
input logic clk,regwrite,reset;
input logic[n-1:0] instr_id;
input logic[n-1:0] wr_data;
output logic[n-1:0] rs1data_id;
output logic[n-1:0] rs2data_id;
output logic[n-1:0] immout_id;
logic[4:0] rs1add,rs2add,rdadd;
output logic[6:0] opcode;
output logic[6:0] fun7;
output logic[2:0] fun3;

decode d1(.instr(instr_id),.rd(rdadd),.rs1(rs1add),.rs2(rs2add),.opcode(opcode),.fun7(fun7),.fun3(fun3));
regfile r1(.clk(clk),.reset(reset),.regwrite(regwrite),.rs1add(rs1add),.rs2add(rs2add),.rdadd(rdadd),.wrdata(wr_data),.rs1dat(rs1data_id),.rs2dat(rs2data_id));
signext s1(.opcode(opcode),.instr(instr_id),.immout(immout_id));

endmodule
