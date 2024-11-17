module ALU #(parameter N=32)(ip1,ip2,op,alu_op,zero);
input logic [N-1:0] ip1,ip2;
output logic [N-1:0] op;
output logic zero=0;
input logic [3:0] alu_op;
always_comb 
begin
case(alu_op)
4'b0010 : op=ip1+ip2;   //add
4'b0110 : op=ip1-ip2;   //sub
4'b0000 : op=ip1&ip2;   //and
4'b0001 : op=ip1|ip2;   //or
4'b0011 : op=ip1^ip2;   //xor
4'b0101 : op=ip1 << ip2[3:0];  //sll
4'b1010 : op=ip1 >> ip2[3:0];    //srl
4'b1000: zero=(ip1 == ip2) ? 1'b1 : 1'b0; //beq
4'b1001: zero = (ip1 != ip2) ? 1'b1 : 1'b0; //bne
default : op = {N{1'b0}};
endcase
end
endmodule
