week3
a..data
a: .byte   0x1e,0x28,0x18,0xe0,0x05
b: .byte 0,0,0,0,0
.text
la,x20,a
la x21,b
#lbu x5,0(x20)
addi x22,x0,5  #counter x22 20,21,5,a0,x1,27,0
back: lbu a0,0(x20)
jal x1,twoof5
sb x27,0(x21)
addi x20,x20,1
addi x21,x21,1
addi x22,x22,-1
bne x22,x0,back
same:jal x0,same


twoof5:andi,x6,a0,0xe0
       bne x6,x0,exit1
       
back2: andi x6,a0,0x01
      beq x6,x0,next
      addi x25,x25,01
next: srli x20,x20,1
      addi,x22,x22,-1
      bne x22,x0,back2
      addi x26,x0,2
      bne x25,x26,exit1
      andi x24,x0,0x01
      beq x0,x0,exit2 
      exit: addi x0,x0,0
      jalr x0,x1,0   
      exit2:nop
      exit1:nop            
    
 
b..data
a: .byte   0x1e,0x28,0x18,0xe0,0x05
b: .byte 0,0,0,0,0
.text
la,x20,a
la x21,b
#lbu x5,0(x20)
addi x22,x0,5  #counter x22 20,21,5,a0,x1,27,0
back: lbu a0,0(x20)
jal x1,twoof5
sb x27,0(x21)
addi x20,x20,1
addi x21,x21,1
addi x22,x22,-1
bne x22,x0,back
same:jal x0,same


twoof5:andi,x6,a0,0xe0
       bne x6,x0,exit1
       
back2: andi x6,a0,0x01
      beq x6,x0,next
      addi x25,x25,01
next: srli x20,x20,1
      addi,x22,x22,-1
      bne x22,x0,back2
      addi x26,x0,2
      bne x25,x26,exit1
      andi x24,x0,0x01
      beq x0,x0,exit2 
      exit: addi x0,x0,0
      jalr x0,x1,0   
      exit2:nop
      exit1:nop            
    
 week4
a.
.data                   # Data segment
array: .word 10, 20, 30, 40, 50, 60, 70   # Example array
target: .word 30       # The number we are searching for
n: .word 7             # Size of the array

.text                   # Code segment
.globl main

main:
    # Load the base address of the array into $a0
    la x10, array       # $a0 = address of array
    # Load the target number into $a1
    la x1, target      # $a1 = address of target number
    lw x1, 0(x1)      # $a1 = target number
    # Load the array size (n) into $a2
    la x2, n           # $a2 = address of size n
    lw x2, 0(x2)      # $a2 = size of array

    # Initialize the index to 0
    li x10, 0           # $t0 = index = 0

search_loop:
    # Compare the current element with the target
    lw x1, 0(x10)      # $t1 = array[index]
    beq x1, x1, found  # If array[index] == target, jump to found

    # Increment the index and move to the next element
    addi x10, x10, 1    # index++
    addi x10, x10, 4    # Move to the next element (4 bytes per word)
    bne x10, x2, search_loop # If index != n, continue the loop

    # If we reach here, the target is not in the array
    li x12, 10          # Exit program
  #  syscall

found:
    # Target found, print the index
    li x12, 1           # Print integer syscall
    addi x10, x10 ,0      # Move index to $a0
   # syscall

    # Exit program
    li x10, 10          # Exit program
    #syscall

b.
.data                   # Data segment
array: .word 10, 20, 30, 40, 50, 60, 70   # Example array
target: .word 30       # The number we are searching for
n: .word 7             # Size of the array

.text                   # Code segment
.globl main

main:
    # Load the base address of the array into $a0
    la x10, array       # $a0 = address of array
    # Load the target number into $a1
    la x1, target      # $a1 = address of target number
    lw x1, 0(x1)      # $a1 = target number
    # Load the array size (n) into $a2
    la x2, n           # $a2 = address of size n
    lw x2, 0(x2)      # $a2 = size of array

    # Initialize the index to 0
    li x10, 0           # $t0 = index = 0

search_loop:
    # Compare the current element with the target
    lw x1, 0(x10)      # $t1 = array[index]
    beq x1, x1, found  # If array[index] == target, jump to found

    # Increment the index and move to the next element
    addi x10, x10, 1    # index++
    addi x10, x10, 4    # Move to the next element (4 bytes per word)
    bne x10, x2, search_loop # If index != n, continue the loop

    # If we reach here, the target is not in the array
    li x12, 10          # Exit program
  #  syscall

found:
    # Target found, print the index
    li x12, 1           # Print integer syscall
    addi x10, x10 ,0      # Move index to $a0
   # syscall

    # Exit program
    li x10, 10          # Exit program
    #syscall
b.

.data                   # Data segment
array: .word 10, 20, 30, 40, 50, 60, 70   # Example array
target: .word 30       # The number we are searching for
n: .word 7             # Size of the array

.text                   # Code segment
.globl main

