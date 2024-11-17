System verilog code assignment 
4.Write a SV program for Asynchronous Reset Flip Flop
module A_rest_FF (
    input logic clk,        
    input logic reset, 
    input logic d,          
    output logic q          
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;         
        else
            q <= d;         
    end

endmodule

5. Write a SV program for Synchronous Reset Flip Flop
module sync_reset_ff (
    input logic clk,        
    input logic sync_reset, 
    input logic d,          
    output logic q          
);
    always_ff @(posedge clk) begin
        if (sync_reset)
            q <= 0;         
        else
            q <= d;         
    end

endmodule

6. Write a SV program for 3:1 MUX
module mux_3to1 (
    input logic [2:0] sel,  
    input logic d0,        
    input logic d1,        
    input logic d2,        
    output logic y         
);

    always_comb begin
        case (sel)
            3'b001: y = d0;  
            3'b010: y = d1;  
            3'b100: y = d2;  
            default: y = 0;  
        endcase
    end

endmodule

7. Write a SV program for 2:1 MUX
module mux(
    input s,
    input d0,
    input d1,
    output y
    );
    assign y=s?d0:d1;
endmodule

8. Write a SV program for Adder
module adder #(parameter N = 32)(a, b, cin, s, cout);
	input logic [N-1:0] a;
	input logic [N-1:0] b;
	output logic [N-1:0] s;
	input logic cin;
	output logic cout;
	assign {cout, s} = a + b + cin;
endmodule

9.Write a SV program for Instruction Fetch Stage
                           input logic [n-1:0] pc_imm,
                           input logic reset,
                           input logic s,
                           output logic [n-1:0] pc_next,
                           output logic [n-1:0] instruction);

  const bit[n-1:0] next = 4;
  const bit[n-1:0] cc = 0;

  logic [n-1:0] pco;
  logic [n-1:0] pcn;

  mux2_1 #(n) mux1(.a(pc_next), .b(pc_imm), .s(s), .out(pco));
  PC #(n) pc1(.clk(clk), .reset(reset), .pc(pcn), .pc_next(pco));
  instruction_memory #(n) im1(.pc(pcn), .rst(reset), .instruction(instruction));
  add #(n) adder1(.a(pcn), .b(next), .cout(cc), .sum(pc_next));

endmodule 

10. Write a SV program for Instruction Memory
module instruction_memory #(parameter N=32, L=1024)(pc,rst,instruction);
  input logic [N-1:0] pc;
  input logic rst;
  output logic [N-1:0] instruction;
  logic [N-1:0] mem [L-1:0];
  assign instruction = rst? 0: mem[pc];
endmodule