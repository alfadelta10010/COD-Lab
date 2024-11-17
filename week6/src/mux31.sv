module mux31 #(
	parameter WIDTH = 32
	)(
	output logic [WIDTH-1:0] out,
	input logic [1:0] sel,
	input logic [WIDTH-1:0] d0,
	input logic [WIDTH-1:0] d1,
	input logic [WIDTH-1:0] d2
	);
	always_comb begin
	   case(sel)
	   2'b00: out = d0;
	   2'b01: out = d1;
	   2'b10: out = d2;
	   default: out = 'd0;
	   endcase
   end
endmodule
