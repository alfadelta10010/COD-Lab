Write a SV program for Instruction Decode Stage
module instruction_decoder (
    input  logic [31:0] instruction,
    input  logic reg_write,
    input  logic [31:0] wr_data,
    input  logic res,
    output logic [6:0] opcode,
    output logic [2:0] funct3,
    output logic [6:0] funct7,
    output logic [4:0] rd,
    output logic [4:0] rs1,
    output logic [4:0] rs2,
    output logic [31:0] imm_ext,
    output logic [31:0] reg1,
    output logic [31:0] reg2
);

    logic [31:0] imm;

    decoder dec (
        .instruction(instruction),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .rd(rd),
        .rs1(rs1),
        .rs2(rs2),
        .imm(imm)
    );

    signext se (
        .imm(imm[11:0]),  // Use only 12-bit immediate for sign extension
        .imm_ext(imm_ext)
    );

    register_file #(32) rf (
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .reg_write(reg_write),
        .wr_data(wr_data),
        .res(res),
        .reg1(reg1),
        .reg2(reg2)
    );
endmodule

Write a SV program for the Decoder
module decoder (
    input  logic [31:0] instruction,
    output logic [6:0]  opcode,
    output logic [2:0]  funct3,
    output logic [6:0]  funct7,
    output logic [4:0]  rd,
    output logic [4:0]  rs1,
    output logic [4:0]  rs2,
    output logic [12:0] imm
);

    assign opcode = instruction[6:0];

    always @(*) begin

        case (opcode)
            7'b0110011: begin
                rd     = instruction[11:7];
                rs1    = instruction[19:15];
                rs2    = instruction[24:20];
                funct3 = instruction[14:12];
                funct7 = instruction[31:25];
            end

            7'b0010011:
             begin
                rd     = instruction[11:7];
                rs1    = instruction[19:15];
                funct3 = instruction[14:12];
                imm    = { instruction[31:20]};
            end

            7'b0000011: begin
                rd     = instruction[11:7];
                rs1    = instruction[19:15];
                funct3 = instruction[14:12];
                imm    = {instruction[31:20]};
            end

            7'b0100011: begin
                rs1    = instruction[19:15];
                rs2    = instruction[24:20];
                funct3 = instruction[14:12];
                imm    = { instruction[31:25], instruction[11:7]};
            end


            7'b1100011: begin
                rs1    = instruction[19:15];
                rs2    = instruction[24:20];
                funct3 = instruction[14:12];
                imm    = { instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
            end


        endcase
    end

endmodule  

Write a SV program for the Register File
module register_file #(parameter Inst_size = 32) (
    input logic [4:0] rs1,        
    input logic [4:0] rs2,      
    input logic [4:0] rd,        
    input logic reg_write,      
    input logic [31:0] wr_data,  
    input logic res,              
    output logic [31:0] reg1,    
    output logic [31:0] reg2      
);


    reg [Inst_size-1:0] mem [0:31];


    always_ff @(posedge res) begin
        integer i;
        for (i = 0; i < 32; i = i + 1) begin
            mem[i] = {Inst_size{1'b0}};  
        end
    end


    always_comb begin
        if (reg_write) begin
            mem[rd] = wr_data;  
        end
        reg1 = mem[rs1];  
        reg2 = mem[rs2];  
    end
endmodule

Write a SV program for the Immediate Unit
module signext (
    input  logic [11:0] imm,   
    output logic [31:0] imm_ext   
);


    assign imm_ext = {{20{imm[11]}}, imm};

endmodule
