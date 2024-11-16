.data
a: .word 0x12345678      # Original 32-bit value in little-endian format
b: .word 0xff            # Mask for extracting bytes
c: .word 0               # Placeholder for the result in big-endian format

.text
    la x10, a            # Load address of 'a' into x10
    la x11, b            # Load address of 'b' into x11 (used for mask)
    la x17, c            # Load address of 'c' into x17 (for storing result)
    lw x12, 0(x10)       # Load 32-bit value from 'a' into x12
    lw x13, 0(x11)       # Load mask (0xff) from 'b' into x13
    addi x15, x0, 24     # Initialize shift amount for the left shift (24)
    addi x19, x0, -8     # Set loop break condition (when x15 reaches -8)
    addi x18, x17, 3     # Set destination address offset for the first byte

loop:
    and x14, x12, x13    # Mask out the least significant byte of x12
    sb x14, 0(x18)       # Store the masked byte in the target memory (c) at offset x18
    sll x14, x14, x15    # Left shift x14 by the current shift amount (x15)
    addi x15, x15, -8    # Decrease the shift amount by 8 for the next byte
    srli x12, x12, 8     # Right shift x12 by 8 to bring the next byte to the least significant position
    addi x18, x18, -1    # Decrease the destination address by 1 to store the next byte
    bne x15, x19, loop   # Repeat until x15 reaches -8 (after processing all four bytes)
