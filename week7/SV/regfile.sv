module regfile( input logic clk, rst, reg_wr, input logic[4:0] rs1, rs2, rd, input logic [31:0] wd,
    output logic[31:0] reg1, reg2);
    logic [31:0] registerfile [31:0];
    always @(posedge clk) begin
        if (rst) begin
            registerfile[0] <= 0;
        end    
    end
    always_comb
    begin
    reg1 <= registerfile[rs1];
    reg2 <= registerfile[rs2];
    end
endmodule
