.data
string:    .string "Rishab"                      # Input string (null-terminated)
palindrome_msg: .string "Palindrome\n"           # Message for palindrome
not_palindrome_msg: .string "Not a palindrome\n" # Message for not palindrome

.text
.globl main

main:
    # Step 1: Find the length of the string
    la t0, string         # Load the address of the string into t0
    li t1, 0              # Initialize length counter t1 to 0

find_length:
    lb t2, 0(t0)          # Load a byte from the string
    beqz t2, push_stack   # If null terminator, stop counting
    addi t1, t1, 1        # Increment length counter
    addi t0, t0, 1        # Move to the next character
    j find_length

# Step 2: Push all characters onto the stack
push_stack:
    la t0, string         # Reset t0 to the start of the string
    mv t3, t1             # Copy length to t3 for loop control

push_loop:
    beqz t3, compare      # If length is 0, go to compare
    lb t2, 0(t0)          # Load the current character into t2
    addi sp, sp, -4       # Adjust stack pointer (push space)
    sw t2, 0(sp)          # Push character onto the stack
    addi t0, t0, 1        # Move to the next character in the string
    addi t3, t3, -1       # Decrement the counter
    j push_loop

# Step 3: Compare the string with popped stack characters
compare:
    la t0, string         # Reset t0 to the start of the string
    mv t3, t1             # Reset t3 to the length

compare_loop:
    beqz t3, palindrome   # If all characters are compared, it's a palindrome
    addi sp, sp, 4        # Adjust stack pointer (pop space)
    lw t2, 0(sp)          # Pop character from stack
    lb t4, 0(t0)          # Load the current character from the string
    bne t2, t4, not_palindrome # If mismatch, it's not a palindrome
    addi t0, t0, 1        # Move to the next character
    addi t3, t3, -1       # Decrement the counter
    j compare_loop

# Step 4: Output the result
palindrome:
    la a0, palindrome_msg # Load address of palindrome message
    li a7, 4              # Syscall for print string
    ecall
    j exit

not_palindrome:
    la a0, not_palindrome_msg # Load address of not palindrome message
    li a7, 4              # Syscall for print string
    ecall

exit:
    li a7, 10             # Syscall for exit
    ecall
