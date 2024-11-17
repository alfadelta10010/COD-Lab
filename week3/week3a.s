     .data
number:     .byte 0x1A        # Input 5-bit number (0x1A = 11010 binary)

    .text
    la      x10, number       # Load address of 'number'
    lb      x11, 0(x10)       # Load the 5-bit number into x11

    # Mask out any extra bits (ensure it's only 5 bits)
    andi    x11, x11, 0x1F    # Mask the number to keep only the least significant 5 bits

    # Count the number of 1s in the 5-bit number
    li      x12, 0            # Initialize the counter (x12) to 0

    # Loop to count set bits
count_ones:
    andi    x13, x11, 0x1     # Extract the least significant bit
    add     x12, x12, x13     # Add the bit to the counter
    srli    x11, x11, 1       # Shift the number right by 1 bit
    bnez    x11, count_ones   # If number is not zero, repeat the loop

    # Check if the count is exactly 2
    li      x14, 2            # Load the value 2 into x14
    beq     x12, x14, valid   # If count == 2, jump to valid
    # If not valid, execute code for invalid case
invalid:
    # Invalid case (not a 2-out-of-5 number)
    # Here you can insert actions like halting or branching
    j       end

valid:
    # Valid case (2-out-of-5 number)
    # Insert actions for valid case here
    nop                       # Example placeholder

end:
    # Program ends here
    nop                       # Example placeholder
