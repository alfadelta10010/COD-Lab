.data
a: .word 5, 3, 8, 1, 4   # Array of integers
n: .word 5               # Size of the array

.text
main:
    la x10, a              # Load base address of array into x10
    lw x11, n              # Load number of elements into x11
    addi x12, x11, -1      # Set x12 = n - 1 (last index)

outer_loop:
    addi x13, x0, 0        # Initialize outer loop counter (i = 0)

outer_loop_condition:
    bge x13, x12, end_outer_loop  # If i >= n-1, exit outer loop

    addi x14, x0, 0        # Initialize inner loop counter (j = 0)
    addi x15, x0, 0        # Initialize swapped flag to indicate if a swap occurred

inner_loop:
    add x16, x14, x14      # x16 = j * 2 (to multiply by 4 in subsequent operations)
    add x16, x16, x10      # x16 = base address of array + 4*j
    lw x17, 0(x16)         # Load array[j]
    lw x18, 4(x16)         # Load array[j+1]

    blt x17, x18, no_swap   # If array[j] < array[j+1], no swap

    # Swap array[j] and array[j+1]
    sw x18, 0(x16)         # Store array[j+1] in array[j]
    sw x17, 4(x16)         # Store array[j] in array[j+1]

    addi x15, x0, 1         # Set swapped flag to indicate a swap occurred

no_swap:
    addi x14, x14, 1       # Increment inner loop counter
    bge x14, x12, outer_loop_increment # If j >= n-1-i, exit inner loop
    j inner_loop           # Repeat inner loop

outer_loop_increment:
    addi x13, x13, 1       # Increment outer loop counter
    la x10, a              # Reset base address for next outer iteration

    bnez x15, outer_loop   # If swapped flag is set (non-zero), repeat outer loop
    j end_outer_loop       # If no swaps occurred (array is sorted), exit

end_outer_loop:
    ecall                  # Exit syscall