module decoder (input logic [31:0]inst, output logic [4:0]rd,output logic [4:0]rs1, output logic [4:0]rs2,output logic [2:0]func3, output logic [6:0]func7,output logic [11:0]imm);
always_comb
begin
		  rd = 5'b0;
        rs1 = 5'b0;
        rs2 = 5'b0;
        func3 = 3'b0;
        func7 = 7'b0;
        imm = 12'b0;
case(inst[6:0])
7'b0110011:
begin
 rd=inst[11:7];
 rs1=inst[19:15];
 rs2=inst[24:20];
 func3=inst[14:12];
 func7=inst[31:25];
 end
 
 7'b0010011:
 begin
 rd=inst[11:7];
 rs1=inst[19:15];
 func3=inst[14:7];
 imm=inst[11:0];
 end
 
 7'b1100011:
 begin
 rs1=inst[19:15];
 rs2=inst[24:20];
 func3=inst[14:12];
 imm={inst[31],inst[30:25],inst[11:8],inst[7]};
 end

 7'b0100011:
 begin
 rs1=inst[19:15];
 rs2=inst[24:20];
 func3=inst[14:7];
 imm={inst[31:25],inst[11:7]};
 end
 
 7'b0000011:
 begin
 rd=inst[11:7];
 rs1=inst[19:15];
 func3=inst[14:7];
 imm=inst[11:0];
 end 
 
 endcase
 end
 endmodule