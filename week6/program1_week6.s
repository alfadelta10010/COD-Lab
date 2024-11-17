    .data
array:  .word 5, 3, 8, 1, 2   # Example array with 5 elements
n:      .word 5               # Number of elements in the array

    .text
    .globl _start
_start:
    la t0, array              # Load the address of the array into t0
    lw t1, n                  # Load the number of elements (n) into t1
    addi t2, t1, -1            # t2 = n - 1 (maximum index for the outer loop)
    
    li t3, 0                  # Outer loop counter (i = 0)

outer_loop:
    bge t3, t2, end_program   # If i >= n-1, exit the outer loop
    li t4, 0                  # Inner loop counter (j = 0)

inner_loop:
    bge t4, t2, increment_i   # If j >= n-1-i, increment outer loop counter
    slli t5, t4, 2            # Multiply j by 4 (word size) to get byte offset
    add t6, t0, t5            # Address of array[j]
    lw t0, 0(t6)              # Load array[j] into t0
    lw t1, 4(t6)              # Load array[j+1] into t1
    
    # Compare array[j] and array[j+1]
    blt t0, t1, increment_j   # If array[j] < array[j+1], do nothing
    # Swap array[j] and array[j+1]
    sw t1, 0(t6)              # Store array[j+1] into array[j]
    sw t0, 4(t6)              # Store array[j] into array[j+1]
    
increment_j:
    addi t4, t4, 1            # Increment inner loop counter (j++)
    j inner_loop

increment_i:
    addi t3, t3, 1            # Increment outer loop counter (i++)
    j outer_loop

end_program:
    li a7, 10                 # Exit syscall
    ecall
