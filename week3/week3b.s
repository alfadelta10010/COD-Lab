    .data
input:      .byte 0xA         # 4-bit input data (e.g., 0xA = 1010)

    .text
    la      x10, input        # Load address of input
    lb      x11, 0(x10)       # Load the 4-bit input number into x11

    # Mask input to ensure it's 4 bits
    andi    x11, x11, 0x0F    # Mask the input to keep only the least significant 4 bits

    # Extract individual bits from the input
    andi    x12, x11, 0x1     # Bit 1 (LSB)
    andi    x13, x11, 0x2     # Bit 2
    srli    x13, x13, 1       # Align Bit 2 to LSB
    andi    x14, x11, 0x4     # Bit 3
    srli    x14, x14, 2       # Align Bit 3 to LSB
    andi    x15, x11, 0x8     # Bit 4 (MSB)
    srli    x15, x15, 3       # Align Bit 4 to LSB

    # Calculate parity bits
    # p1 = b1 ^ b2 ^ b4
    xor     x16, x12, x13     # b1 ^ b2
    xor     x16, x16, x15     # p1 = b1 ^ b2 ^ b4

    # p2 = b1 ^ b3 ^ b4
    xor     x17, x12, x14     # b1 ^ b3
    xor     x17, x17, x15     # p2 = b1 ^ b3 ^ b4

    # p3 = b2 ^ b3 ^ b4
    xor     x18, x13, x14     # b2 ^ b3
    xor     x18, x18, x15     # p3 = b2 ^ b3 ^ b4

    # Assemble the 7-bit Hamming code in a register
    # Positions: [p1, p2, b1, p3, b2, b3, b4]
    li      x19, 0            # Clear x19 for the result
    slli    x19, x16, 6       # Place p1 in bit 7
    slli    x20, x17, 5       # Place p2 in bit 6
    or      x19, x19, x20     # Add p2 to the result
    slli    x20, x12, 4       # Place b1 in bit 5
    or      x19, x19, x20     # Add b1 to the result
    slli    x20, x18, 3       # Place p3 in bit 4
    or      x19, x19, x20     # Add p3 to the result
    slli    x20, x13, 2       # Place b2 in bit 3
    or      x19, x19, x20     # Add b2 to the result
    slli    x20, x14, 1       # Place b3 in bit 2
    or      x19, x19, x20     # Add b3 to the result
    or      x19, x19, x15     # Add b4 (LSB)

    # x19 now holds the encoded 7-bit Hamming code
    # You can use it directly or pass it to another function

end:
    nop                       # Placeholder for end of the program
