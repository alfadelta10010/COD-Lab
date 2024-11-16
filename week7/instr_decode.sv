module instr_decode(
  input bit clk,reset,wr_en,
  input   logic [31:0]  instr_i,data,
  output  logic [4:0]   rs1,rs2,rd,
  output  logic [6:0]   opcode,funct7,
  output  logic [2:0]   funct3,
  output  logic [31:0]  reg1,reg2,
  output  logic r_type,
  output  logic i_type,
  output  logic s_type,
  output  logic b_type,
  output  logic u_type,
  output  logic j_type,
  output  logic [31:0] imm_o
  );
   logic[31:0] instr_imm;
   logic[31:0] i_type_imm;
   logic[31:0] s_type_imm;
   logic[31:0] b_type_imm;
   logic[31:0] u_type_imm;
   logic[31:0] j_type_imm; 
   
   assign rd     = instr_i[11:7];
   assign rs1    = instr_i[19:15];
   assign rs2    = instr_i[24:20];
   assign opcode = instr_i[6:0];
   assign funct3 = instr_i[14:12];
   assign funct7 = instr_i[31:25];
   
   assign i_type_imm = {{20{instr_i[31]}},instr_i[31:20]};
   assign s_type_imm = {{20{instr_i[31]}},instr_i[31:25],instr_i[11:7]};
   assign b_type_imm = {{20{instr_i[31]}},instr_i[7],instr_i[30:25],instr_i[11:8],1'b0};
   assign u_type_imm = {instr_i[31:12],12'b0};
   assign j_type_imm = {{12{instr_i[31]}},instr_i[19:12],instr_i[20],instr_i[30:21],1'b0};
   
   assign imm_o  = r_type ? 32'h0 : 
    			   i_type ? i_type_imm :
         		   s_type ? s_type_imm :
    		       b_type ? b_type_imm :
    			   u_type ? u_type_imm :
    		 	 	        j_type_imm ;
    		 	 	        
    always_comb
    begin
      r_type = 1'b0;
      j_type = 1'b0;
      i_type = 1'b0;
      s_type = 1'b0;
      b_type = 1'b0;
      u_type = 1'b0;
  	  case(opcode)
    		7'b0110011 : r_type = 1'b1;
        	7'b0010011,
    		7'b0000011,
    		7'b1100111 : i_type = 1'b1;
    		7'b0110111,
        	7'b0010111 : u_type = 1'b1;
      		7'b1101111 : j_type = 1'b1;
        	7'b0100011 : s_type = 1'b1;
        	7'b1100011 : b_type = 1'b1;
        default;
      endcase
    end 
    
    reg_file regfile(.data_i(data), .rd(rd), .rs1(rs1), .rs2(rs2), .wr_en(wr_en), .reg1(reg1), .reg2(reg2), .clk(clk));		 	 	        
endmodule
