.data
a: .byte 0x45, 0x21   # Two 8-bit byte values stored in 'a'

.text
la x10, a           # Load address of 'a' into x10
lb x11, 0(x10)      # Load the first byte (0x45) into x11
lb x12, 1(x10)      # Load the second byte (0x21) into x12
add x13, x11, x12   # Add the two bytes, store result in x13
sb x13, 2(x10)      # Store the result at the address a+2 (3rd byte location)
