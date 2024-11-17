module syncff #(
	parameter WIDTH = 32
	)(
	output logic [WIDTH-1:0] dout,
	input logic [WIDTH-1:0] din,
	input logic rst, clk
	);
	always_ff@(posedge clk) begin
		if(rst) dout <= 'd0;
		else dout <= din;
   end
endmodule
