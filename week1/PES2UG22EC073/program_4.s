#wap to analyse of storing signed and unsigned,halfwords and byte data types 

.data
n: .half 0x80FD, 0x8001, 0    # Define a data block with 16-bit halfword values
                               # 0x80FD (signed: -1275), 0x8001 (signed: -32767), and 0

.text
# Load the base address of array 'n' into register x15
la x15, n                      # Load address of 'n' into register x15

# Load halfword (signed) from address in x15 into x16 (first element)
lh x16, 0(x15)                 # Load signed halfword at offset 0 (0x80FD) into x16
                               # x16 = 0x80FD (signed: -1275)

# Load halfword (signed) from address (x15 + 2) into x17 (second element)
lh x17, 2(x15)                 # Load signed halfword at offset 2 (0x8001) into x17
                               # x17 = 0x8001 (signed: -32767)

# Uncomment the following if unsigned loading is needed (without sign extension)
# lhu x16, 0(x15)             # Load unsigned halfword at offset 0 (0x80FD) into x16
# lhu x17, 2(x15)             # Load unsigned halfword at offset 2 (0x8001) into x17

# Add the two loaded values (x16 + x17) and store the result in x18
add x18, x16, x17              # x18 = x16 + x17 (signed addition: -1275 + -32767)

# Store the result (in x18) back into memory as a halfword at address (x15 + 4)
sh x18, 4(x15)                 # Store signed halfword from x18 into memory at offset 4
                               # Result is stored as a 16-bit value in memory
