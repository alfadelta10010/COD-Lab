#write an Assembly Program for addition of 2 words

.data
a: .word 0x123, 0x895, 0x00, 0x95  # Define a word array 'a' with values 0x123, 0x895, 0x00, and 0x95

.text
la x10, a            # Load the address of the word array 'a' into register x10
lw x8, 0(x10)        # Load the first word (0x123) from address 0(x10) into register x8
lw x9, 4(x10)        # Load the second word (0x895) from address 4(x10) into register x9
add x11, x8, x9      # Add the values in registers x8 and x9 (0x123 + 0x895) and store the result in register x11
sw x11, 8(x10)       # Store the result of the addition (in x11) into address 8(x10)



#Write an Assembly Program for addition of 2 half words

.data
a: .half 0x123, 0x896  # Define a half-word array 'a' with values 0x123 and 0x896

.text
la x10, a            # Load the address of the half-word array 'a' into register x10
lh x8, 0(x10)        # Load the first half-word (0x123) from address 0(x10) into register x8
lh x9, 2(x10)        # Load the second half-word (0x896) from address 2(x10) into register x9
add x11, x8, x9      # Add the values in registers x8 and x9 (0x123 + 0x896) and store the result in register x11
sh x11, 4(x10)       # Store the result of the addition (in x11) into address 4(x10)




#Write an Assembly Program for addition of 2 bytes

.data
a: .byte 0x12, 0x84  # Define a byte array 'a' with values 0x12 and 0x84

.text
la x10, a            # Load the address of the byte array 'a' into register x10
lb x8, 0(x10)        # Load the first byte (0x12) from address 0(x10) into register x8
lb x9, 1(x10)        # Load the second byte (0x84) from address 1(x10) into register x9
add x11, x8, x9      # Add the values in registers x8 and x9 (0x12 + 0x84) and store the result in register x11
sb x11, 2(x10)       # Store the result of the addition (in x11) into address 2(x10)





#Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

# Data section
.data
a: .byte 0x12, 0x84           # Define a byte array 'a' with values 0x12 and 0x84
b: .word 0x123445, 0x245456  # Define a word array 'b' with values 0x123445 and 0x245456
c: .half 0x12, 0x15          # Define a half-word array 'c' with values 0x1215 and 0x1515

.text

# Loading and storing signed bytes
la x10, a                    # Load the address of the byte array 'a' into register x10
lb x1, 0(x10)                # Load a signed byte from address 0(x10) into register x1 (value: 0x12)
lb x2, 1(x10)                # Load a signed byte from address 1(x10) into register x2 (value: 0x84)
sb x3, 2(x10)                # Store the byte in register x3 into address 2(x10) (address 2 is currently uninitialized)

# Loading and storing unsigned bytes
la x11, a                    # Load the address of the byte array 'a' into register x11
lbu x4, 0(x11)               # Load an unsigned byte from address 0(x11) into register x4 (value: 0x12)
lbu x5, 1(x11)               # Load an unsigned byte from address 1(x11) into register x5 (value: 0x84)
sb x6, 2(x11)                # Store the byte in register x6 into address 2(x11)

# Loading and storing words
la x12, b                    # Load the address of the word array 'b' into register x12
lw x7, 0(x12)                # Load a 32-bit word from address 0(x12) into register x7 (value: 0x123445)
lw x8, 4(x12)                # Load a 32-bit word from address 4(x12) into register x8 (value: 0x245456)
sw x9, 8(x12)                # Store the 32-bit word in register x9 into address 8(x12)

# Loading and storing signed half-words
la x13, c                    # Load the address of the half-word array 'c' into register x13
lh x16, 0(x13)               # Load a signed half-word from address 0(x13) into register x16 (value: 0x1215)
lh x17, 2(x13)               # Load a signed half-word from address 2(x13) into register x17 (value: 0x1515)
sh x18, 4(x13)               # Store the signed half-word in register x18 into address 4(x13)

# Loading and storing unsigned half-words
la x14, c                    # Load the address of the half-word array 'c' into register x14
lhu x19, 0(x14)              # Load an unsigned half-word from address 0(x14) into register x19 (value: 0x1215)
lhu x20, 2(x14)              # Load an unsigned half-word from address 2(x14) into register x20 (value: 0x1515)
sh x21, 4(x14)               # Store the half-word in register x21 into address 4(x14)
