.data
a: .byte 0x11, 0x22, 0x33, 0x33, 0x22, 0x11 # Input array
length: .word 6                              # Length of the array
result: .word 1                              # Assume palindrome (1 = yes)
.text
main:
    la x10, a               # Load base address of array into x10
    lw x11, length          # Load length of array into x11
    addi x12, x10, 0        # Pointer to start of array
    add x13, x10, x11       # Pointer to end of array (a + length)
    addi x13, x13, -1       # Adjust to point to last element
check_palindrome:
    lb x14, 0(x12)          # Load byte from start
    lb x15, 0(x13)          # Load byte from end
    bne x14, x15, not_palindrome # If not equal, it's not a palindrome
    addi x12, x12, 1        # Move start pointer forward
    addi x13, x13, -1       # Move end pointer backward
    blt x12, x13, check_palindrome # Continue until pointers meet
exit:
    j end                   # Exit program
not_palindrome:
    la x16, result          # Load address of result
    sw x0, 0(x16)           # Set result to 0 (a palindrome)
end:
    nop                     # Program ends


