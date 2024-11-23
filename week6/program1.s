.data
array:  .word 5, 2, 9, 1, 5, 6       
N:      .word 6                       # Number of elements 

.text
    la x5, array
    la x6, N                      
    lw x6, 0(x6)                

    # Set up outer loop (i = 0 to N-1)
    li x7, 0                      # Set i = 0
outer_loop:
    # Set up inner loop (j = 0 to N-i-2)
    li x8, 0                      # Set j = 0
    sub x9, x6, x7                # N - i (remaining elements)
    addi x9, x9, -2                 # N - i - 1, because we check until N - i - 2
inner_loop:
    # Calculate address of array[j] and array[j+1]
    slli x10, x8, 2               # Multiply j by 4 (because each element is 4 bytes)
    add x11, x5, x10              # Address of array[j]
    lw x12, 0(x11)                # Load array[j] into x12

    addi x10, x10, 4              # Calculate address of array[j+1]
    add x11, x5, x10              # Address of array[j+1]
    lw x13, 0(x11)                # Load array[j+1] into x13

    # Compare array[j] and array[j+1]
    blt x12, x13, no_swap        # If array[j] < array[j+1], no need to swap

    # Swap array[j] and array[j+1] if array[j] > array[j+1]
    sw x13, 0(x11)                # Store array[j+1] in array[j]
    sw x12, 0(x11)                # Store array[j] in array[j+1]

no_swap:
    addi x8, x8, 1                # j = j + 1
    blt x8, x9, inner_loop        # Continue inner loop if j < N-i-1

    addi x7, x7, 1                # i = i + 1
    blt x7, x6, outer_loop        # Continue outer loop if i < N-1

exit: 
    nop