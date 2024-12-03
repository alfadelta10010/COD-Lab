module mux #(
	parameter WIDTH = 32
	)(
	output logic [WIDTH-1:0] out,
	input logic sel,
	input logic [WIDTH-1:0] d0,
	input logic [WIDTH-1:0] d1
	);
	always_comb begin
	   case(sel)
	   1'b0: out = d0;
	   1'b1: out = d1;
	   endcase
   end
endmodule
/*
module mux #(
	parameter N_SEL = 1, WIDTH = 32
	)(
	output logic [WIDTH-1:0] out,
	input logic [N_SEL-1:0] sel,
	input logic [WIDTH-1:0] d_in [2^N_SEL-1:0]
	);

	always_comb begin
		out = d_in[sel];
	end
endmodule
*/
