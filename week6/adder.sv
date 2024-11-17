// v)Write a SV program for Adder

module adder(input logic a,b,c, output logic sum,cout);

assign {cout,sum}= a+b+c;

endmodule