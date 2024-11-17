module mux_2_1 #(parameter N=32)(a,b,s,y);
	input logic [N-1:0] a,b;
	output logic [N-1:0]y;
	input logic s;
	assign y=s?a:b;
endmodule

//module t_mux_2_1;
//	parameter N=32;
//	logic [N-1]a,b;
//	wire sum;
//	mux_2_1 dut (.a(a),.b(b),.s(s).y(y))
//	initial 
//		begin

//			s=0;a=32'h0000AAAA;b=32'h0000BBBB;
//			#5
//			s=1;a=32'h0000CCCC;b=32'h0000DDDD;
//			#5		
//		end 
//	$finish;
//endmodule 
	