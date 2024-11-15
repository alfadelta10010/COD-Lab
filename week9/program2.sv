//Write a SV program for Data memory

module dataMemory #(parameter N = 32, WS = 32) (
    input logic [N-1:0] Addr,
    input logic [WS-1:0] Datain,
    output logic [WS-1:0] Dataout,
    input logic clk,
    input logic DataRead,
    input logic DataWrite
);

    // Memory storage
    reg [WS-1:0] DataFile[N-1:0]; 
    reg [WS-1:0] Dataout_reg;      
    
    assign Dataout = Dataout_reg;

    // Read/Write process
    always @(posedge clk) begin
        if (DataRead && !DataWrite) begin  // Load operation
            Dataout_reg <= DataFile[Addr];
        end
        else if (DataWrite) begin          // Write operation
            DataFile[Addr] <= Datain;
        end
        else begin                         // Default case
            Dataout_reg <= 32'b0;
        end
    end

endmodule
