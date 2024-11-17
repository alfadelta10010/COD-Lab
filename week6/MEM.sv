module MEM #(parameter W=32, L=1024) (addr,instr,reset);

input logic reset;
input logic [W-1:0] addr;
output logic [W-1:0] instr;
logic [W-1:0] mem [0:L-1];

assign instr=reset?0:mem[addr];

endmodule