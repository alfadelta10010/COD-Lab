module regis_if( input logic [31:0] din, input clk, rst, output logic [31:0] q);
always_ff @(posedge clk) begin
 	if(rst) begin
		q <= 32'b0;
	end
	else begin
		q<=din;
	end
end
endmodule
