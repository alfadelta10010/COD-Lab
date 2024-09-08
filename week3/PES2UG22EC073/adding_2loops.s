# Program: Sum of elements in two arrays, where each element is of word size
# The sum of corresponding elements from arrays 'a' and 'b' is stored in array 'c'

.data
a: .word 0x01, 0x02, 0x03, 0x04, 0x05   # Array 'a' containing 5 words
b: .word 0x06, 0x07, 0x08, 0x09, 0x0A   # Array 'b' containing 5 words
c: .word 0x00, 0x00, 0x00, 0x00, 0x00   # Array 'c' for storing the results, initialized to 0

.text
la x1, a            # Load the base address of array 'a' into register x1
la x2, b            # Load the base address of array 'b' into register x2
la x3, c            # Load the base address of array 'c' into register x3

addi x19, x0, 0     # Initialize loop counter (x19) to 0
addi x20, x0, 5     # Set the loop limit to 5 (since there are 5 elements in each array)

loop:
    lw x4, 0(x1)     # Load the next word from array 'a' into register x4
    lw x5, 0(x2)     # Load the next word from array 'b' into register x5
    add x6, x4, x5   # Add the values in x4 and x5, store the result in x6
    sw x6, 0(x3)     # Store the result (sum) into array 'c'

    addi x19, x19, 1  # Increment the loop counter (x19)
    addi x1, x1, 4    # Move to the next word in array 'a' (increment the address by 4 bytes)
    addi x2, x2, 4    # Move to the next word in array 'b' (increment the address by 4 bytes)
    addi x3, x3, 4    # Move to the next word in array 'c' (increment the address by 4 bytes)

    blt x19, x20, loop  # Continue looping until all 5 elements are processed (x19 < x20)

# End of program

