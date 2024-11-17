module DM(input logic [31:0]wdata,addr,
    input logic memread,memwrite,clk,
    input logic [2:0]fun3,
    output logic [31:0]rdata);
     
    logic [7:0] dmem[1024:0];
    //write
    always_ff@(posedge memwrite)
    begin
            case(fun3)
                3'b000 : dmem[addr] <= wdata[7:0]; // sb
                3'b001 : {dmem[addr+1],dmem[addr]} <= wdata[15:0]; // sh
                3'b010 : {dmem[addr+3],dmem[addr+2],dmem[addr+1],dmem[addr]} <= wdata; // sw
            endcase
    end
    //read
    always_comb
    begin
        if(memread)
           case (fun3)
                3'b000 : rdata = {{24{dmem[addr][7]}},dmem[addr]}; // lb
                3'b001 : rdata = {{16{dmem[addr+1][7]}},dmem[addr+1],dmem[addr]}; // lh
                3'b010 : rdata = {dmem[addr+3],dmem[addr+2],dmem[addr+1],dmem[addr]}; // lw
                3'b100 : rdata = {24'd0, dmem[addr]}; // lbu
                3'b101 : rdata = {16'd0, dmem[addr+1],dmem[addr]};// lhu
            endcase 
    end
endmodule

