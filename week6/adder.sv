// we are implementing blocks that are resued the most in the architecture
module adder #(parameter N=32)(a,b,cin,cout,sum); //Full adder -parameterissed because we need to resuse this 
input logic [N-1:0]a,b,cin;
output logic [N-1:0]sum;
output logic cout;
assign {cout,sum} = a+b+cin; // bit swizzling 
endmodule
