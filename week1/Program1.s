# Week 1 Lab

## Program 1: 
### Statement: Write an Assembly Program for the addition of 2 words

### Name of file: Program1.s

.data
a:  .word 0x12345678, 0x11112222, 0  # Define an array of three 32-bit words                               

.text
# Load the address of array 'a' into register x10
la x10, a           # x10 = address of 'a'

# Load the first 32-bit word from the address in x10 into register x11
lw x11, 0(x10)      # x11 = 0x12345678

# Load the second 32-bit word from the address in x10 + 4 (next word) into register x12
lw x12, 4(x10)      # x12 = 0x11112222

# Add the values in x11 and x12, store the result in x13
add x13, x11, x12   # x13 = 0x2345789A (result of 0x12345678 + 0x11112222)
