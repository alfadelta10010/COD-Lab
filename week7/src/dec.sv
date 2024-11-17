module dec(inst,rs1,rs2,rd,opcode,fun3,fun7);
input logic [31:0]inst;
output logic [4:0]rs1,rs2,rd;
output logic [2:0]fun3;
output logic [6:0] fun7;
output logic [6:0] opcode;

always_comb
begin
opcode=inst[6:0];
case(opcode)
//R-type
    7'b0110011:begin
        rs1=inst[19:15];
        rs2=inst[24:20];
        rd=inst[11:7];
        fun7=inst[31:25];
        fun3=inst[14:12];
        end
//I-type
    7'b0010011:begin
        rs1=inst[19:15];
        rd=inst[11:7];
        fun3=inst[14:12];
        rs2=5'bx;
        if((fun3==3'b101)|(fun3==3'b001))
            fun7=inst[31:24];
        else
            fun7=7'bx;
        end
//S-type
    7'b0100011:begin
        rs1=inst[19:15];
        rs2=inst[24:20];
        fun3=inst[14:12];
        rd=5'bx;
        fun7=7'bx;
        end
//Load
    7'b0000011:begin
        rs1=inst[19:15];
        rd=inst[11:7];
        fun3=inst[14:12];
        rs2=5'bx;
        fun7=7'bx;
        end
//branch
    7'b1100011:begin
        rs1=inst[19:15];
        rs2=inst[24:20];
        fun3=inst[14:12];
        rd=5'bx;
        fun7=7'bx;
        end
//auipc and lui
    7'b0010111,7'b0110111:begin
        rd=inst[11:7];
        rs1=5'bx;
        rs2=5'bx;
        fun7=7'bx;
        fun3=3'bx;
        end
//jal
    7'b1101111:begin
        rd=inst[11:7];
        rs1=5'bx;
        rs2=5'bx;
        fun7=7'bx;
        fun3=3'bx;
        end
 //jalr
    7'b1100111:begin
        rd=inst[11:7];  
        fun3=inst[14:12];
        rs1=inst[19:15];
        rs2=5'bx;
        fun7=7'bx;
        end 
    default:begin
        rd=5'bx;
        rs1=5'bx;
        rs2=5'bx;
        fun7=7'bx;
        fun3=3'bx;
        end
     endcase
     end
endmodule

