.data
n: .word 0x000000018, 0x00009999  # Given number to check divisibility by 9

.text

la x5, n          # Load address of the number into x5
lw x6, 0(x5)      # Load the value of n into x6
addi x7, x0, 0x0F   # Mask for the lower 4 bits (0x0F = 00001111)
addi x28, x0, 0      # Initialize sum of digits to 0
addi x29, x0, 8      # We have 8 digits to process (since 32-bit number, 8 digits of 4-bits)

loop:
    and x18, x7, x6      # Isolate the lower 4 bits of x6 (digit)
    add x28, x28, x18    # Add the isolated digit to the sum
    srli x6, x6, 4       # Right shift x6 by 4 to process the next digit
    addi x29, x29, -1    # Decrement loop counter
    bne x29, x0, loop    # Repeat the loop if there are more digits to process

new:
    # Now we have the sum of the digits in x28
    # Check divisibility by subtracting 9 repeatedly
    addi x30, x0, 9       # Load 9 into x30 for subtraction loop

check_divisibility:
    blt x28, x30, done    # If sum is less than 9, exit loop
    sub x28, x28, x30     # Subtract 9 from the sum
    j check_divisibility  # Repeat until sum is less than 9

done:
    # If the final sum is 0, it's divisible by 9
    beq x28, x0, divisible

not_divisible:
    li x31, 0            # Set x31 to 0 (not divisible by 9)
    j end

divisible:
    li x31, 1            # Set x31 to 1 (divisible by 9)

end:
    # x31 contains the result: 1 if divisible by 9, 0 otherwise
    nop