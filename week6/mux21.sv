module mux21 #(parameter N = 32) (a, b, s, y);
  input logic [N-1:0] a, b;
  output logic [N-1:0] y;
  input logic s;
  
assign y = (s ? b : a);
endmodule