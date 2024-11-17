module sync_flop #(parameter N=32)(clk,d,q,rst);
		input logic clk;
		input logic rst;
		input logic [N-1:0] d;
		output logic [N-1:0] q;
		always_ff@(posedge clk)
		begin 
			if (rst)
				q<=32'h00000000;
			else 
			q<=d;
		end
		endmodule