.data
a: .word 0x12345678  

.text
    la x10, a            # Loading address of a
    lw x11, 0(x10)       # Load the word from memory into x11

    andi x12, x11, 0xFF        # Mask to extract the byte (0x78)
    slli x12, x12, 24          # Shift left by 24(6*4) bits (0x78000000)

    srli x13, x11, 8           # Shift right by 8 bits (0x123456)
    andi x13, x13, 0xFF        # Mask to extract the byte (0x56)
    slli x13, x13, 16          # Shift left by 16(4*4) bits (0x00560000)
    or x12, x12, x13           # Combine

    srli x14, x11, 16          # Shift right by 16 bits (0x1234)
    andi x14, x14, 0xFF        # Mask and extract the byte (0x34)
    slli x14, x14, 8           # Shift left by 8(4*2) bits (0x00003400)
    or x12, x12, x14           # Combine

    srli x15, x11, 24          # Shift right by 24 bits (0x12)
    andi x15, x15, 0xFF        # Mask to extract the byte (0x12)
    or x12, x12, x15           # Combine

    sw x12, 0(x10)             # Stores result
