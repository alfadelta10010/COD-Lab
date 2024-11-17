module regfile #(parameter N=32)(
    input logic [4:0] rs1_addr,
    input logic [4:0] rs2_addr,
    input logic [4:0] rd_addr,
    input logic wr_en,
    input logic [N-1:0] wr_data,
    input logic reset,
    output logic [N-1:0] rs1,
    output logic [N-1:0] rs2
);

    logic [N-1:0] rf [31:0];

    always_ff @(posedge wr_en or posedge reset) begin
        if (reset) begin
            integer i;
            for (i = 0; i < 32; i = i + 1) begin
                rf[i] <= 0;
            end
        end else if (wr_en && rd_addr != 5'b0) begin
           rf[rd_addr] <= wr_data;
        end
    end
    always @(*) begin
        rs1 = rf[rs1_addr];
        rs2 = rf[rs2_addr];
    end
    
endmodule
