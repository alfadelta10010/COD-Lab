module register_file(
    input logic /*clk, */reset, register_write,
    input logic[4:0] rs1, rs2, rd,
    input logic[31:0] write_data,
    output logic[31:0] rs1_data, rs2_data
    );
    
    reg[31:0] register[0:31];
    
    initial begin
        for(int i = 0; i < 32; i++)
            register[i] <= 32'b0;
    end
    
    /*always_ff @(posedge reset) begin
            if(reset)
            begin
            for(int i = 0; i < 32; i++)
                register[i] <= 32'b0;
            end*/
  
    always_comb
        begin
        if(register_write) register[rd] = write_data;
        rs1_data = register[rs1];
        rs2_data = register[rs2];
        end
endmodule