main:
    # Load the base address of the array into $a0
    la x10, array       # $a0 = address of array
    # Load the target number into $a1
    la x1, target      # $a1 = address of target number
    lw x1, 0(x1)      # $a1 = target number
    # Load the array size (n) into $a2
    la x2, n           # $a2 = address of size n
    lw x2, 0(x2)      # $a2 = size of array

    # Initialize the index to 0
    li x10, 0           # $t0 = index = 0

search_loop:
    # Compare the current element with the target
    lw x1, 0(x10)      # $t1 = array[index]
    beq x1, x1, found  # If array[index] == target, jump to found

    # Increment the index and move to the next element
    addi x10, x10, 1    # index++
    addi x10, x10, 4    # Move to the next element (4 bytes per word)
    bne x10, x2, search_loop # If index != n, continue the loop

    # If we reach here, the target is not in the array
    li x12, 10          # Exit program
  #  syscall

found:
    # Target found, print the index
    li x12, 1           # Print integer syscall
    addi x10, x10 ,0      # Move index to $a0
   # syscall

    # Exit program
    li x10, 10          # Exit program
    #syscall


week5
a.
    .data
array:  .word 18, 45, 11, 63, 91, 72   # Array of integers
size:   .word 6                        # Size of the array

    .text
    .globl _start
_start:
    la t0, array            # Load the address of the array into t0
    la t1, size             # Load the address of the size into t1
    lw t1, 0(t1)            # Load the size value into t1 (number of elements)
    li t2, 0                # Initialize loop counter (index i = 0)

check_loop:
    bge t2, t1, end_program # If i >= size, exit the loop
    lw t3, 0(t0)            # Load the current element from array[i] into t3

    # Check divisibility by 9
    li t4, 9                # Load the divisor 9 into t4
    div t5, t3, t4          # Divide t3 by 9, quotient in t5, remainder in t6
    rem t6, t3, t4          # Remainder of t3 divided by 9 into t6
    beq t6, zero, divisible_by_9 # If remainder is 0, it's divisible by 9

    # If not divisible by 9, continue to the next element
    j next_element

divisible_by_9:
    # Do something if divisible by 9 (for now we do nothing)
    # You can add code here to save or print the result

next_element:
    addi t2, t2, 1          # Increment index i (t2 = t2 + 1)
    addi t0, t0, 4 
    add x5,x5,t0         # Move to the next element in the array (t0 = t0 + 4)
    j check_loop            # Repeat the loop

end_program:
 
   li x2, 10              
   
b.    .data
array:  .word 18, 45, 11, 63, 91, 72   # Array of integers
size:   .word 6                        # Size of the array

    .text
    
_start:
    la t0, array            # Load the address of the array into t0
    la t1, size             # Load the address of the size into t1
    lw t1, 0(t1)            # Load the size value into t1 (number of elements)
    li t2, 0                # Initialize loop counter (index i = 0)

check_loop:
    bge t2, t1, end_program # If i >= size, exit the loop
    lw t3, 0(t0)            # Load the current element from array[i] into t3

    # Check divisibility by 9
    li t4, 9                # Load the divisor 9 into t4
    div t5, t3, t4          # Divide t3 by 9, quotient in t5, remainder in t6
    rem t6, t3, t4          # Remainder of t3 divided by 9 into t6
    beq t6, zero, divisible_by_9 # If remainder is 0, it's divisible by 9

    # If not divisible by 9, continue to the next element
    j next_element

divisible_by_9:
    # Do something if divisible by 9 (for now we do nothing)
    # You can add code here to save or print the result

next_element:
    addi t2, t2, 1          # Increment index i (t2 = t2 + 1)
    addi t0, t0, 4 
    add x5,x5,t0         # Move to the next element in the array (t0 = t0 + 4)
    j check_loop            # Repeat the loop

end_program:
 
   li x2, 10              
   
c.    .data
a:  .half 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234
b:  .half 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234
c:  .half 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234

    .text
    .globl _start
_start:
    li      x10, 0              # i = 0
    la      x1, a               # Load address of array a
    la      x2, b               # Load address of array b
    la      x3, c               # Load address of array c
    li      x4, 10              # Loop counter for 10 iterations

loop:
    bge     x10, x4, end_loop   # If i >= 10, exit loop

    # Load a[i], b[i] into registers
    lh      x5, 0(x1)           # Load a[i] into x5
    lh      x6, 0(x2)           # Load b[i] into x6
    mul     x7, x5, x6          # x7 = a[i] * b[i]

    # Load c[i-1] (previous value of c)
    beq     x10, x0, first      # If i == 0, no c[i-1]
    addi    x8, x10, -1         # i-1
    slli    x8, x8, 1           # Multiply by 2 to index shorts
    add     x9, x3, x8          # Compute address of c[i-1]
    lh      x9, 0(x9)           # Load c[i-1] into x9
    add     x7, x7, x9          # x7 = a[i] * b[i] + c[i-1]

