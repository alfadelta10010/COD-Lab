.data
a:      .half 0x1234, 0x5678, 0x2345, 0x6789, 0x3456, 0x7890, 0x4567, 0x8901, 0x5678, 0x9012, 0x6789  
b:      .half 0x1234, 0x5678, 0x2345, 0x6789, 0x3456, 0x7890, 0x4567, 0x8901, 0x5678, 0x9012, 0x6789 
c:      .half 0x1234, 0x5678, 0x2345, 0x6789, 0x3456, 0x7890, 0x4567, 0x8901, 0x5678, 0x9012, 0x6789 
i:      .word 0  # Loop index variable

.text
    # Initialize the index i to 0
    li x5, 0                  # Set i = 0

loop:
    # Load the value of a[i] into x6
    la x7, a                  
    slli x8, x5, 1            # Multiply i by 2 (since each element is a half word, 2 bytes)
    add x7, x7, x8            # Address of a[i] = base address + i*2
    lh x9, 0(x7)              # Load a[i] into x9

    # Load the value of b[i] into x10
    la x11, b             
    add x11, x11, x8          # Address of b[i] = base address + i*2
    lh x12, 0(x11)            # Load b[i] into x12

    # Multiply a[i] * b[i] using shift and add
    li x13, 0                 #  will hold the result of a[i] * b[i]
    
    # Multiply a[i] * b[i] 
    li x14, 16                # Limit for bit shifts assuming 16 bits for half 
mul_loop:
    andi x15, x12, 1          # x15 = b[i] & 1 (check the LSB of b[i])
    beq x15, x0, mul_shift    # If LSB is 0, no addition, just shift
    add x13, x13, x9          # Add a[i] to result (if LSB is 1)
mul_shift:
    slli x12, x12, 1          # Shift b[i] left by 1 (multiply b[i] by 2)
    srai x9, x9, 1            # Shift a[i] right by 1 (divide a[i] by 2)
    addi x14, x14, -1         # Decrease loop count
    bnez x14, mul_loop        # Repeat until all bits are processed

    # Load the value of c[i-1] into x14 (if i == 0, assume c[-1] = 0)
    la x15, c                 # Load the base address of array c
    add x15, x15, x8          # Address of c[i-1] = base address + (i-1)*2
    bnez x5, not_first        # If i != 0, load c[i-1]
    li x14, 0                 # If i == 0, set c[-1] = 0 (for the first iteration)

not_first:
    lh x14, 0(x15)            # Load c[i-1] into x14

    # Add a[i] * b[i] + c[i-1] and store the result in c[i]
    add x13, x13, x14         # x13 = a[i] * b[i] + c[i-1]

    # Store the result in c[i]
    la x16, c                 # Load the base address of array c
    add x16, x16, x8          # Address of c[i] = base address + i*2
    sh x13, 0(x16)            # Store the result in c[i]

    # Increment the index i
    addi x5, x5, 1            # i = i + 1

    # Check if i < 10, if yes repeat loop
    li x17, 10                # Load 10 into x17
    blt x5, x17, loop         # If i < 10, continue loop

exit: nop
