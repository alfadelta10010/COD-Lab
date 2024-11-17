#bubble_sort
.data
    arr: .word 8, 3, 1, 6, 4, 7, 2, 5  # Initial unsorted array
    n: .word 8  # Number of elements in the array

.text
_start:
    # Load the number of elements (n) into register x10
    la   x10, n            # Load address of n
    lw   x10, 0(x10)       # Load n into x10 (number of elements)
    
    # Outer loop counter (x11 = 0)
    li   x11, 0            # Initialize outer loop counter
outer_loop:
    # Flag to detect if any swaps were made (x20 = 0 means no swaps)
    li   x20, 0            # Set flag to 0 (no swaps made yet)
    
    # Load n - 1 into x12 for the inner loop limit
    sub  x12, x10, x11     # x12 = n - 1
    
    # Inner loop counter (x13 = 0)
    li   x13, 0            # Initialize inner loop counter
inner_loop:
    # Load current element arr[i] into x14
    la   x15, arr          # Load address of array into x15
    add  x14, x15, x13     # Calculate address of arr[i]
    lw   x14, 0(x14)       # Load arr[i] into x14

    # Load next element arr[i + 1] into x16
    addi x17, x13, 1       # x17 = i + 1 (index of next element)
    slli x17, x17, 2       # Multiply index by 4 (size of word) to get byte offset
    add  x16, x15, x17     # Calculate address of arr[i + 1]
    lw   x16, 0(x16)       # Load arr[i + 1] into x16
    
    # Compare arr[i] and arr[i + 1]
    blt  x14, x16, no_swap # If arr[i] < arr[i + 1], no swap needed
    
    # Swap arr[i] and arr[i + 1] if needed
    mv   x18, x14          # Move arr[i] into temporary register x18
    sw   x16, 0(x15)       # Store arr[i + 1] into arr[i]
    sw   x18, 0(x16)       # Store arr[i] into arr[i + 1]
    
    # Set swap flag to 1
    li   x20, 1            # A swap was made, set flag to 1

no_swap:
    addi x13, x13, 1       # Increment inner loop counter (i++)
    bne  x13, x12, inner_loop # If i < n - 1, continue inner loop

    # If no swaps were made, array is sorted, exit outer loop early
    beq  x20, x0, early_exit # If no swaps were made (x20 == 0), exit the loop

    # Increment outer loop counter
    addi x11, x11, 1       # Increment outer loop counter
    bne  x11, x10, outer_loop # If outer loop counter < n, continue outer loop

early_exit:
    nop                     # No operation (end of program)
