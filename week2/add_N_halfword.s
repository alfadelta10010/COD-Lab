.data
b: .half 0x0045, 0x0021   # Two 16-bit halfword values stored in 'b'

.text
la x10, b           # Load address of 'b' into x10
lh x11, 0(x10)      # Load the first halfword (0x0045) into x11
lh x12, 2(x10)      # Load the second halfword (0x0021) into x12
add x13, x11, x12   # Add the two halfwords, store result in x13
sh x13, 4(x10)      # Store the result at the address b+4 (3rd halfword location)
