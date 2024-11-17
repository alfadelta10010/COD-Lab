.data
    string: .byte 109, 97, 100, 97, 109  # ASCII values for "madam"
    len: .word 5                          # Length of string
    result: .word 0                       # Result (1=palindrome, 0=not palindrome)

.text
.globl _start
_start:
    la x5, string       # Load base address of string
    lw x6, len         # Load length of string
    li x7, 0           # Left index (i)
    addi x6, x6, -1    # Right index (j = length - 1)

loop:
    bge x7, x6, palindrome   # If left >= right, it's a palindrome

    # Load characters at left and right indices
    add x8, x5, x7     # Address of left char
    add x9, x5, x6     # Address of right char
    lb x8, 0(x8)       # Load left char
    lb x9, 0(x9)       # Load right char

    bne x8, x9, not_palindrome  # If chars don't match, not a palindrome

    addi x7, x7, 1     # i++
    addi x6, x6, -1    # j--
    j loop

palindrome:
    li x8, 1           # Set result to 1
    j store_result

not_palindrome:
    li x8, 0           # Set result to 0

store_result:
    la x5, result      # Load address of result
    sw x8, 0(x5)       # Store the result

exit:
    li a7, 10          # Exit system call code
    ecall    