module mux21 #(parameter N=32)(a,b,control,y);
input logic [N-1:0]a,b;
output logic [N-1:0]y;
input logic control;
assign y = ((a&~control)|(b&control));
endmodule
