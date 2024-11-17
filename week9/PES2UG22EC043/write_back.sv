module write_back(
        input logic mem_to_reg,
        input logic[31:0] alu_result, data_out,// pc_imm,
        output logic[31:0] write_data
    );
    
    mux21 mux3(alu_result, data_out, mem_to_reg, write_data);

endmodule
