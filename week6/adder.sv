module adder 
(
input logic [31:0]a, 
input logic [31:0]b, 
  input logic [31:0]c,
  output logic [31:0]sum,
  output logic [31:0]carry);

assign sum = a + b ;  // XOR gate for sum
  carry = (a & b) | (c & (a ^ b));  

endmodule
