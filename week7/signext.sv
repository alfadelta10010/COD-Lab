module signext#(parameter n=32)(
input logic[11:0] imm,
output logic[n-1:0] immfinal);
logic[11:0] im;
assign im=imm[11:0];
always@(*)
   begin
	  if(im[11]==1)
	  begin
		 immfinal={{20{imm[11]}}, imm};
		end
	  else
	  begin
	   immfinal={20'b0, imm};
	  end
	 end
endmodule
