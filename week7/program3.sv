// Write a SV program for the Register File

module register_file #(parameter N = 32,M = 4) (reset, rs1_add,rs2_add,rd_add,Reg_Write,wr_data, rs1_data, rs2_data,clk);
  input logic reset, clk, Reg_Write;
  input logic[M-1:0] rs1_add, rs2_add, rd_add;
  input logic[N-1:0] wr_data;
  output logic[N-1:0] rs1_data, rs2_data;
  
      // Register array
  logic[31:0] register[31:0];

  always_ff @(posedge reset or posedge Reg_Write or posedge clk) 
      begin
        if (reset) 
          begin
            register[rd_add] <= 32'h0;
        end 
        else if (Reg_Write) 
          begin
            register[rd_add] <= wr_data;
        end
    end

    assign rs1_data = register[rs1_add];
    assign rs2_data = register[rs2_add];
  
  
endmodule