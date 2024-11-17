# Write an assembly program to sort an array using bubble sort to sort N-elements

.data
array: .word 5, 2, 9, 1, 5, 6    # Example array
n:     .word 6                    # Number of elements in the array

.text
.globl main
main:
    la t0, array          # Load address of array into t0
    lw t1, n              # Load number of elements into t1
    addi t1, t1, -1       # Set t1 = n - 1 (outer loop count)
    
outer_loop:
    li t2, 0              # Initialize outer loop index (i = 0)
    
inner_loop:
    addi t3, t2, 1        # Initialize inner loop index (j = i + 1)
    bge t3, t1, end_inner_loop # If j >= n - 1, end inner loop

    slli t4, t2, 2        # Calculate offset for array[i]
    add t4, t4, t0        # Get address of array[i]
    lw t5, 0(t4)          # Load array[i] into t5
    
    slli t6, t3, 2        # Calculate offset for array[j]
    add t6, t6, t0        # Get address of array[j]
    lw t7, 0(t6)          # Load array[j] into t7

    bgt t5, t7, swap      # If array[i] > array[j], swap needed

no_swap:
    addi t2, t2, 1        # Increment inner loop index
    j inner_loop          # Jump back to start of inner loop

swap:
    sw t7, 0(t4)          # Store array[j] in array[i]
    sw t5, 0(t6)          # Store array[i] in array[j]
    j no_swap             # Jump to no_swap to continue

end_inner_loop:
    addi t1, t1, -1       # Decrement outer loop count
    bgtz t1, outer_loop   # If outer loop count > 0, repeat

exit:
    li a7, 10             # Load exit syscall number
    ecall                 # Make syscall to exit program