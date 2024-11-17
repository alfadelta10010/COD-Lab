module alu(alu_control,alu_out,zero,rs1_data,rs2_data);
input logic [3:0]alu_control;
output logic zero;
output logic [31:0]alu_out;
input logic [31:0]rs1_data,rs2_data;
wire mux_out;
wire signed [31:0]rss1_data,rss2_data;

assign rss1_data = signed'(rs1_data);
assign rss2_data = signed'(rs2_data);
always_comb
begin

zero = 0;
alu_out = 0;
case(alu_control)
       4'b0000:   //R-Type  //add + load + store + addi
       alu_out = rss1_data + rss2_data;
       
       4'b0001: //sub 
       alu_out = rss1_data - rss2_data;
       
       4'b0010: // xor + xori
       alu_out = rs1_data ^ rs2_data;
       
       4'b0011: //or + ori
       alu_out = rs1_data|rs2_data;
       
       4'b0100: //and + andi
       alu_out = rs1_data&rs2_data;
       
       4'b0101: //sll + slli
       alu_out = rs1_data<<rs2_data;
       
       4'b0110: //srl + srli
       alu_out = rs1_data>>rs2_data;
       
       4'b0111: //sra + srai
       alu_out = rs1_data>>>rs2_data;
       
       4'b1000: //slt + slti
       begin
       if(rss1_data<rss2_data)
       alu_out = {32{1'b1}};
       else 
       alu_out = {32{1'b0}};
       end
       
       4'b1001: //sltu + sltiu
       begin
       if(rs1_data<rs2_data)
       alu_out = {32{1'b1}};
       else 
       alu_out = {32{1'b0}};
       end
       
       4'b1010: //beq
       begin
       if(rss1_data == rss2_data)
       zero = 1;
       else
       zero = 0;
       end
       
       4'b1011: //bne
       begin
       if(rss1_data != rss2_data)
       zero = 1;
       else
       zero = 0;
       end
       
       4'b1100: //blt
       begin
       if(rss1_data<rss2_data)
       zero =  1;
       else
       zero = 0;
       end
       
       4'b1101: //bge
       begin
       if(rss1_data>rss2_data|rss1_data == rss2_data)
       zero = 1;
       else
       zero = 0;
       end       
       
       4'b1110: //bltu
       begin
       if(rs1_data<rs2_data)
       zero = 1;
       else
       zero = 0;
       end      
       
       4'b1111: //bgeu
       begin
       if(rss1_data<rss2_data)
       zero = 1;
       else
       zero = 0;
       end       
       
endcase
end
endmodule
