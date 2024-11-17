module mux2_1(input logic [31:0] d0, d1, input s, output [31:0] y);
assign y= s?d1:d0;
endmodule

