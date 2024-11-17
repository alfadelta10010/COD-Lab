module reg_file( rs1_add,rs2_add,rd_add,Reg_Write,wr_data, rs1_data, rs2_data,clk);
input logic [4:0] rs1_add,rs2_add,rd_add;
output logic[31:0] rs1_data,rs2_data;
input logic[31:0] wr_data;
input logic Reg_Write, clk;

logic[31:0] register[31:0];//The line logic [31:0] register[31:0]; declares an array named registerfile consisting of 32 elements. Each element is a 32-bit vector, making the entire array a 32x32 bit storage.


always@(posedge clk) begin
if(Reg_Write & (register[rd_add]!=0)) begin
   register[rd_add]<=wr_data;
	end
end





always_comb begin
    rs1_data = register[rs1_add];
    rs2_data = register[rs2_add];
end




endmodule
