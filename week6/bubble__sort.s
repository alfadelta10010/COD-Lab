.data
arr: .word 0x00000005, 0x00000003, 0x00000004, 0x00000001, 0x00000002  # Example array

.text
    la x2, arr              # Load address of the array into x2
    addi x18, x0, 5         # Define number of elements in array (N = 5)
    addi x19, x0, 0         # Initialize i = 0 (outer loop counter)
    
i_loop:
    addi x20, x0, 0         # Initialize j = 0 (inner loop counter)
    addi x21, x0, 0         # Flag to indicate if swap is needed (0 = no swap, 1 = swap done)

j_loop:
    # Compare arr[j] and arr[j+1]
    lw x22, 0(x2)           # Load arr[j] into x22
    lw x23, 4(x2)           # Load arr[j+1] into x23
    bge x22, x23, no_swap   # If arr[j] >= arr[j+1], no swap needed
    
    # Swap arr[j] and arr[j+1]
    sw x23, 0(x2)           # Store arr[j+1] in arr[j]
    sw x22, 4(x2)           # Store arr[j] in arr[j+1]
    addi x21, x0, 1         # Set flag to 1 to indicate a swap was done

no_swap:
    addi x2, x2, 4          # Move to next pair of elements (arr[j+1] and arr[j+2])
    addi x20, x20, 1        # Increment inner loop counter (j)
    blt x20, x18, j_loop    # Continue inner loop until j < N-1

    addi x2, x2, -4         # Reset x2 to the beginning of the array after the inner loop
    addi x19, x19, 1        # Increment outer loop counter (i)
    bne x21, x0, j_loop     # If a swap was made, continue the inner loop

    bge x19, x18, exit      # If outer loop counter reaches N-1, exit the loop

    j i_loop                # Repeat the outer loop for the next iteration

exit:
    jal x0, exit            # Infinite loop to terminate the program
