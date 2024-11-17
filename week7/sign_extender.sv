module sign_extender(input logic [11:0]imm,output logic [31:0]imm_exe);
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

//testbench for sign_exetender
//testbench_sign_extender;
//	reg imm;
//	wire imm_exe;
//	sign_extender dut(.imm(imm),.imm_exe(imm_exe));
//	initial
//	begin
//		imm=12'b000000000001;
//		#5;
//		imm=12'b100000000002;
//		#5;
//	end
//endmodule
	


