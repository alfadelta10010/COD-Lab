#Program1 

.data
array: .word 10, 30, 25, 7, 12, 18   
n:     .word 6                      # Number of elements in the array

.text
    
   
    la x10, array                    # x10 = base address of array
    lw x11, n                        # x11 = number of elements in array 
    
    # Outer loop: for i = 0 to n-2
    addi x12, x0, 0                  # x12 = i (outer loop index)
outer_loop:
    add x13, x0, x11                 # x13 = n (used for inner loop limit)
    addi x13, x13, -1                # x13 = n - 1
    sub x13, x13, x12                # x13 = n - 1 - i (inner loop limit)
    beq x13, x0, exit                # If inner loop limit == 0, exit

    # Inner loop: for j = 0 to n-2-i
    addi x14, x0, 0                  # x14 = j (inner loop index)
inner_loop:
    slli x15, x14, 2                 # x15 = j * 4 (offset for array[j])
    add x15, x15, x10                # x15 = address of array[j]
    lw x16, 0(x15)                   # x16 = array[j]

    addi x17, x14, 1                 # x17 = j + 1
    slli x17, x17, 2                 # x17 = (j + 1) * 4 (offset for array[j+1])
    add x17, x17, x10                # x17 = address of array[j+1]
    lw x18, 0(x17)                   # x18 = array[j+1]

    ble x16, x18, no_swap            # If array[j] <= array[j+1], no swap needed

    # Swap array[j] and array[j+1]
    sw x18, 0(x15)                   # Store array[j+1] at array[j]
    sw x16, 0(x17)                   # Store array[j] at array[j+1]

no_swap:
    addi x14, x14, 1                 # Increment j
    blt x14, x13, inner_loop         # If j < n-1-i, continue inner loop

    # Increment outer loop index i
    addi x12, x12, 1                 # i++
    j outer_loop                     # Jump to outer loop

exit:
    li x17, 10                       # Load exit syscall number
                            
