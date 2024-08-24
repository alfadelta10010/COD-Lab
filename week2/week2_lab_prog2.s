#2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

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

