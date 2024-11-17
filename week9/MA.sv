module MA(clk,reg2,result, MemRead, MemWrite,dataR,zero,Branch,b_sel);
input bit clk;
input logic [31:0] reg2,result;
input logic  MemRead, MemWrite;
output logic [31:0] dataR;
input logic zero,Branch;
output logic b_sel;
DataMem mem(.clk(clk),.dataW(reg2),.addr(result),.memR(MemRead),.memW(MemWrite),.dataR(dataR));
AND_gate anding(.a(Branch),.b(zero),.y(b_sel));
endmodule
