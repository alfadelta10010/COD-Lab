.data
    msg:    .byte 109, 97, 100, 97, 109      # ASCII values for "madam"
    msg_len:.word 5                           # Length of the string
    is_palindrome:.word 0                     # Result flag (1=palindrome, 0=not palindrome)

.text
.globl _start
_start:
    la      t0, msg          # Load base address of msg into t0
    lw      t1, msg_len      # Load length of msg into t1
    li      t2, 0            # Initialize left pointer (left = 0)
    addi    t1, t1, -1       # Initialize right pointer (right = length - 1)

check_loop:
    bge     t2, t1, set_palindrome  # If left >= right, it's a palindrome

    # Access characters at current left and right positions
    add     t3, t0, t2       # Calculate address of left character
    add     t4, t0, t1       # Calculate address of right character
    lb      t3, 0(t3)        # Load left character into t3
    lb      t4, 0(t4)        # Load right character into t4

    bne     t3, t4, set_not_palindrome  # If characters don't match, not a palindrome

    addi    t2, t2, 1        # Move left pointer to the right (left++)
    addi    t1, t1, -1       # Move right pointer to the left (right--)
    j       check_loop        # Repeat the loop

set_palindrome:
    li      t5, 1            # Load 1 into t5 to indicate palindrome
    j       store_result

set_not_palindrome:
    li      t5, 0            # Load 0 into t5 to indicate not a palindrome

store_result:
    la      t0, is_palindrome # Load address of is_palindrome
    sw      t5, 0(t0)         # Store the result (1 or 0) into is_palindrome

terminate:
    li      a7, 10           # Load exit system call code into a7
    ecall                    # Make system call to terminate the program
