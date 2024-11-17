module reg_file #(parameter N=32)(clk,reset,rs1,rs2,rd,regwrite,wd,reg1,reg2);
input logic clk,reset,regwrite;
input logic [4:0]rs1,rs2,rd;
input logic [N-1:0]wd;
output logic [N-1:0]reg1,reg2;
logic [N-1:0] mem [0:N-1];
always_ff@(posedge clk)
begin
if (reset) 
    begin
    reg1=&(rs1);
    if(regwrite)
    reg2=&(rs2);
    else
    reg2=0;
    end
end
endmodule
