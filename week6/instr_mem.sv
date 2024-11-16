module instr_mem(
    input logic [31:0] pc_i,
    output logic [31:0] data_o
    );
    
    logic [4:0] addr;
    logic [7:0] mem [31:0] = '{8'bX, 8'bX, 8'bX, 8'bX,
           8'bX, 8'bX, 8'bX, 8'bX,
           8'bX, 8'bX, 8'bX, 8'bX,
           8'hX, 8'hX, 8'hX, 8'hX,
           8'b00, 8'b00, 8'b00, 8'b00,
           8'h00, 8'h84, 8'h89, 8'h33,
           8'h10, 8'h10, 8'h04, 8'h93,
           8'h01, 8'h00, 8'h04, 8'h13};
           
    assign addr = pc_i[4:0];
   
    assign data_o = {mem [addr+3], mem [addr+2], mem [addr+1], mem [addr]};
endmodule