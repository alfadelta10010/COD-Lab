module add #(parameter N=32) (a,b,sum,cout);
  input logic [N-1:0]a;
  input logic [N-1:0]b;
  output logic cout;
  output logic [N-1:0]sum;
  assign {sum}=a+b;
endmodule