first:
    # Store result in c[i]
    sh      x7, 0(x3)           # Store result in c[i]

    # Increment indices and loop
    addi    x10, x10, 1         # i++
    addi    x1, x1, 2           # Move to next element in a (2 bytes per element)
    addi    x2, x2, 2           # Move to next element in b (2 bytes per element)
    addi    x3, x3, 2           # Move to next element in c (2 bytes per element)
    j       loop

end_loop:
    # End program (could be a syscall to exit)
    li      x12, 10             # Exit syscall number
    ecall
d.
week6
a.# Bubble sort program for RISC-V assembly

# Registers used:
# t0 - outer loop index (i)
# t1 - inner loop index (j)
# t2 - temporary storage for swapping
# t3 - address offset for current element
# t4 - address offset for next element
# t5 - current array element
# t6 - next array element
# a0 - N (size of the array)

# Array is assumed to be stored at label `array`.

.data
array:  .word 12, 7, 14, 3, 8  # Example array to be sorted
N:      .word 5                # Size of the array

.text

    # Load the size of the array (N) into a0
    la x10, N
    lw x1, 0(x10)

    # Outer loop: for (i = 0; i < N-1; i++)
outer_loop:
    li x10, 0                  # Initialize i = 0
    
    outer_loop_check:
        bge x10, x1, end_outer_loop  # If i >= N-1, exit loop
        addi x1, x1, -1             # Reduce N by 1 for each iteration
        
        # Inner loop: for (j = 0; j < N-i-1; j++)
        li x11, 0                # Initialize j = 0
        
    inner_loop:
        add x3, x11, x11          # Calculate address offset for j (index * 4) ti=x11,a1=x1,t0=x10
        slli t3, t3, 2
        
        addi x4, x3, 4           # Calculate address offset for j+1 (index * 4 + 4)

        la x2, array            # Load base address of the array
        add x3, x2, x3          # Address of array[j]
        add x4, x2, x4          # Address of array[j+1]
        
        lw x5, 0(x3)            # Load array[j]
        lw x6, 0(x4)            # Load array[j+1]
        
        # Compare and swap if needed
        blt x6, x5, swap
        
        # Increment inner loop index j and check loop condition
        addi x11, x11, 1
        blt x11, x1, inner_loop
        j end_inner_loop
        
    swap:
        # Swap array[j] and array[j+1]
        sw x6, 0(x3)            # array[j] = array[j+1]
        sw x5, 0(x4)            # array[j+1] = array[j]
        j inner_loop
        
    end_inner_loop:
        addi x0, x0, 1          # Increment i for the next pass
        j outer_loop
        
end_outer_loop:
    nop
b.
    .data
number: .word 5           # Number to calculate the factorial of
result: .word 1           # Initial value of the result (set to 1)

    .text
 

main:
    # Load the number into a register
    la x10, number         # Load address of 'number' into t0=x10
    lw x11, 0(x10)          # Load the value of 'number' into t1=x11

    la x2, result         # Load address of 'result' into t2=x2
    li x3, 1              # t3 = 1, the initial result for factorial

    # Check if the number is 0 or 1 (base case)
    beqz x11, end_iter     # If t1 (number) is 0, jump to end_iter
    li x4, 1
    beq x11, x4, end_iter  # If t1 (number) is 1, jump to end_iter

factorial_loop:
    mul x3, x3, x11        # t3 = t3 * t1 (current factorial)
    addi x11, x11, -1       # t1 = t1 - 1
    bgtz x11, factorial_loop  # If t1 > 0, continue loop

end_iter:
    sw x3, 0(x2)          # Store the result in 'result'
    nop
c.
# Program to multiply two 2x2 matrices and store the result in a third matrix
# Matrix A: [ 1  2 ]
#           [ 3  4 ]
# Matrix B: [ 5  6 ]
#           [ 7  8 ]

# Result matrix C will be:
# C[0][0] = A[0][0] * B[0][0] + A[0][1] * B[1][0]
# C[0][1] = A[0][0] * B[0][1] + A[0][1] * B[1][1]
# C[1][0] = A[1][0] * B[0][0] + A[1][1] * B[1][0]
# C[1][1] = A[1][0] * B[0][1] + A[1][1] * B[1][1]

    .data
A:  .word 1, 2, 3, 4       # Matrix A elements
B:  .word 5, 6, 7, 8       # Matrix B elements
C:  .word 0, 0, 0, 0            # Matrix C for the result (4 words)

    .text
    .globl main

