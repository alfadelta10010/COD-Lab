module reg_file(
    input bit clk,wr_en,
    input logic [4:0] rs1,rs2,rd,
    input logic [31:0] data_i,
    output logic [31:0] reg1,reg2
    );
    
    logic [31:0] reg_data [0:31];
    
    always_comb
    begin
        for(int i = 0; i<32; i++)
            reg_data[i] <= 32'b0;
    end
    
    always @(posedge wr_en)
      reg_data[rd] <= data_i;
            
    always_comb begin
      reg1 = reg_data[rs1];
      reg2 = reg_data[rs2];    
    end
endmodule
