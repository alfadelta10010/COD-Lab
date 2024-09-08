    .data
a:  .word 0x12345678, 0      # Data: 32-bit word in little-endian

    .text
    la x10, a                # Load address of 'a' into x10
    lw x5, 0(x10)            # Load word (32-bit) from memory into x5

    addi x11, x0, 0          # Index register for loop (starting at 0)
    addi x12, x0, 3          # Max loop count for 4 bytes (since 32-bit = 4 bytes)
    addi x13, x0, 7          # Starting offset for reverse byte storage

loop:
    andi x6, x5, 0xff        # Extract least significant byte
    srli x5, x5, 8           # Shift right logical by 8 to process next byte

    add x14, x10, x13        # Compute the effective address (x10 + x13)
    sb x6, 0(x14)            # Store the extracted byte in reverse order

    addi x13, x13, -1        # Decrease the offset to store the next byte
    addi x11, x11, 1         # Increment loop counter
    blt x11, x12, loop       # Continue looping until all bytes are swapped
