`timescale 1ns / 1ps

module WB(MemtoReg,dataR,data,result);
input logic MemtoReg;
input logic [31:0] dataR,result;
output logic [31:0] data;

mux2_1 wb(.s(MemtoReg),.d0(result),.d1(dataR),.y(data));

endmodule