main:
    # Load matrix A elements into registers
    la x10, A               # Load address of A into t0 x10
    lw x1, 0(x10)           # t1 = A[0][0]
    lw x2, 4(x10)           # t2 = A[0][1]
    lw x3, 8(x10)           # t3 = A[1][0]
    lw x4, 12(x10)          # t4 = A[1][1]

    # Load matrix B elements into registers
    la x5, B               # Load address of B into t5
    lw x6, 0(x5)           # t6 = B[0][0]
    lw x7, 4(x5)           # t7 = B[0][1]
    lw x8, 8(x5)           # t8 = B[1][0]
    lw x9, 12(x5)          # t9 = B[1][1]

    # Compute C[0][0] = A[0][0] * B[0][0] + A[0][1] * B[1][0] t10=x11
    mul x11, x1, x6        # t10 = A[0][0] * B[0][0]=x11
    mul x12, x2, x8        # t11 = A[0][1] * B[1][0] =x12
    add x13, x11, x12      # t12 = C[0][0] =x13

    # Store C[0][0] in the result matrix
    la x10, C               # Load address of C into t0
    sw x13, 0(x10)          # Store C[0][0]

    # Compute C[0][1] = A[0][0] * B[0][1] + A[0][1] * B[1][1]
    mul x11, x1, x7        # t10 = A[0][0] * B[0][1]
    mul x12, x2, x9        # t11 = A[0][1] * B[1][1]
    add x13, x11, x12      # t12 = C[0][1]

    # Store C[0][1] in the result matrix
    sw x13, 4(x10)          # Store C[0][1]

    # Compute C[1][0] = A[1][0] * B[0][0] + A[1][1] * B[1][0]
    mul x11, x3, x6        # t10 = A[1][0] * B[0][0]
    mul x12, x4, x8        # t11 = A[1][1] * B[1][0]
    add x13, x11, x12      # t12 = C[1][0]

    # Store C[1][0] in the result matrix
    sw x13, 8(x10)          # Store C[1][0]

    # Compute C[1][1] = A[1][0] * B[0][1] + A[1][1] * B[1][1]
    mul x10, x3, x7        # t10 = A[1][0] * B[0][1]
    mul x12, x4, x9        # t11 = A[1][1] * B[1][1]
    add x13, x11, x12      # t12 = C[1][1]

    # Store C[1][1] in the result matrix
    sw x13, 12(x10)      
    nop

week6 sv
a.module async_reset_dff (
    input  logic clk,    // Clock input
    input  logic reset,  // Asynchronous reset input
    input  logic d,      // Data input
    output logic q       // Output
);

    // Asynchronous reset logic
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;   // Reset state (active high)
        else
            q <= d;      // Capture data on the rising edge of the clock
    end

endmodule

b.
module sync_reset_dff (
    input logic clk,       // Clock input
    input logic reset,     // Synchronous reset input
    input logic d,         // Data input
    output logic q         // Data output
);

    always_ff @(posedge clk) begin
        if (reset) begin
            q <= 0;        // Reset the output to 0 on a synchronous reset
        end else begin
            q <= d;        // Transfer data to output on clock edge
        end
    end

endmodule

c.module mux3to1 (
    input  logic [1:0] sel,   // 2-bit select signal to choose one of 3 inputs
    input  logic       in0,   // Input 0
    input  logic       in1,   // Input 1
    input  logic       in2,   // Input 2
    output logic       out    // Output of the MUX
);

    always_comb begin
        case (sel)
            2'b00: out = in0;  // When sel is 00, output is in0
            2'b01: out = in1;  // When sel is 01, output is in1
            2'b10: out = in2;  // When sel is 10, output is in2
            default: out = 1'b0; // Default case to handle unused 11 state
        endcase
    end

endmodule
d.module mux2to1 (
    input  logic sel,   // 1-bit select signal to choose one of 2 inputs
    input  logic in0,   // Input 0
    input  logic in1,   // Input 1
    output logic out    // Output of the MUX
);

    always_comb begin
        if (sel) 
            out = in1;  // When sel is 1, output is in1
        else 
            out = in0;  // When sel is 0, output is in0
    end

endmodule
5.
module full_adder (
    input  logic a,      // Input bit A
    input  logic b,      // Input bit B
    input  logic cin,    // Carry-in bit
    output logic sum,    // Sum output
    output logic cout    // Carry-out bit
);

    // Combinational logic for full adder
    always_comb begin
        sum  = a ^ b ^ cin;  // Sum is the XOR of A, B, and Cin
        cout = (a & b) | (cin & (a ^ b)); // Carry-out is the OR of (A AND B) and (Cin AND (A XOR B))
    end

endmodule
6.
module if (
    input wire clk,            // Clock input
    input wire reset,          // Reset signal
    input wire [31:0] pc_in,   // Program Counter input from the previous stage (or reset)
    output reg [31:0] inst_out, // Output instruction to the next stage
    output reg [31:0] pc_out   // Updated Program Counter to the next stage
);

    // Register to hold the Program Counter (PC)
    reg [31:0] pc;

    // Memory array (simple ROM for storing instructions)
    reg [31:0] instruction_memory [0:1023]; // Assuming 1K memory for example

    // Program Counter Increment value (4 bytes per instruction in RISC-V)
    parameter PC_INCREMENT = 4;

    // Instruction Fetch logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset PC to initial value, typically set to the reset vector (e.g., 0x00000000)
            pc <= 32'h00000000; 
        end else begin
            // Fetch the instruction from memory using the current PC
            inst_out <= instruction_memory[pc >> 2]; // Memory access is word-aligned, so shift PC by 2
            pc <= pc_in; // Update PC to the input PC
        end
    end

    // Output the new Program Counter
    always @(posedge clk) begin
        pc_out <= pc + PC_INCREMENT; // Increment PC by 4 for next instruction
    end

