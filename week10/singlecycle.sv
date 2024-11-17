module singlecycle#(parameter N=32)(
    input logic clk,reset
    );
    //inst fetch
    logic sel;
    logic [N-1:0] pc_imm,pc_new,inst;
     //indecode
     logic [N-1:0] wrdata;
     logic rw,rs1_d,rs2_d;logic [31:0]imm;
     //Exceution
     logic aluop,alusrc,branch,bo,alur;
     // memstage
     logic [N-1:0]data_in,data_out;logic mem_r,mem_w;
     //writeback
     logic memtoreg,wd;
     INS_FETCH g1(.clk(clk),.reset(reset),.sel(sel),.pc_imm(alur),.pc_new(pc_new),.inst(inst));
     
     InstDecode g2(.inst(inst),.wrdata(wrdata),.rw(rw),.reset(reset),
     .imm(imm),.rs1_d(rs1_d),.rs2_d(rs2_d),.func7(func7),.func3(func3));
     
     logic [6:0]opcode;
assign opcode=inst[6:0];
     
     Main_control g6(.opcode(opcode),.regWrite(rw),.ALUSrc(alusrc),
     .memRead(mem_r),.memWrite(mem_w),.branch(branch),.ALUOp(aluo2));
     
     alu_control g7(.ALUOp(aluo2),.funct3(func3),.funct7_5(func7),.ALUControl(aluop));
     
     Excecution g3(.rs1_d(rs1_d),.rs2_d(rs2_d),.imm(imm),.aluop(aluop),
     .alusrc(alusrc),.branch(branch),.bo(bo),.alur(alur));
     
     memstage g4(.alu_result(alur),.data_in(data_in),.mem_read(mem_r),
     .mem_write(mem_w),.data_out(data_out));
     
     writeback g5(.alu_out(alur),.data_out(data_out),.memtoreg(memtoreg),
     .wd(wrdata));
     
endmodule
