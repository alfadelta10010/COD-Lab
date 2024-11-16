module MA (
    output logic [31:0] rdata,
    input logic [31:0] wdata,
    input logic [31:0] address,
    input logic [2:0] func3, 
    input bit MemRead, MemWrite, clk
);
    
    logic [7:0] memarr [123:0];
    always@(clk) begin
        if (MemRead) begin
            case (func3)
                3'b000 : rdata <= {{24{memarr[address][7]}},memarr[address]}; // lb
                3'b001 : rdata <= {{16{memarr[address+1][7]}},memarr[address+1],memarr[address]}; // lh
                3'b010 : rdata <= {memarr[address+3],memarr[address+2],memarr[address+1],memarr[address]}; // lw
                3'b100 : rdata <= {24'd0, memarr[address]}; // lbu
                3'b101 : rdata <= {16'd0, memarr[address+1],memarr[address]};// lhu
            endcase
        end
    end
        
    always@(negedge clk) begin
        if (MemWrite) begin
            case(func3)
                3'b000 : memarr[address] <= wdata[7:0]; // sb
                3'b001 : {memarr[address+1],memarr[address]} <= wdata[15:0]; // sh
                3'b010 : {memarr[address+3],memarr[address+2],memarr[address+1],memarr[address]} <= wdata; // sw
            endcase
        end
    end
endmodule
