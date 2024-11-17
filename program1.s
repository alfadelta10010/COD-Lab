.data
    string: .byte 109, 97, 100, 97, 109   # ASCII values for "madam"
    len: .word 5                          # Length of string
    result: .word 0                       # Result (1=palindrome, 0=not palindrome)

.text
.globl _start
_start:
    la t0, string       # Base address of string
    la t1, len          # Load address of length
    lw t1, 0(t1)        # Load the length value from memory
    li t2, 0            # Initialize left index (i)
    addi t3, t1, -1     # Compute right index (j = length - 1)

check_loop:
    blt t3, t2, is_palindrome  # If right < left, it's a palindrome

    # Load characters at left and right indices
    add t4, t0, t2       # Address of left char
    add t5, t0, t3       # Address of right char
    lb t6, 0(t4)         # Load left char


    addi t2, t2, 1       # Increment left index (i)
    addi t3, t3, -1      # Decrement right index (j)
    j check_loop

is_palindrome:
    li t4, 1             # Result = 1 (palindrome)
    j save_result

not_palindrome:
    li t4, 0             # Result = 0 (not palindrome)

save_result:
    la t5, result        # Address of result
    sw t4, 0(t5)         # Store the result

exit_program:
    li a7, 10            # Exit system call code
    ecall                # Terminate program

