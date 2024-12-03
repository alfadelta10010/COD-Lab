module adder_if#(parameter WIDTH = 32) (input [WIDTH-1:0] a, output [WIDTH-1:0] sum);
assign sum = a+32'd4;
endmodule
