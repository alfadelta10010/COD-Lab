module sync_FF #(parameter w=1)(input logic clk, rst, input logic[w-1:0] d, output logic[w-1:0] q);
always_ff@(posedge clk or posedge rst) begin
if (rst) q <= {w{1'b0}};
else q<=d;
end
endmodule
