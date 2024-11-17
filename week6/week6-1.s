.data
a:  .word 15, 8, 12  # Array of 3 elements
n:  .word 3          # Number of elements in the array (N)

.text
.globl _start
_start:
    la x6, n               # Load address of N
    lw x21, 0(x6)          # Load the value of N into x21
    addi x21, x21, -1      # Set the outer loop limit to (N - 1)

    li x1, 0               # Outer loop counter (i)

loop1:
    li x2, 0               # Inner loop counter (j)
    la x10, a              # Load the base address of the array into x10

loop2:
    lw x11, 0(x10)         # Load word from address x10 into x11
    lw x12, 4(x10)         # Load word from address x10 + 4 (next element) into x12
    ble x11, x12, no_swap  # If x11 <= x12, no need to swap

    # Swap elements
    sw x12, 0(x10)         # Store x12 (larger) in the current position
    sw x11, 4(x10)         # Store x11 (smaller) in the next position

no_swap:
    addi x10, x10, 4       # Increment the pointer to the next element (4 bytes)
    addi x2, x2, 1         # Increment inner loop counter (j)
    sub x6, x21, x1        # Calculate the effective limit for inner loop (N - 1 - i)
    bge x2, x6, end_inner_loop # If j >= (N - 1 - i), end inner loop

    j loop2                # Continue inner loop

end_inner_loop:
    addi x1, x1, 1         # Increment outer loop counter (i)
    bge x1, x21, end_program  # Stop outer loop if i >= (N - 1)

    j loop1                # Continue outer loop

end_program:
    # Exit program without infinite loop
    li a7, 93              # Exit syscall number for RISC-V
    ecall
