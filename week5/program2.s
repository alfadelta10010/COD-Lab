.data
a: .word 1, 2, 3, 4, 5        # Input array A
b: .word 2, 4, 6, 8, 10       # Input array B
c: .space 20                  # Output array C (space for 5 integers)
size: .word 5                 # Size of the arrays

.text
.globl main
main:
    la x10, a                 # Load base address of A into x10
    la x11, b                 # Load base address of B into x11
    la x12, c                 # Load base address of C into x12
    lw x13, size              # Load size of arrays into x13
    li x14, 0                 # Initialize C[-1] to 0 (x14 stores C[i-1])

loop:
    beqz x13, end_loop        # Exit if size is 0
    lw x15, 0(x10)            # Load A[i] into x15
    lw x16, 0(x11)            # Load B[i] into x16
    mul x17, x15, x16         # A[i] * B[i] -> x17
    add x17, x17, x14         # A[i] * B[i] + C[i-1] -> x17
    sw x17, 0(x12)            # Store result in C[i]
    mv x14, x17               # Update C[i-1] (x14 = x17)
    addi x10, x10, 4          # Move to next A[i]
    addi x11, x11, 4          # Move to next B[i]
    addi x12, x12, 4          # Move to next C[i]
    addi x13, x13, -1         # Decrement size
    j loop

end_loop:
    li x17, 10                # Syscall for exit
    ecall                     # Exit program

