module regfile(rs1_addr,rs2_addr,rd_addr,regwrite,wr_data,rs1_data,rs2_data,reset,clk);
input logic [31:0] rs1_addr;
input logic [31:0] rs2_addr;
input logic [31:0] rd_addr;
input logic[1:0] regwrite;
input logic [31:0] wr_data; 
input bit reset;
input logic clk;
output logic [31:0] rs1_data;
output logic [31:0] rs2_data;
logic [31:0] registerfile [31:0];
assign rs1_data=reset?0:registerfile[rs1_addr];
assign rs2_data =reset?0:registerfile[rs2_addr];

always_ff@(posedge clk)
begin
if(reset) 
registerfile[rd_addr]=32'b0;
else
begin
if(regwrite)
registerfile[rd_addr]=wr_data;
else
registerfile[rd_addr] =32'b0;
end
end
endmodule
