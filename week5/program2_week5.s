    .data
a:  .word 0x1234, 0x5678, 0x9ABC, 0x4321, 0x8765, 0x1234, 0x2345, 0x6789, 0x9876, 0xABCD, 0x1111
b:  .word 0x1234, 0x5678, 0x9ABC, 0x4321, 0x8765, 0x1234, 0x2345, 0x6789, 0x9876, 0xABCD, 0x1111
c:  .word 0x1234, 0x5678, 0x9ABC, 0x4321, 0x8765, 0x1234, 0x2345, 0x6789, 0x9876, 0xABCD, 0x1111
len: .word 10  # Loop until index 9 (i.e., a[0..9], b[0..9], c[0..9])

    .text
    .globl _start
_start:
    li t0, 0               # i = 0 (index for the loop)
    la t1, a               # Load base address of array 'a'
    la t2, b               # Load base address of array 'b'
    la t3, c               # Load base address of array 'c'

    li t4, 10              # Load the value 10 into t4 for comparison

loop:
    bge t0, t4, end_program # If i >= 10, exit the loop (compare with t4, which holds 10)
    lw t5, 0(t1)           # Load a[i] into t5
    lw t6, 0(t2)           # Load b[i] into t6
    mul t5, t5, t6         # t5 = a[i] * b[i]
    
    # For c[i], we need to add c[i-1] (skip for i=0)
    beq t0, zero, first_iteration # Skip for the first iteration

    # Load c[i-1] into t6 (reusing the same register)
    addi t6, t0, -1         # i - 1
    slli t6, t6, 2          # Multiply (i-1) by 4 (size of word)
    add t6, t6, t3          # Get address of c[i-1]
    lw t6, 0(t6)            # Load c[i-1] into t6

    add t5, t5, t6          # t5 = (a[i] * b[i]) + c[i-1]
    sw t5, 0(t3)            # Store the result in c[i]

    j next_iteration

first_iteration:
    # If it's the first iteration, there's no c[i-1], so just store a[i] * b[i] into c[i]
    sw t5, 0(t3)            # Store the result in c[i]

next_iteration:
    addi t0, t0, 1          # Increment i
    addi t1, t1, 4          # Move to next element in array a
    addi t2, t2, 4          # Move to next element in array b
    addi t3, t3, 4          # Move to next element in array c
    j loop                  # Repeat the loop

end_program:
    li a7, 10               # Exit syscall
    ecall
