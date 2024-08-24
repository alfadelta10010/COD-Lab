    .data
    a:  .word 0xEEEEFFFF, 0xFFFFEEEE, 0xFFFFFFFF, 0xEEEEEEEE  # Initial 64-bit numbers stored as two 32-bit parts each

    .text
    la x10, a         # Load the address of the data into x10
    
    # Load the four 32-bit words into registers
    lw x9,  0(x10)    # Load lower 32 bits of the first 64-bit number (0xEEEEFFFF) into x9
    lw x8,  4(x10)    # Load upper 32 bits of the first 64-bit number (0xFFFFEEEE) into x8
    lw x7,  8(x10)    # Load lower 32 bits of the second 64-bit number (0xFFFFFFFF) into x7
    lw x6, 12(x10)    # Load upper 32 bits of the second 64-bit number (0xEEEEEEEE) into x6

    # Perform addition on the lower 32-bit parts
    add x5, x8, x6    # x5 = x8 (lower of num1) + x6 (lower of num2)
    sltu x11, x5, x8  # Check if a carry occurred during the lower 32-bit addition (x11 = 1 if carry)

    # Perform addition on the upper 32-bit parts
    add x2, x9, x7    # x2 = x9 (upper of num1) + x7 (upper of num2)
    add x3, x2, x11   # Add carry from the lower 32-bit addition to the upper 32-bit result (x3 = x2 + carry)
    sltu x12, x3, x2  # Check if a carry occurred during the upper 32-bit addition (x12 = 1 if carry)

    # Store results in memory
    sw x5, 16(x10)    # Store the result of the lower 32-bit addition at a + 16
    sw x3, 20(x10)    # Store the result of the upper 32-bit addition at a + 20
    sw x12, 24(x10)   # Store the carry of the upper 32-bit addition at a + 24

   
