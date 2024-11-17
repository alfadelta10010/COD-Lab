module add #(parameter N=32) (a,b,sum,cout,cin);
  input logic [N-1:0]a;
  input logic [N-1:0]b;
  input logic cin;
  output logic cout;
  output logic [N-1:0]sum;
  assign {cout,sum}=a+b+cin;
endmodule
