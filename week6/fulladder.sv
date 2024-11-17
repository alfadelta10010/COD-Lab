
module fulladder #(parameter N=32)(a,b,sum);
	input logic [N-1:0] a,b;
	output logic [N-1:0] sum;
	assign sum=a+b;
endmodule

//module t_fulladder;
//	parameter N=32;
//	logic [N-1]a,b;
//	wire sum;
//	fulladder dut (.a(a),.b(b),.sum(sum))
//	initial 
//		begin
//			a=32'b0;b=32'b0;
//			#5
//			a=32'b1;b=32'b0;
//			#5
//			a=32'b0;b=32'b1;
//			#5
//			a=32'b1;b=32'b1;		
//		end 
//	$finish;
//endmodule
	
