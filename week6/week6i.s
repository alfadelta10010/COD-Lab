.data
a: .word 5, 3, 8, 1, 4   # Array of integers
n: .word 5                # Size of the array

.text
.globl main
main:
    # Load the number of elements
    la x10, a              # Load base address of array into x10
    lw x11, n              # Load number of elements into x11
    addi x12, x11, -1      # Set x12 = n - 1 (last index)

outer_loop:
    li x13, 0              # Initialize outer loop counter (i = 0)

outer_loop_condition:
    bge x13, x12, end_outer_loop  # If i >= n-1, exit outer loop

    li x14, 0              # Initialize inner loop counter (j = 0)
    li x15, 0              # Initialize swapped flag to indicate if a swap occurred

inner_loop:
    bge x14, x12, outer_loop_increment # If j >= n-1-i, exit inner loop
    
    lw x16, 0(x10)         # Load array[j]
    lw x17, 4(x10)         # Load array[j+1]

    blt x16, x17, no_swap   # If array[j] < array[j+1], no swap

    # Swap array[j] and array[j+1]
    sw x17, 0(x10)         # Store array[j+1] in array[j]
    sw x16, 4(x10)         # Store array[j] in array[j+1]
    
    li x15, 1               # Set swapped flag to indicate a swap occurred

no_swap:
    addi x10, x10, 4       # Move to next element (array[j+1])
    addi x14, x14, 1       # Increment inner loop counter
    j inner_loop           # Repeat inner loop

outer_loop_increment:
    addi x13, x13, 1       # Increment outer loop counter
    la x10, a              # Reset base address for next outer iteration

    bnez x15, outer_loop   # If swapped flag is set (non-zero), repeat outer loop
    j end_outer_loop       # If no swaps occurred (array is sorted), exit

end_outer_loop:
    li a7, 10              # Exit syscall
    ecall