.data
    a:      .half 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234
    b:      .half 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234
    c:      .half 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
    len:    .word 10   # Length of loop (10 iterations)

.text
main:
    la t0, a          # Load address of array a into t0
    la t1, b          # Load address of array b into t1
    la t2, c          # Load address of array c into t2
    lw t3, len        # Load the length of the loop into t3 (10 iterations)

    addi t4, zero, 0  # Initialize index i = 0

loop_start:
    bge t4, t3, loop_end   # If i >= length (10), exit the loop

    # Load a[i] into t5
    lh t5, 0(t0)         # Load a[i] (half-word from array a) into t5
    # Load b[i] into t6
    lh t6, 0(t1)         # Load b[i] (half-word from array b) into t6

    # Perform multiplication a[i] * b[i] using repeated addition
    addi t7, zero, zero   # Initialize result (t7) to zero
    addi t8, zero, zero    # Initialize counter for multiplication

multiply_loop:
    beq t8, t6, add_result   # If counter equals b[i], multiplication is done
    add t7, t7, t5           # Add a[i] to result
    addi t8, t8, 1           # Increment counter
    j multiply_loop           # Repeat until counter equals b[i]

add_result:
    # Load c[i-1] into t9 (for i=0 we will handle this as zero)
    addi t10, t4, -1         # Calculate i-1
    blt t10, zero, init_c_prev   # If i-1 < 0 (i = 0), skip loading c[i-1]
    
    slli t11 ,t10 ,1         # Calculate offset for c[i-1]
    lh t9 , c(t11)           # Load c[i-1] (half-word) into t9
    j store_result

init_c_prev:
    addi t9 ,zero ,zero       # Set c[i-1] to zero for i = 0

store_result:
    # Add the result of a[i] * b[i] and c[i-1]
    add t7 ,t7 ,t9           # t7 = a[i] * b[i] + c[i-1]

    slli t12 ,t4 ,1          # Calculate offset for storing in c[i]
    sh t7 ,c(t12)            # Store the result in c[i] (half-word)

    # Increment i (index)
    addi t0 ,t0 ,2           # Move to next element in array a (2 bytes for half-word)
    addi t1 ,t1 ,2           # Move to next element in array b (2 bytes for half-word)
    addi t2 ,t2 ,2           # Move to next element in array c (2 bytes for half-word)
    addi t4 ,t4 ,1           # Increment index i
    j loop_start             # Jump to the start of the loop

loop_end:
    # End of the program (infinite loop to halt)
    j loop_end               # Infinite loop to terminate program
