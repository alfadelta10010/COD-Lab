module MA(data_outma,addr,memctrl,memrd,memwr,datain,clk);
output logic[31:0] data_outma;
input logic[31:0]addr;
input logic [2:0] memctrl;
input logic memrd,memwr,clk;
input logic[31:0] datain;
logic [11:0] shortaddr;
logic[31:0] datawrite;
logic[31:0] dataread;


memcontroller m1(.mem_ctrl(memctrl),
                 .data_addin(addr),
                 .data_addout(shortaddr),
                 .dataincon(datain),
                 .dataoutcon(datawrite),
                 .datareincon(dataread),
                 .datareoutcon(data_outma));

datamem d1(.clk(clk),.wradd(shortaddr),.wrdata(datawrite),.memwr(memwr),.memrd(memrd),.dataout(dataread));

endmodule
