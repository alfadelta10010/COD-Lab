module sign_exe (input logic [11:0]imm,output logic [31:0]imm_exe);
always_comb
begin
	if(imm[11]==0)
	begin
		imm_exe[31:12]=20'b0;
		imm_exe[11:0]=imm[11:0];
	end
	else
	begin
		imm_exe[31:12]=20'b1;
		imm_exe[11:0]=imm[11:0];
	end
end
endmodule