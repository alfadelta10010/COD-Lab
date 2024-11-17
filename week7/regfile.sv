module regfile(input logic[4:0]rs1,rs2,rd_addr,logic rw,logic [31:0]wrdata,
input logic reset,output logic [4:0]rs1_d,rs2_d
);

logic [31:0]rf[31:0];
assign rs1_d=reset?0:rf[rs1];
assign rs2_d=reset?0:rf[rs2];

always@(rw) begin
    rf[rd_addr]=wrdata;
end

endmodule