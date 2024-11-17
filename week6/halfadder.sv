module halfadder #(parameter N=32)(input logic [N-1:0]a,b, output logic [N-1:0]sum, output logic cout);
assign {cout,sum}=a+b;
endmodule
