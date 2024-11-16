# Write an Assembly Program for # Write an Assembly Program for the following C code

.data
a:      .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777 # Array a
b:      .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777 # Array b
c:      .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777 # Array c
size:   .word 10                  # Size of the arrays (10 elements)

    .text
    .globl main

main:
    # Load base addresses of arrays into registers
    la t0, a                    # t0 -> Address of array a
    la t1, b                    # t1 -> Address of array b
    la t2, c                    # t2 -> Address of array c
    lw t3, size                 # t3 = size (10)

    # Initialize loop variables
    li t4, 0                    # t4 = i (loop index)

loop:
    bge t4, t3, end_loop        # Exit the loop if i >= size

    # Load a[i] and b[i]
    lh t5, 0(t0)                # t5 = a[i] (load 16-bit half-word)
    lh t6, 0(t1)                # t6 = b[i] (load 16-bit half-word)

    # Multiply a[i] and b[i]
    mul t5, t5, t6              # t5 = a[i] * b[i]

    # Add c[i-1] (if i > 0)
    beq t4, zero, skip_add      # Skip adding c[i-1] if i == 0
    lh t6, -2(t2)               # t6 = c[i-1] (load previous element)
    add t5, t5, t6              # t5 = a[i] * b[i] + c[i-1]

skip_add:
    # Store result in c[i]
    sh t5, 0(t2)                # c[i] = t5 (store result)

    # Increment pointers and index
    addi t0, t0, 2              # Move to the next element in array a
    addi t1, t1, 2              # Move to the next element in array b
    addi t2, t2, 2              # Move to the next element in array c
    addi t4, t4, 1              # Increment i

    j loop                      # Repeat the loop

end_loop:
    j end_loop                  # Infinite loop to end the program