endmodule
7.
module im (
    input wire [31:0] address,      // 32-bit address input (Program Counter)
    output reg [31:0] instruction,  // 32-bit instruction output (fetched instruction)
    input wire clk,                 // Clock signal
    input wire reset                // Reset signal
);

    // Memory declaration: 1024 x 32-bit words (1K instructions)
    reg [31:0] memory [0:1023];  // 1K x 32-bit instruction memory

    // Initialization of memory with some default instructions (for example purposes)
    // These could be replaced by actual hardware initialization (e.g., using a ROM, BRAM, or loading external data)
    initial begin
        // Initialize memory with some default instructions.
        memory[0]  = 32'h00000093;  // Example instruction: LUI x1, 0x0
        memory[1]  = 32'h00000013;  // Example instruction: ADDI x2, x0, 0
        memory[2]  = 32'h00000193;  // Example instruction: ADDI x3, x0, 1
        memory[3]  = 32'h00000293;  // Example instruction: ADDI x4, x0, 2
        memory[4]  = 32'h00000393;  // Example instruction: ADDI x5, x0, 3
        // Add more instructions as needed...
    end

    // Instruction fetch logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // If reset is asserted, set the instruction to zero (optional)
            instruction <= 32'b0;
        end else begin
            // Fetch instruction from memory based on the address provided by the Program Counter
            // Assuming the address is word-aligned (PC is a multiple of 4)
            instruction <= memory[address[31:2]];  // Right shift address by 2 to get the word-aligned index
        end
    end

endmodule

week7
a.module riscv_decode_stage1 (
    input wire clk,
    input wire rst,
    input wire [31:0] instruction,
    input wire [4:0] write_reg,
    input wire [31:0] write_data,
    input wire write_enable,
    output wire [31:0] rs1_data,
    output wire [31:0] rs2_data,
    output wire [31:0] immediate,
    output wire [6:0] opcode,
    output wire [2:0] funct3,
    output wire [6:0] funct7,
    output wire [4:0] rd,
    output wire [4:0] rs1,
    output wire [4:0] rs2
);

    // Internal wires
    wire [31:0] decoded_immediate;

    // Instantiate the decoder
    wire [6:0] decoded_opcode;
    wire [2:0] decoded_funct3;
    wire [6:0] decoded_funct7;
    wire [4:0] decoded_rd;
    wire [4:0] decoded_rs1;
    wire [4:0] decoded_rs2;

    decoder1 u_decoder (
        .instruction(instruction),
        .opcode(decoded_opcode),
        .funct3(decoded_funct3),
        .funct7(decoded_funct7),
        .rd(decoded_rd),
        .rs1(decoded_rs1),
        .rs2(decoded_rs2),
        .immediate(decoded_immediate)
    );

    // Instantiate the register file
    regfile2 u_regfile (
        .clk(clk),
        .rst(rst),
        .rs1(decoded_rs1),
        .rs2(decoded_rs2),
        .rd(write_reg),
        .wd(write_data),
        .we(write_enable),
        .rd1(rs1_data),
        .rd2(rs2_data)
    );

    // Instantiate the sign extension module
    sign_extension u_sign_extension (
        .imm_in(decoded_immediate),
        .imm_out(immediate)
    );

    // Assign outputs
    assign opcode = decoded_opcode;
    assign funct3 = decoded_funct3;
    assign funct7 = decoded_funct7;
    assign rd = decoded_rd;
    assign rs1 = decoded_rs1;
    assign rs2 = decoded_rs2;

endmodule

