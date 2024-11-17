Week 1
1. Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly
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



2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I
.data 
a: .dword 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF  # Two 64-bit numbers to add
result_lower: .word 0x00000000  # Placeholder for lower 32-bit result
result_upper: .word 0x00000000  # Placeholder for upper 32-bit result

.text
.globl main
main:
    la x20, a            # Load the address of 'a' into x20

    lw x8, 0(x20)        # Load the lower 32 bits (LSB) of the first 64-bit number into x8
    lw x9, 4(x20)        # Load the upper 32 bits (MSB) of the first 64-bit number into x9
    lw x10, 8(x20)       # Load the lower 32 bits (LSB) of the second 64-bit number into x10
    lw x11, 12(x20)      # Load the upper 32 bits (MSB) of the second 64-bit number into x11

    add x12, x8, x10     # Add the lower 32 bits of both numbers and store in x12
    sltu x13, x12, x8    # Check if there was a carry by comparing result with x8

    add x14, x9, x11     # Add the upper 32 bits of both numbers and store in x14
    add x16, x14, x13    # Add the carry from LSB addition to the MSB result

    # Store the lower 32-bit result in memory
    la x20, result_lower # Load the address of result_lower
    sw x12, 0(x20)       # Store the lower 32-bit result

    # Store the upper 32-bit result in memory
    la x20, result_upper # Load the address of result_upper
    sw x16, 0(x20)       # Store the upper 32-bit result