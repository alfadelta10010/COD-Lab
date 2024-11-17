module signextend(input logic[11:0]im12,output logic [31:0]imm);
 always_comb begin
        imm = { {20{im12[11]}}, im12 };  
end
endmodule