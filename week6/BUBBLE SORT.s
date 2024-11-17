.data
array: .word 6, 3, 8, 5, 2, 7, 4, 1  # Define the unsorted array
n: .word 8                           # Number of elements in the array

.text
    la x10, array          # Load the base address of the array into x10
    lw x11, n              # Load the size of the array (N) into x11
    addi x11, x11, -1      # Set x11 to N-1 for sorting (outer loop range)

outer_loop:                # Outer loop label
    addi x1, x0, 0         # Inner loop counter (reset to 0)
    la x12, array          # Reset pointer to start of the array (x12)

inner_loop:                # Inner loop label
    lw x13, 0(x12)         # Load current element into x13
    lw x14, 4(x12)         # Load next element into x14
    blt x13, x14, no_swap  # If current < next, no need to swap (ascending order)

    # Swap logic
    sw x14, 0(x12)         # Store next element in the current position
    sw x13, 4(x12)         # Store current element in the next position

no_swap:
    addi x12, x12, 4       # Move pointer to the next element
    addi x1, x1, 1         # Increment inner loop counter
    blt x1, x11, inner_loop # Continue inner loop if x1 < x11

    addi x11, x11, -1      # Decrease the range for the next pass
    bgtz x11, outer_loop   # If x11 > 0, repeat outer loop


