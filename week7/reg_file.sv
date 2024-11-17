module reg_file(rs1_addr,rs2_addr,rd_addr,reg_write,wb_data,reset,rs1_data,rs2_data,clk);
input logic [4:0]rs1_addr,rs2_addr,rd_addr;
input logic reset,reg_write,clk;
input logic [31:0]wb_data;
output logic [31:0]rs1_data,rs2_data;

reg [31:0]register[31:0];

initial begin
for (int i=0;i<32;i++)
begin
register[i] = 32'b0;
end
end

always_ff@(posedge clk or posedge reset)
begin

if(reset)
begin
register[0] <= 32'b0;
register[1] <= 32'b0;
register[2] <= 32'b0;
register[3] <= 32'b0;
register[4] <= 32'b0;
register[5] <= 32'b0;
register[6] <= 32'b0;
register[7] <= 32'b0;
register[8] <= 32'b0;
register[9] <= 32'b0;
register[10] <= 32'b0;
register[11] <= 32'b0;
register[12] <= 32'b0;
register[13] <= 32'b0;
register[14] <= 32'b0;
register[15] <= 32'b0;
register[16] <= 32'b0;
register[17] <= 32'b0;
register[18] <= 32'b0;
register[19] <= 32'b0;
register[20] <= 32'b0;
register[21] <= 32'b0;
register[22] <= 32'b0;
register[23] <= 32'b0;
register[24] <= 32'b0;
register[25] <= 32'b0;
register[26] <= 32'b0;
register[27] <= 32'b0;
register[28] <= 32'b0;
register[29] <= 32'b0;
register[30] <= 32'b0;
register[31] <= 32'b0;
end

else
if(reg_write && rd_addr!=0)
begin
register[rd_addr] <= wb_data;   
end

end
endmodule
