.data
string: .asciz "malayalam"   # Input string to check for palindrome
result: .word 0           # Output: 1 for palindrome, 0 otherwise

.text
                # Load the address of the string
    la x10, string         # x10 = address of string
    li x11, 0              # x11 = counter for string length
    li sp, 0xFFFFFFF0      # Initialize stack pointer

                # Calculate the length of the string
find_length:
    lbu x12, 0(x10)        # Load byte from string
    beq x12, x0, reverse   # If null terminator, end loop
    addi x10, x10, 1       # Increment string pointer
    addi x11, x11, 1       # Increment length counter
    j find_length

reverse:
                # Reverse the string using the stack
    la x10, string         # Reset x10 to the start of the string
    mv t0, x11             # Save the length of the string in t0

push_to_stack:
    lbu x12, 0(x10)        # Load byte from the string
    beq x12, x0, compare   # If null terminator, end loop
    addi x10, x10, 1       # Move to next character
    addi sp, sp, -1        # Decrement stack pointer
    sb x12, 0(sp)          # Push character onto the stack
    j push_to_stack

compare:
                # Compare the original string with the reversed string
    la x10, string         # Reset x10 to the start of the string
    li x13, 1              # Assume palindrome initially (x13 = 1)

compare_loop:
    lbu x12, 0(x10)        # Load byte from the original string
    beq x12, x0, _result    # If null terminator, end comparison
    addi x10, x10, 1       # Move to next character

    lbu x14, 0(sp)         # Pop byte from the stack
    addi sp, sp, 1         # Increment stack pointer

    bne x12, x14, not_palindrome # If mismatch, not a palindrome
    j compare_loop

not_palindrome:
    li x13, 0              # Set result to 0 (not a palindrome)

_result:
    # Store the result (1 for palindrome, 0 otherwise)
    la x15, result
    sw x13, 0(x15)