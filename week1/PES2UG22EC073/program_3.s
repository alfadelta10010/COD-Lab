#wap to add two 32 bit numbers 0x8000 0002,0x9123456A

.data
t: .word 0x80000002, 0x9123456A, 0    # Define a data block with 32-bit word values
                                      # 0x80000002, 0x9123456A, and 0

.text
# Load the base address of the array 't' into register x19
la x19, t                             # Load address of 't' into register x19

# Load the first 32-bit word (0x80000002) from address in x19 into x20
lw x20, 0(x19)                        # Load 32-bit word at offset 0 into x20
                                      # x20 = 0x80000002 (signed: -2147483646)

# Load the second 32-bit word (0x9123456A) from address (x19 + 4) into x21
lw x21, 4(x19)                        # Load 32-bit word at offset 4 into x21
                                      # x21 = 0x9123456A (signed: -1854838126)

# Add the two 32-bit numbers in x20 and x21, store the result in x23
add x23, x21, x20                     # x23 = x21 + x20 (signed addition)
                                      # x23 = -2147483646 + -1854838126 = 0x1123456C (result of the addition)

# Store the result of the addition (x23) back into memory at offset 8 (t[2])
sw x23, 8(x19)                        # Store 32-bit result at offset 8 in the array 't'

# Set x24 to 1 if x21 is less than x23 (unsigned comparison)
sltu x24, x23, x21                    # Unsigned comparison: Set x24 = 1 if x23 < x21
                                      # Checks if the addition result is smaller than x21
