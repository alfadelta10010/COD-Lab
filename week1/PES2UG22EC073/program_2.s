# addition of half words

.data
n: .half 0x00FD, 0x0001, 0    # Define a data block with 16-bit halfword values
                              # 0x00FD (unsigned 8-bit: 253), 0x0001 (unsigned 8-bit: 1), and 0

.text
# Load the base address of the array 'n' into register x15
la x15, n                      # Load address of 'n' into register x15

# Load the first halfword (16-bit) as unsigned from memory into x16
lhu x16, 0(x15)                # Load unsigned halfword at offset 0 (0x00FD) into x16
                               # x16 = 0x00FD (unsigned: 253)

# Load the second halfword (16-bit) as unsigned from memory into x17
lhu x17, 2(x15)                # Load unsigned halfword at offset 2 (0x0001) into x17
                               # x17 = 0x0001 (unsigned: 1)

# Add the two unsigned numbers in x16 and x17, store the result in x18
add x18, x16, x17              # x18 = x16 + x17 (unsigned addition: 253 + 1 = 254)

# Store the result (x18) back into memory as a halfword at offset 4 (n[2])
sh x18, 4(x15)                 # Store halfword from x18 into memory at offset 4
                               # Result stored in 'n[2]' will be 0x00FE (unsigned: 254)
