module CU(
    input logic [6:0] opcode,    
    output logic [1:0] alu_op1,
    output bit alu_src,
    output bit memread,
    output bit memwrite,
    output bit memtoreg,
    output bit br,
    output bit regwrite
    );
    always_comb
    case(opcode)
    7'b0110011: //R type
    begin
    alu_op1=2'b10;alu_src=0;memread=0;memwrite=0;memtoreg=0;br=0;regwrite=1;
    end
    7'b0010011: //I type
    begin
    alu_op1=2'b00;alu_src=1;memread=0;memwrite=0;memtoreg=0;br=0;regwrite=1;
    end
    7'b0000011: //load type
    begin
    alu_op1=2'b00;alu_src=1;memread=1;memwrite=0;memtoreg=1;br=0;regwrite=1;
    end
    7'b0100011: //Store type
    begin
    alu_op1=2'b00;alu_src=1;memread=0;memwrite=1;memtoreg=1;br=0;regwrite=0;
    end
    7'b1100011: //Branch
    begin
    alu_op1=2'b01;alu_src=0;memread=0;memwrite=0;memtoreg=0;br=1;regwrite=0;
    end
    endcase
endmodule

