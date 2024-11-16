.data
 
n:    .word 0x12345678         

.text
# Load the little-endian value from memory into x10 (a0)
    la x11, n         
    lw x10, 0(x11)         

    # Step 1: Extract Byte 0 (least significant byte)
    andi x5, x10, 0xFF         # x5 = x10 & 0xFF (extract 0x78)
    slli x5, x5, 24            # x5 = x5 << 24 (move byte to the most significant position)

    # Step 2: Extract Byte 1
    srli x6, x10, 8            # x6 = x10 >> 8 (move byte 1 to the least significant position)
    andi x6, x6, 0xFF          # x6 = x6 & 0xFF (extract 0x56)
    slli x6, x6, 16            # x6 = x6 << 16 (move byte to its correct position)

    # Step 3: Extract Byte 2
    srli x7, x10, 16           # x7 = x10 >> 16 (move byte 2 to the least significant position)
    andi x7, x7, 0xFF          # x7 = x7 & 0xFF (extract 0x34)
    slli x7, x7, 8             # x7 = x7 << 8 (move byte to its correct position)

    # Step 4: Extract Byte 3 (most significant byte)
    srli x8, x10, 24           # x8 = x10 >> 24 (move byte 3 to the least significant position)
    andi x8, x8, 0xFF          # x8 = x8 & 0xFF (extract 0x12)

    # Step 5: Combine all bytes into the final result
    or x9, x5, x6             # x10 = x5 | x6
    or x9, x9, x7            # x10 = x10 | x7
    or x9, x9, x8            # x10 = x10 | x8

  nop
  
