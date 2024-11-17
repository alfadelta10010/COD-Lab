module fulladder #(parameter N = 32)(input[N-1:0] a, b, c, output[N-1:0] sum, output cout);

assign {cout, sum} = a + b + c;

endmodule