b.module decoder1 (
    input wire [31:0] instruction,
    output reg [6:0] opcode,
    output reg [2:0] funct3,
    output reg [6:0] funct7,
    output reg [4:0] rd,
    output reg [4:0] rs1,
    output reg [4:0] rs2,
    output reg [31:0] immediate
);

    always @(*) begin
        // Extracting fields from the instruction
        opcode = instruction[6:0];       // Opcode
        rd = instruction[11:7];          // Destination register
        funct3 = instruction[14:12];     // Function code
        rs1 = instruction[19:15];        // Source register 1
        rs2 = instruction[24:20];        // Source register 2
        funct7 = instruction[31:25];     // Function code (extended)

        // Immediate extraction based on opcode
        case (opcode)
            7'b0000011,  // Load (I-type)
            7'b0010011:  // ALU immediate (I-type)
                immediate = {{20{instruction[31]}}, instruction[31:20]};
            7'b1100011:  // Branch (B-type)
                immediate = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
            7'b0100011:  // Store (S-type)
                immediate = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
            7'b1101111:  // Jump and link (J-type)
                immediate = {{11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
            default:
                immediate = 32'b0; // Default case for unsupported instructions
        endcase
    end

endmodule
c.
module regfile2 (
    input wire clk,
    input wire rst,
    input wire [4:0] rs1,
    input wire [4:0] rs2,
    input wire [4:0] rd,
    input wire [31:0] wd,
    input wire we, // Write enable
    output reg [31:0] rd1,
    output reg [31:0] rd2
);
    reg [31:0] registers [0:31]; // 32 registers

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset all registers to zero
            integer i;
            for (i = 0; i < 32; i = i + 1) begin
                registers[i] <= 32'b0;
            end
        end else if (we) begin
            registers[rd] <= wd; // Write data to the register
        end
    end

    always @(*) begin
        rd1 = registers[rs1]; // Read data from rs1
        rd2 = registers[rs2]; // Read data from rs2
    end
endmodule

d.
module sign_extension (
    input wire [11:0] imm_in, // Example for a 12-bit immediate
    output reg [31:0] imm_out
);
    always @(*) begin
        imm_out = {{20{imm_in[11]}}, imm_in}; // Sign extend to 32 bits
    end
endmodule

week8
a.
module ie(
    input logic [31:0] instruction,    // 32-bit instruction from decode stage
    input logic [31:0] rs1_data,       // data from rs1
    input logic [31:0] rs2_data,       // data from rs2
    input logic [31:0] imm,            // immediate value
    input logic [3:0] alu_op,          // ALU operation control signal
    output logic [31:0] result,        // ALU result to next stage
    output logic branch_taken,         // branch decision (used in branch instructions)
    output logic [31:0] pc_next        // next program counter (used for branches)
);

    // ALU control operation values
    localparam ALU_ADD  = 4'b0000;      // Add operation
    localparam ALU_SUB  = 4'b0001;      // Subtract operation
    localparam ALU_AND  = 4'b0010;      // AND operation
    localparam ALU_OR   = 4'b0011;      // OR operation
    localparam ALU_XOR  = 4'b0100;      // XOR operation
    localparam ALU_SLT  = 4'b0101;      // Set Less Than operation
    localparam ALU_SLTU = 4'b0110;      // Set Less Than Unsigned operation

    // Branch conditions
    localparam BRANCH_EQ  = 2'b00;      // BEQ
    localparam BRANCH_NEQ = 2'b01;      // BNE
    localparam BRANCH_LT  = 2'b10;      // BLT
    localparam BRANCH_GE  = 2'b11;      // BGE

    // Intermediate signals
    logic [31:0] alu_result;
    logic branch_condition;

    // ALU Logic (Perform arithmetic or logical operations)
    always_comb begin
        case(alu_op)
            ALU_ADD: alu_result = rs1_data + rs2_data;  // ADD
            ALU_SUB: alu_result = rs1_data - rs2_data;  // SUB
            ALU_AND: alu_result = rs1_data & rs2_data;  // AND
            ALU_OR:  alu_result = rs1_data | rs2_data;  // OR
            ALU_XOR: alu_result = rs1_data ^ rs2_data;  // XOR
            ALU_SLT: alu_result = (rs1_data < rs2_data) ? 32'b1 : 32'b0;  // SLT
            ALU_SLTU: alu_result = ($unsigned(rs1_data) < $unsigned(rs2_data)) ? 32'b1 : 32'b0;  // SLTU
            default: alu_result = 32'b0; // Default case (should not happen)
        endcase
    end

    // Branch Decision Logic (to handle BEQ, BNE, etc.)
    always_comb begin
        case (instruction[14:12])  // The funct3 field
            3'b000: branch_condition = (rs1_data == rs2_data);  // BEQ
            3'b001: branch_condition = (rs1_data != rs2_data);  // BNE
            3'b100: branch_condition = (rs1_data < rs2_data);   // BLT
            3'b101: branch_condition = (rs1_data >= rs2_data);  // BGE
            default: branch_condition = 0;
        endcase
    end

    // Set the output result and branch signal
    always_comb begin
        result = alu_result;         // Set ALU result
        branch_taken = branch_condition;  // If branch condition is met
        if (branch_taken) 
            pc_next = imm;           // If branch is taken, set the PC to the immediate value
        else
            pc_next = 32'b0;         // If not, PC remains unchanged or the next instruction
    end
endmodule

b.module alu (
    input wire [31:0] a,           // First operand
    input wire [31:0] b,           // Second operand
    input wire [3:0] alu_op,       // ALU operation control signal
    output reg [31:0] result,      // ALU result
    output reg zero_flag          // Zero flag for branching conditions
);

    // ALU Operations (e.g., Add, Sub, AND, OR, etc.)
    always @(*) begin
        case (alu_op)
            4'b0000: result = a + b;       // ADD
            4'b0001: result = a - b;       // SUB
            4'b0010: result = a & b;       // AND
            4'b0011: result = a | b;       // OR
            4'b0100: result = a ^ b;       // XOR
            4'b0101: result = (a < b) ? 32'b1 : 32'b0; // SLT (Set Less Than)
            default: result = 32'b0;       // Default to zero if unsupported operation
        endcase

        // Set the zero flag if result is zero
        zero_flag = (result == 32'b0);
    end

endmodule

week9
a.
module mas #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 32
)(
    input wire clk,
    input wire reset,
    input wire [ADDR_WIDTH-1:0] mem_addr, // Memory address from RISC-V
    input wire [DATA_WIDTH-1:0] mem_data_in, // Data from RISC-V to memory
    input wire mem_we, // Write enable signal
    output wire [DATA_WIDTH-1:0] mem_data_out // Data read from memory
);

    // Memory instance
    memory #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) memory_inst (
        .clk(clk),
        .reset(reset),
        .we(mem_we),
        .addr(mem_addr),
        .din(mem_data_in),
        .dout(mem_data_out)
    );

endmodule

b.module im (
    input wire [31:0] address,      // 32-bit address input (Program Counter)
    output reg [31:0] instruction,  // 32-bit instruction output (fetched instruction)
    input wire clk,                 // Clock signal
    input wire reset                // Reset signal
);

    // Memory declaration: 1024 x 32-bit words (1K instructions)
    reg [31:0] memory [0:1023];  // 1K x 32-bit instruction memory

    // Initialization of memory with some default instructions (for example purposes)
    // These could be replaced by actual hardware initialization (e.g., using a ROM, BRAM, or loading external data)
    initial begin
        // Initialize memory with some default instructions.
        memory[0]  = 32'h00000093;  // Example instruction: LUI x1, 0x0
        memory[1]  = 32'h00000013;  // Example instruction: ADDI x2, x0, 0
        memory[2]  = 32'h00000193;  // Example instruction: ADDI x3, x0, 1
        memory[3]  = 32'h00000293;  // Example instruction: ADDI x4, x0, 2
        memory[4]  = 32'h00000393;  // Example instruction: ADDI x5, x0, 3
        // Add more instructions as needed...
    end

    // Instruction fetch logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // If reset is asserted, set the instruction to zero (optional)
            instruction <= 32'b0;
        end else begin
            // Fetch instruction from memory based on the address provided by the Program Counter
            // Assuming the address is word-aligned (PC is a multiple of 4)
            instruction <= memory[address[31:2]];  // Right shift address by 2 to get the word-aligned index
        end
    end

endmodule
c.
module memoryacc #(
    parameter DATA_WIDTH = 32,      // Data width of memory (32-bits)
    parameter ADDR_WIDTH = 32       // Address width (supports up to 4GB of memory)
)(
    input wire clk,                // Clock input
    input wire reset,              // Reset signal
    input wire we,                 // Write Enable (1 for write, 0 for read)
    input wire [ADDR_WIDTH-1:0] addr, // Address of the memory location
    input wire [DATA_WIDTH-1:0] din,  // Data input (for writing)
    output wire [DATA_WIDTH-1:0] dout  // Data output (for reading)
);

    // Memory array (simple 2D array to represent memory)
    reg [DATA_WIDTH-1:0] mem [(1<<ADDR_WIDTH)-1:0];

    // Always block for reading and writing memory
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Optionally clear the memory on reset
            integer i;
            for (i = 0; i < (1 << ADDR_WIDTH); i = i + 1) begin
                mem[i] <= '0; // Initialize memory to zero
            end
        end else if (we) begin
            // Write operation
            mem[addr] <= din;
        end
    end

    // Memory read (data out)
    assign dout = (we == 1'b0) ? mem[addr] : '0; // Read only if write enable is 0

endmodule
d.module ws (
    input logic clk,
    input logic reset,
    
    // Inputs from MEM stage
    input logic [31:0] mem_wb_alu_result, // ALU result from MEM stage
    input logic [31:0] mem_wb_read_data,  // Data read from memory in MEM stage
    input logic [4:0] mem_wb_rd,          // Destination register address
    input logic mem_wb_reg_write,         // RegWrite control signal
    
    // Register file interface
    output logic [31:0] reg_file_data,    // Data to write into the register file
    output logic [4:0] reg_file_rd,       // Destination register address
    output logic reg_file_write_enable    // Register write enable signal
);

    // Latch values from MEM stage to WB stage (falling edge triggered)
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset outputs to default values
            reg_file_data <= 32'b0;
            reg_file_rd <= 5'b0;
            reg_file_write_enable <= 1'b0;
        end else begin
            // Determine the data to write into the register file
            if (mem_wb_reg_write) begin
                // If reg_write is enabled, select the appropriate data for writeback
                reg_file_data <= mem_wb_reg_write ? 
                                  (mem_wb_reg_write ? mem_wb_read_data : mem_wb_alu_result) : 
                                  32'b0;
                reg_file_rd <= mem_wb_rd; // The destination register to write to
                reg_file_write_enable <= 1'b1; // Enable write to the register file
            end else begin
                // If reg_write is disabled, don't write anything
                reg_file_write_enable <= 1'b0;
            end
        end
    end

endmodule
5.
module dm #(
    parameter DATA_WIDTH = 32,    // Width of data (32 bits)
    parameter ADDR_WIDTH = 10     // Width of address (1024 memory locations)
)(
    input logic clk,              // Clock signal
    input logic reset,            // Reset signal
    input logic we,               // Write enable signal
    input logic [ADDR_WIDTH-1:0] addr,  // Address input
    input logic [DATA_WIDTH-1:0] din,   // Data input for writing
    output logic [DATA_WIDTH-1:0] dout   // Data output for reading
);

    // Memory array declaration (1024 locations, each of 32 bits)
    logic [DATA_WIDTH-1:0] mem [0:2**ADDR_WIDTH-1];

    // Asynchronous Read
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            dout <= 0;  // Reset the output data on reset
        end else if (!we) begin
            dout <= mem[addr];  // Read data from memory
        end
    end

    // Synchronous Write
    always_ff @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;  // Write data into memory
        end
    end

