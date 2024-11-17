module decode(instr,rd,rs1,rs2,opcode,fun7,fun3);
  input logic[31:0] instr;
  output logic[4:0] rd;
  output logic[4:0] rs1;
  output logic[4:0] rs2;
  output logic[6:0] opcode;
  output logic [6:0] fun7;
  output logic [2:0] fun3;
  
  assign opcode = instr[6:0];
  always_comb
    begin
    rd = 5'b0;
    rs1 = 5'b0;
    rs2 = 5'b0;
    fun7 = 7'b0;
    fun3 = 3'b0;
    case(opcode)
        7'b0110011:
          begin
            rd = instr[11:7];
            rs1 = instr[19:15];
            rs2 = instr[24:20];
            fun7 = instr[31:25];
            fun3 = instr[14:12];
          end
        7'b0010011 | 7'b0000011:
          begin
            rd = instr[11:7];
            rs1 = instr[19:15];
            fun3 = instr[14:12];
            
          end
        7'b0100011:
          begin
            
            fun3 = instr[14:12];
            rs1 =  instr[19:15];
            rs2 = instr[24:20];
 
          end
        7'b1100011:
          begin
            fun3 = instr[14:12];
            rs1 =  instr[19:15];
            rs2 = instr[24:20];
          end
          default:
          begin
          rd = 5'b0;
          rs1 = 5'b0;
          rs2 = 5'b0;
          fun7= 7'b0;
          fun3 = 3'b0;
          end
      endcase
    end
endmodule
            