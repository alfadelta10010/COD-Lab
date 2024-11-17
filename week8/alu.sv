module alu(out,aluop,rs1_data,alures,zero);
input logic[31:0] out;
input logic[3:0] aluop;
input logic[31:0] rs1_data;
output logic [31:0] alures;
output bit zero;
always @(*)
begin
case(aluop)
 4'b0000:
 begin
 alures=rs1_data & out;
 end
 
 4'b0001:
 begin
 alures= rs1_data | out;
 end
 
 4'b0010:
 begin
 alures=rs1_data + out;
 end
 
 4'b0110:
 begin
 alures=rs1_data - out;
 end
 endcase
 if(!alures)
 begin
 zero=zero++;
 end
 end
 endmodule
