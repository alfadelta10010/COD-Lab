module IF_adder #(parameter N=32)(
input logic[31:0] a,b,
output logic [N-1:0] sum,
input logic cin,
output logic cout
);

assign {cout,sum}= a+b+cin;

endmodule
