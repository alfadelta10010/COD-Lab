module full_adder (
    input logic a,          // Input a
    input logic b,          // Input b
    input logic cin,        // Carry-in input
    output logic sum,       // Sum output
    output logic carry      // Carry-out output
);

	assign sum = a ^ b ^ cin;
	assign carry = (a & b) | (b & cin)  | (cin & a) ;

endmodule
