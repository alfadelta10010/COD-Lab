module instruction_memory (
    input logic [31:0] addr,
    output logic [31:0] inst
    );
//logic [9:0] addrTemp;
reg [31:0]mem[0:2**32-1];

initial begin
    $readmemh("C:/Users/Lenovo/OneDrive/Desktop/single_cycle_riscv/program.hex", mem);
  end
//inst = mem[addr];
assign inst = mem[addr];
endmodule