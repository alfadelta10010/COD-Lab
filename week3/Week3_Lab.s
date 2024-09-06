.data
num: .word 0x12345678   # Store the 32-bit number in little-endian format

.text
la x10,num              # Load the address of 'num' into register x10
lw x11,0(x10)           # Load the 32-bit word from memory into register x11
addi x20,x0,3           # Initialize a loop counter to 3 (for processing 3 bytes)

# Start of the loop to reverse the byte order
loop:
    andi x13,x11,0xFF   # Mask the least significant byte from x11 into x13
    add x14,x14,x13     # Add the byte to x14 (build the big-endian result)
    slli x14,x14,8      # Shift the result left by 8 bits to make room for the next byte
    srli x11,x11,8      # Shift the original word right by 8 bits to process the next byte
    addi x20,x20,-1     # Decrease the loop counter by 1
    bnez x20,loop       # If the loop counter is not zero, repeat the loop

# Handle the final byte (most significant byte)
add x14,x14,x11         # Add the last remaining byte (MSB) to x14

# Store the result in memory (in big-endian format)
sw x14,4(x10)           # Store the final big-endian result at an offset in memory

    
