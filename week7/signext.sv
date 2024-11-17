module signext(opcode,instr,immout);
  input logic[6:0] opcode;
  input logic[31:0] instr;
  output logic[31:0] immout;
  always_comb
    begin
      case(opcode)
        7'b0010011:   //	IL
          immout = {{20{instr[31]}},instr[31:20]};
        7'b0000011:   //	IA
          immout = {{20{instr[31]}},instr[31:20]};
        7'b0100011:   //	S
          immout = {{20{instr[31]}},instr[31:25],instr[11:7]};
        7'b1100011: // B
          immout = {{20{instr[31]}},instr[7],instr[30:25],instr[11:8],1'b0};
        7'b1101111: //jal  
          immout = {{11{instr[31]}}, instr[19:12], instr[20], instr[30:21],1'b0};
        7'b1100111: //jalr
          begin
          immout[11:0] = instr[31:20];
          immout[31:12] = {20{instr[31]}};
          end
        default: 
          immout = 32'b0;
      endcase
    end
endmodule
