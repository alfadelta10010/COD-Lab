module adder_ma#(parameter WIDTH = 32) (input [WIDTH-1:0] a,[WIDTH-1:0] b, output [WIDTH-1:0] sum);
assign sum = a+b;
endmodule
