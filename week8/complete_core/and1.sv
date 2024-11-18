module and1#(parameter WIDTH = 1) (input [WIDTH-1:0] a, [WIDTH-1:0] b, output [WIDTH-1:0] c);
assign c = a & b;
endmodule

