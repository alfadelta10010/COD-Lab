module alu(control_out,alu_out,zero,rs1_data,rs2_data);
input logic [5:0]control_out;
output logic zero;
output logic [31:0]alu_out;
input logic [31:0]rs1_data,rs2_data;
wire mux_out;
wire signed [31:0]rss1_data,rss2_data;

always_comb
begin

zero = 0;
alu_out = 0;
case(control_out)
       6'b000000:   //R-Type
       alu_out = rss1_data + rss2_data;
       6'b000001:
       alu_out = rss1_data - rss2_data;
       6'b000010:
       alu_out = rs1_data ^rs2_data;
       6'b000011:
       alu_out = rs1_data|rs2_data;
       6'b000100:
       alu_out = rs1_data&rs2_data;
       6'b000101:
       alu_out = rs1_data<<rs2_data;
       6'b000110:
       alu_out = rs1_data>>rs2_data;
       6'b000111:
       alu_out = rs1_data>>>rs2_data;
       6'b001000:
       begin
       if(rss1_data<rss2_data)
       alu_out = {32{1'b1}};
       else 
       alu_out = {32{1'b0}};
       end
       6'b001001:
       begin
       if(rss1_data<rss2_data)
       alu_out = {32{1'b1}};
       else 
       alu_out = {32{1'b0}};
       end
       
       
       6'b001010:   //I-Type
       alu_out = rss1_data + rss2_data;
       6'b001011:
       alu_out = rs1_data ^ rs2_data;
       6'b001100:
       alu_out = rs1_data |rs2_data;
       6'b001101:
       alu_out = rs1_data & rs2_data;
       6'b001110:
       alu_out = rss1_data << rss2_data;
       6'b001111:
       alu_out = rss1_data >> rss2_data;
       6'b010000:
       alu_out  =rss1_data >>> rs2_data;
       6'b010001:
       begin
       if(rss1_data<rss2_data)
       alu_out = {32{1'b1}};
       else
       alu_out = {32{1'b0}};
       end
       6'b010010:
       begin
       if(rs1_data<rs2_data)
       alu_out = {32{1'b1}};
       else
       alu_out = {32{1'b0}};
       end
endcase
end
endmodule
