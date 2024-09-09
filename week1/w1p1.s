.data
a: .word 0x02020202, 0x01010101  # Two 32-bit words stored in memory

.text
la x10,a        # Load the address of 'a' into register x10
lw x11,0(x10)   # Load the first 32-bit word from address x10 into x11
lw x12,4(x10)   # Load the second 32-bit word from address x10+4 into x12
add x13,x11,x12 # Add the values in x11 and x12, store the result in x13
sw x13,8(x10)   # Store the result from x13 into address x10+8
