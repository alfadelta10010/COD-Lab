module control_unit (
    input  logic [6:0] opcode,     // Opcode from instruction

    output logic reg_wr,           // Register write enable
    output logic mem_rd, mem_wr,   // Memory read/write control
    output logic wb_ctrl,          // Write-back control
    output logic branch_ctrl,      // Branch control flag
    output logic alu_s2,           // ALU input selection control
    output logic [1:0] alu_ctrl    // ALU control type (to ALU controller)
);

    always_comb begin
        // Set default values
        reg_wr      = 1'b0;
        mem_rd      = 1'b0;
        mem_wr      = 1'b0;
        wb_ctrl     = 1'b0;
        branch_ctrl = 1'b0;
        alu_s2      = 1'b0;
        alu_ctrl    = 2'b00;

        if (opcode == 7'b0110011) begin  // R-type
            reg_wr      = 1'b1;
            wb_ctrl     = 1'b1;
            alu_s2      = 1'b1;
            alu_ctrl    = 2'b10;
        end else if (opcode == 7'b0010011) begin  // I-type
            reg_wr      = 1'b1;
            wb_ctrl     = 1'b1;
            alu_ctrl    = 2'b00;
        end else if (opcode == 7'b0000011) begin  // Load
            reg_wr      = 1'b1;
            mem_rd      = 1'b1;
            alu_ctrl    = 2'b01;
        end else if (opcode == 7'b0100011) begin  // Store
            mem_wr      = 1'b1;
            alu_ctrl    = 2'b01;
        end else if (opcode == 7'b1100011) begin  // Branch
            branch_ctrl = 1'b1;
            alu_ctrl    = 2'b11;
        end else if (opcode == 7'b0110111) begin  // LUI
            reg_wr      = 1'b1;
            wb_ctrl     = 1'b1;
            alu_ctrl    = 2'b01;
        end else if (opcode == 7'b0010111) begin  // AUIPC
            reg_wr      = 1'b1;
            wb_ctrl     = 1'b1;
            alu_ctrl    = 2'b01;
        end else if (opcode == 7'b1101111 || opcode == 7'b1100111) begin  // JAL/JALR
            reg_wr      = 1'b1;
            wb_ctrl     = 1'b1;
            alu_ctrl    = 2'b01;
        end
    end
endmodule
