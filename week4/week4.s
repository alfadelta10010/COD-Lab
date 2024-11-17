week 4
1. Write an assembly program to find whether a given string is a palindrome or not, using stack operations
.data
a: .byte 0x11, 0x22, 0x33, 0x33, 0x22, 0x11  # Array `a` is a palindrome

.text
palindrome:
    la x10, a              # Load the address of 'a' into register x10 (array start)
    addi x15, x10, 3       # Set x15 to point to the middle of the array (index 3)
    addi x11, x0, 1        # Set x11 to 1 (valid palindrome flag)

    # Loop 1: Push the first half of the array onto the stack
loop1:
    lb x20, 0(x10)         # Load byte from current position of x10 (array) into x20
    sw x20, 0(sp)          # Store x20 onto the stack (push the byte onto the stack)
    addi sp, sp, 4         # Move the stack pointer to the next free location (4 bytes)
    addi x10, x10, 1       # Increment the array pointer (x10)
    blt x10, x15, loop1    # Continue looping until x10 reaches x15 (middle of the array)

    addi x15, x15, 3       # Set x15 to point to the end of the array (index 5)

    # Loop 2: Compare second half of the array with the stack (first half)
loop2:
    addi sp, sp, -4        # Move the stack pointer back by 4 bytes (pop from stack)
    lb x20, 0(x10)         # Load byte from the second half of the array into x20
    lb x21, 0(sp)          # Load byte from the stack (first half) into x21
    bne x20, x21, nopl     # If bytes don't match, jump to 'nopl' (not a palindrome)
    addi x10, x10, 1       # Increment the array pointer (x10)
    bne x10, x15, loop2    # Continue looping until the end of the array

    # If we reach here, the array is a palindrome
    j exit

nopl:
    addi x11, x0, 0        # If not a palindrome, set x11 to 0 (invalid palindrome)

exit:
    addi x0, x0, 0         # Exit point (no operation) 

2. Write an assembly program to search a given number in an array
.data
a: .byte 10, 20, 30, 40, 50  # Array a with values 10, 20, 30, 40, 50

.text
la x10, a         # Load the address of the first element of the array into x10
addi x11, x10, 5  # Set x11 to the address of the last element (x10 + 5, since there are 5 elements)
addi x14, x0, 30  # Set x14 to the value 30 (the value we are looking for in the array)

loop:
    lb x12, 0(x10)      # Load the byte from the address in x10 into x12
    addi x10, x10, 1    # Increment the address in x10 to point to the next byte in the array
    beq x10, x11, exit  # If x10 equals x11, we have reached the end of the array, so exit
    bne x14, x12, loop  # If the value in x12 is not equal to 30 (value in x14), continue the loop

exit:
    addi x0, x0, 0      # Exit the program (no operation)
