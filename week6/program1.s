.data
array: .word 12, 7, 19, 3, 5, 1, 8, 15  # Define a different unsorted array
n: .word 8                            # Number of elements in the array

.text
    la x10, array          # Load the base address of the array into x10
    lw x11, n              # Load the size of the array (N) into x11
    addi x11, x11, -1      # Set x11 to N-1 for sorting (outer loop range)

outer_loop_start:           # Outer loop start
    addi x1, x0, 0         # Reset inner loop counter (i = 0)
    la x12, array          # Reset array pointer to the beginning (x12)

inner_loop_start:           # Inner loop start
    lw x13, 0(x12)         # Load current element into x13
    lw x14, 4(x12)         # Load next element into x14
    blt x13, x14, skip_swap  # If current < next, no swap needed

    # Swap logic
    sw x14, 0(x12)         # Store next element in the current position
    sw x13, 4(x12)         # Store current element in the next position

skip_swap:
    addi x12, x12, 4       # Move pointer to the next element
    addi x1, x1, 1         # Increment inner loop counter
    blt x1, x11, inner_loop_start # Continue inner loop if x1 < x11

    addi x11, x11, -1      # Reduce the range for the next pass
    bgtz x11, outer_loop_start   # If x11 > 0, repeat outer loop
