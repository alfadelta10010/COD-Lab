module register#(parameter width=32)
(input logic [4:0]r1,r2,rd,input logic [width-1:0]ws,
input logic regwrite,
output logic [width-1:0]reg1,reg2);

logic [width-1:0] rf [width-1:0];

always_ff @(posedge regwrite) begin
        rf[rd]<=ws;
 end
    assign reg1 =(r1!=0)?rf[r1]:0;
    assign reg2 =(r2!=0)?rf[r2]:0;
endmodule
