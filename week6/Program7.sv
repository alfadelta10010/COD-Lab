//Program7:Write a SV program for Instruction Memory

module Instruction_mem( input logic clk, 
                        input logic [31:0] pc,
                        output logic [31:0] x);
logic [7:0] mem [127:0];
always_ff @(posedge clk)
begin 
//add x18,x19,x10
mem[0] = 8'h33;
mem[1] = 8'h89;
mem[2] = 8'hA9;
mem[3] = 8'h00;

//and x5,x10,x12
mem[4] = 8'hB3;
mem[5] = 8'h72;
mem[6] = 8'hC5;
mem[7] = 8'h00;

//lb x10,32(x12)
mem[8] = 8'h03;
mem[9] = 8'h05;
mem[10] = 8'h06;
mem[11] = 8'h02;

//sub x18,x19,x10
mem[12] = 8'h33;
mem[13] = 8'h89;
mem[14] = 8'hA9;
mem[15] = 8'h40;

end 

assign x={mem[pc+3],mem[pc+2],mem[pc+1],mem[pc+0]}; 
endmodule 

