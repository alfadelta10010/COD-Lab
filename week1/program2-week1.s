    .text
    .globl _start

_start:
    # Load the lower and higher 32 bits of the first 64-bit number (num1)
    li t0, 0x12345678      # t0 = low1 (32 bits, example)
    li t1, 0x9abcdef0      # t1 = high1 (32 bits, example)

    # Load the lower and higher 32 bits of the second 64-bit number (num2)
    li t2, 0x23456789      # t2 = low2 (32 bits, example)
    li t3, 0xabcdef01      # t3 = high2 (32 bits, example)

    # Step 1: Add the lower 32 bits
    add t4, t0, t2         # t4 = low_result = low1 + low2
    # Check for carry from the lower 32-bit addition
    slt t5, t4, t0         # Set t5 = 1 if there was a carry (t4 < t0)
    # Step 2: Add the higher 32 bits along with the carry
    add t6, t1, t3         # t6 = high_result = high1 + high2
    add t6, t6, t5         # Add carry to the high_result

    # The result:
    # t4 contains low_result (lower 32 bits of the sum)
    # t6 contains high_result (higher 32 bits of the sum)

    # Now the sum is in t4 (low_result) and t6 (high_result)

    # End of program (we can add exit logic here depending on the environment)
