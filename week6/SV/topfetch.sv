module topfetch(input logic clk,input logic rst,reg [31:0] pc_in,  
    input logic [31:0]branch,input logic pcsrc,     
    reg [31:0] current_pc,output logic [31:0]y
    );
    logic [31:0]adder_out;
instmem dut1(clk,current_pc,y);
adder dut2(current_pc,4,adder_out);
mux21 mux2(adder_out,branch,pcsrc,pc_in);
PC dut(clk,rst,pc_in,current_pc);
endmodule
