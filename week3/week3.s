week 3
1. Write an assembly program to check if a number is a 2 out of 5 number
.data
a: .byte 0x12              # Example 5-bit sequence (00010010) would not be valid in 2 out of 5

.text
la x10, a                  # Load address of 'a'
lbu x11, 0(x10)            # Load the byte into register x11
andi x12, x11, 0x1F        # Mask to get the lower 5 bits (since we are working with 5 bits)

addi x22, x0, 5            # Set counter for 5 bits
addi x23, x0, 0            # Initialize count for number of 1's

# Loop through the 5 bits
back:
    andi x12, x11, 0x01    # Extract the LSB (least significant bit)
    beq x12, x0, next      # If LSB is 0, move to next bit
    addi x23, x23, 1       # If LSB is 1, increment the count of 1's
next:
    srli x11, x11, 1       # Right shift x11 to check the next bit
    addi x22, x22, -1      # Decrement the counter
    bne x22, x0, back      # If counter is not zero, repeat the loop

    # After checking all 5 bits, check if exactly 2 1's were found
    li x24, 2              # Load 2 into x24 for comparison
    beq x23, x24, valid    # If count of 1's == 2, jump to valid
    j exit                 # Otherwise, jump to exit

valid:
    # Code to handle the case when exactly 2 bits are 1
    # Do something (e.g., set a flag or store result)

exit:
    # Exit or end of program
    addi x15, x0, 0x001    # Exit the program


2. Write an assembly program to encode a number using Hamming code.
.data
num: .byte 0xa2   # The 8-bit number to check, in binary: 1010 0010

.text

    # Load the address of 'num' into x1
    la x1, num

    # Load the byte (8 bits) from memory into x2
    lb x2, 0(x1)    # x2 = 0xa2 (binary: 1010 0010)

    # Copy x2 to x3 for processing
    mv x3, x2        # x3 = 0xa2 (copy of num)

    # Shift and isolate the individual bits for parity checks
    srli x4, x3, 1    # x4 = x3 >> 1 (isolate d1) 
    srli x5, x3, 3    # x5 = x3 >> 3 (isolate d3)
    srli x6, x3, 4    # x6 = x3 >> 4 (isolate d4)
    srli x7, x3, 6    # x7 = x3 >> 6 (isolate d6)

    # Perform XOR operations on the bits as part of the check
    xor x3, x3, x4    # x3 = d0 XOR d1
    xor x3, x3, x5    # x3 = d0 XOR d1 XOR d3
    xor x3, x3, x6    # x3 = d0 XOR d1 XOR d3 XOR d4
    xor x3, x3, x7    # x3 = d0 XOR d1 XOR d3 XOR d4 XOR d6

    # Isolate the least significant bit (c0) by performing an AND with 1
    andi x10, x3, 1   # x10 = x3 & 1 (this gives c0)

    # The result is now in x10, which will be either 0 or 1, representing the parity check outcome
    # Exit the program (for simulation purposes)
    li a7, 10         # Exit system call
    ecall