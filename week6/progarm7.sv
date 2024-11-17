module IF_instrMem #(parameter N = 1024, WS = 32)(addr, inst, reset);
    input logic [WS-1:0] addr;
    input logic reset;
    output logic [WS-1:0] inst;
    reg [WS-1:0] mem[N-1:0]; // creates a 2D array 'mem' of width WS and number of array elements=N

    // Initialize memory with some values
    initial begin
        integer i;
        for (i = 0; i < N; i = i + 1) begin
            mem[i] = i; // Example: initializing memory with address values
        end
    end

    assign inst = reset ? 0 : mem[addr]; // if reset inst=0, else inst=array[addr]
endmodule
