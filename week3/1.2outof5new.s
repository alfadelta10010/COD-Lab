#2outof5new
    .data
a:  .byte 0x12       # example value: 0001 0010 in binary (contains exactly two 1's)

    .text
_start:
    # Load the byte from memory
    la   x10, a        # Load address of a into x10
    lbu  x5, 0(x10)    # Load the byte from address a into x5 (0x12)

    # Check if the MSB of the number is set
    andi x6, x5, 0xE0  # Masking the MSB (0xE0 = 11100000)
    bne  x6, x0, exit   # If MSB is non-zero, exit

    # Initialize the counter for 1's
    addi x25, x0, 0     # Clear x25 (counter for 1's)
    addi x13, x0, 5     # Set x13 to 5 (number of bits to check)

back:
    andi x6, x5, 0x01   # Mask the least significant bit (0x01 = 00000001)
    beq  x6, x0, next    # If the LSB is 0, go to next

    addi x25, x25, 1     # Increment the 1's counter in x25

next:
    srli x5, x5, 1       # Shift right by 1 (move to the next bit)
    addi x13, x13, -1    # Decrease the bit counter by 1
    bne  x13, x0, back   # If there are still bits to check, go back

    # After the loop, check if there were exactly 2 ones
    addi x26, x0, 2      # Store the value 2 in x26 (target number of 1's)
    bne  x25, x26, exit  # If there were not exactly 2 ones, exit

    # If exactly 2 ones were found, store 1 in x20 (indicating "2 out of 5")
    addi x20, x0, 0x01   # Store 1 in x20 to indicate "2 out of 5"

    # Program exit
exit:
    nop                  

