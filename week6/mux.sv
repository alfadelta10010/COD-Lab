module mux #(parameter N=32)(input logic [N-1:0] a,b, input logic s, output logic [N-1:0] y);
assign y= s?b:a ;
endmodule
