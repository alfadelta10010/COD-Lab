module shift_left#(parameter WIDTH = 32) (input [WIDTH-1:0] a, output [WIDTH-1:0] c);
assign c = a << 1;
endmodule

