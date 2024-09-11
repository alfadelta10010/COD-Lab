# write an assembly code to convert - Little endian to Big endian

.data
a: .word 0x12345678  # Define a word with a Little Endian value

.text
la x10, a          # Load the address of 'a' into register x10
lw x8, 0(x10)      # Load the Little Endian value from memory into x8

# Extract and shift bytes to convert to Big Endian
andi x9, x8, 0xFF  # Get the least significant byte (LSB) and store in x9
slli x9, x9, 24    # Move LSB to the most significant byte (MSB) position
srli x8, x8, 8     # Shift right to remove the LSB

andi x11, x8, 0xFF # Get the next byte and store in x11
slli x11, x11, 16  # Move it to the second MSB position
add x12, x9, x11   # Combine the MSB and second MSB

srli x8, x8, 8     # Shift right to get the next byte
andi x13, x8, 0xFF # Get the next byte and store in x13
slli x13, x13, 8   # Move it to the third MSB position
add x14, x13, x12  # Combine the third MSB with the previous result

srli x8, x8, 8     # Shift right to get the last byte
andi x15, x8, 0xFF # Get the last byte and store in x15
add x16, x15, x14  # Combine it with the previous result

sw x16, 4(x10)     # Store the Big Endian value back in memory at 'a + 4'