.data
a:  .dword 0x8000123400001234, 0x9000012300001235   # Two 64-bit numbers stored in memory

.text
    # Load address of 'a' into x1
    la x1, a             

    # Step 1: Add the lower 32 bits
    lw s1, 0(x1)         # Load the lower 32 bits of the first number (0x00001234) into s1
    lw s2, 8(x1)         # Load the lower 32 bits of the second number (0x00001235) into s2
    add s3, s1, s2       # Add the lower 32 bits of the two numbers, store result in s3
    sltu s4, s3, s1      # Check if there is a carry from the addition (s4 = 1 if there is a carry)

    sw s3, 16(x1)        # Store the lower 32-bit result back into memory (at a[2])

    # Step 2: Add the upper 32 bits with carry
    lw s1, 4(x1)         # Load the upper 32 bits of the first number (0x80001234) into s1
    lw s2, 12(x1)        # Load the upper 32 bits of the second number (0x90000123) into s2
    add s5, s1, s2       # Add the upper 32 bits of the two numbers, store result in s5
    add s6, s5, s4       # Add the carry (from the lower 32-bit addition) to the upper 32-bit result

    sw s6, 20(x1)        # Store the upper 32-bit result back into memory (at a[2] + 4)

# Infinite loop to end the program
loop:
    j loop