endmodule

week10
module cu #(
    parameter OPCODE_WIDTH = 6,  // Width of the opcode
    parameter FUNC_WIDTH = 6     // Function code width for R-type instructions
)(
    input logic [OPCODE_WIDTH-1:0] opcode,    // Instruction opcode
    input logic [FUNC_WIDTH-1:0] funct,       // Function code for R-type instructions
    output logic reg_dst,                      // Select register destination (1: R-type, 0: I-type)
    output logic alu_src,                      // ALU source (1: Immediate, 0: Register)
    output logic mem_to_reg,                   // Memory to Register (1: load, 0: other)
    output logic reg_write,                    // Register Write Enable
    output logic mem_write,                    // Memory Write Enable
    output logic branch,                       // Branch control (1: branch, 0: no branch)
    output logic jump,                         // Jump control (1: jump, 0: no jump)
    output logic [3:0] alu_op                  // ALU operation code
);

    // Define opcode values (example values, can be modified)
    localparam R_TYPE = 6'b000000,  // R-type (e.g., ADD, SUB)
               I_TYPE = 6'b001000,  // I-type (e.g., ADDI)
               LOAD = 6'b100011,   // Load instruction (LW)
               STORE = 6'b101011,  // Store instruction (SW)
               BEQ = 6'b000100,    // Branch on equal
               JUMP = 6'b000010;   // Jump instruction

    // ALU operation codes (Example)
    localparam ALU_ADD  = 4'b0000,
               ALU_SUB  = 4'b0001,
               ALU_AND  = 4'b0010,
               ALU_OR   = 4'b0011,
               ALU_XOR  = 4'b0100,
               ALU_SLT  = 4'b0101;

    always_comb begin
        // Default values (reset all control signals)
        reg_dst = 0;
        alu_src = 0;
        mem_to_reg = 0;
        reg_write = 0;
        mem_write = 0;
        branch = 0;
        jump = 0;
        alu_op = ALU_ADD;

        case (opcode)
            R_TYPE: begin
                reg_dst = 1;           // R-type: destination register is rd (not rt)
                alu_src = 0;           // R-type: ALU source is a register (not immediate)
                reg_write = 1;         // R-type: write to register
                mem_to_reg = 0;        // No memory to register
                alu_op = ALU_ADD;      // ALU operation depends on funct code
                case (funct)
                    6'b100000: alu_op = ALU_ADD;  // ADD
                    6'b100010: alu_op = ALU_SUB;  // SUB
                    6'b100100: alu_op = ALU_AND;  // AND
                    6'b100101: alu_op = ALU_OR;   // OR
                    6'b101010: alu_op = ALU_SLT;  // SLT
                    default: alu_op = ALU_ADD;    // Default ALU operation
                endcase
            end

            I_TYPE: begin
                reg_dst = 0;           // I-type: destination register is rt
                alu_src = 1;           // I-type: ALU source is an immediate value
                reg_write = 1;         // I-type: write to register
                mem_to_reg = 0;        // No memory to register
                alu_op = ALU_ADD;      // ALU operation depends on opcode
            end

            LOAD: begin
                reg_dst = 0;           // Load: destination register is rt
                alu_src = 1;           // Load: ALU source is an immediate address
                reg_write = 1;         // Write the data from memory to register
                mem_to_reg = 1;        // Memory data should be written to register
                alu_op = ALU_ADD;      // Address calculation using ADD
            end

            STORE: begin
                alu_src = 1;           // Store: ALU source is immediate address
                mem_write = 1;         // Memory write enable
                alu_op = ALU_ADD;      // Address calculation using ADD
            end

            BEQ: begin
                branch = 1;            // Branch if equal
                alu_op = ALU_SUB;      // ALU operation is SUB for BEQ
            end

            JUMP: begin
                jump = 1;              // Jump control signal
            end

            default: begin
                // For unsupported opcodes, default to no operation
                alu_op = ALU_ADD;
            end
        endcase
    end

endmodule

