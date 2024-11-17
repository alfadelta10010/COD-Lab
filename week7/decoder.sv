module decoder #(parameter N=32)(instr,opcode,func3,func7,rd,rs1,rs2,immi);
input logic [N-1:0] instr;
output logic [6:0] opcode;
output logic [14:12] func3;
output logic [31:25] func7;
output logic [19:15] rs1;
output logic [24:20] rs2;
output logic [11:7] rd;
output logic [11:0] immi;
always_comb
begin
case(opcode)
7'b0110011: begin           //r-type
        rd= instr[11:7];
        rs1= instr[19:15];
        rs2= instr[24:20];
        func3= instr[14:12];
        func7= instr[31:25];
        end
7'b0010011 : begin          //i-type     
        rd= instr[11:7];
        rs1= instr[19:15];
        func3= instr[14:12];
        immi= instr[31:20];
        end
7'b0000011 : begin          //load instruction
        rd= instr[11:7];
        rs1= instr[19:15];
        func3= instr[14:12];
        immi= instr[31:20];
        end
7'b0100011 : begin          //s-type
        rs1= instr[19:15];
        rs2= instr[24:20];
        func3= instr[14:12];
        immi= {instr[31:25],instr[11:7]};
        end
7'b1100011 : begin          //beq instruction
        rs1= instr[19:15];
        rs2= instr[24:20];
        func3= instr[14:12];
        end
endcase
end
endmodule
