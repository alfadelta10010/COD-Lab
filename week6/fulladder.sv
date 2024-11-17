module fulladder #(parameter N=32)(a,b,cin,cout,sum);
input logic [N-1:0] a,b;
output logic [N-1:0] sum;
input logic cin;
output logic cout;
assign {cout,sum}=a+b+cin;
endmodule