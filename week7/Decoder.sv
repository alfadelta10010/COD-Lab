module Decoder(input logic[31:0]inst,
output logic[6:0]func7,
output logic [2:0] func3,logic [4:0]rd,rs2,rs1,logic [11:0]imm
);
logic [6:0]opcode;
assign opcode=inst[6:0];

always_comb begin
case(opcode)
7'b 0110011: begin
    func7=inst[31:25];
    func3=inst[14:12];
    rd=inst[11:7];
    rs1=inst[19:15];
    rs2=inst[24:20];
    imm=0;
    end
7'b 0010011:begin
    func7=0;
    func3=inst[14:12];
    imm=inst[31:20];
    rd=inst[11:7];
    rs1=inst[19:15];
    end
7'b 0000011: begin
    func7=0;
    func3=inst[14:12];
    rs1=inst[19:15];
    imm=inst[31:20];
    rd=inst[11:7];
    end
7'b 0100011: begin
    func7=0;
    func3=inst[14:12];
    rs1=inst[19:15];
    rs2=inst[24:20];
    imm={inst[31:25],inst[11:7]};
    end
7'b 1100011: begin
    func7=0;
    func3=inst[14:12];
    rs1=inst[19:15];
    rs2=inst[24:20];
    imm={inst[31],inst[7],inst[30:25],inst[11:8]};
    end
endcase
    
end
endmodule