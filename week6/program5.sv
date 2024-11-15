// Write a SV program for Adder

module Adder #(parameter N = 32) (a, b, cin, cout,sum);
  input logic [N-1:0] a, b;
  input logic cin;
  output logic [N-1:0] sum;
  output logic cout;
  
  assign {cout, sum} = a + b + cin;		// bit swizlling
  								
endmodule