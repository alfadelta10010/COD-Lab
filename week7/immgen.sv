module immgen(
    input logic [6:0] opcode,
    input logic [12:0] imm,
    output logic [31:0] imm_new
);

/*always_comb begin
    case(opcode)
        7'b0000011: begin // Load
            imm_new[31:12] = {20{imm[11]}}; 
            imm_new[11:0] = imm[11:0]; 
        end

        7'b0010011: begin // I
            imm_new[31:12] = {20{imm[11]}}; 
            imm_new[11:0] = imm[11:0]; 
        end

        7'b0100011: begin // S
            imm_new[31:12] = {20{imm[11]}}; 
            imm_new[11:0] = imm[11:0]; 
        end

        7'b1100011: begin // B
            imm_new[31:12] = {19{imm[12]}};
            imm_new[11:0] = {imm[12], imm[10:5], imm[4:1]}; 
        end

       endcase
end*/

always_comb 
begin
    if (opcode == 7'b0000011 | opcode == 7'b0010011 | opcode == 7'b0100011 ) 
    begin 
        imm_new[31:12] = {20{imm[11]}};
        imm_new[11:0] = imm[11:0];
    end
    
    else if (opcode == 7'b1100011) //b
    begin
        imm_new[31:12] = {19{imm[12]}};
        imm_new[11:0] = {imm[12], imm[10:5], imm[4:1]};
    end
end
endmodule
