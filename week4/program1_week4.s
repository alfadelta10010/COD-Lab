    .text
    .globl _start
_start:
    # Initialize string address (e.g., "racecar")
    la t0, string          # Load address of the string into t0
    li t1, 0               # Counter for the string length

# Step 1: Find the string length
find_length:
    lb t2, 0(t0)           # Load the byte at current address
    beq t2, zero, end_find_length  # End loop if null byte (end of string)
    addi t0, t0, 1         # Move to the next byte
    addi t1, t1, 1         # Increment length counter
    j find_length

end_find_length:
    # t1 now contains the length of the string

# Step 2: Push the string onto the stack
    la t0, string          # Reload address of string
    add t2, t1, t0         # t2 = string end address
    addi t2, t2, -1         # Point to the last character

push_loop:
    lb t3, 0(t0)           # Load current character
    addi t0, t0, 1         # Move to the next character
    # Push character onto the stack (simulate push)
    sw t3, 0(sp)           # Store the character at the top of the stack
    addi sp, sp, -4        # Move the stack pointer

# Step 3: Pop from the stack and compare with the string
    pop_stack:
    # Pop character from the stack
    addi sp, sp, 4         # Move the stack pointer
    lw t3, 0(sp)           # Load the character from the stack
    lb t4, 0(t2)           # Load character from the string
    addi t2, t2, -1         # Move to the previous character

    # Compare characters
    beq t3, t4, continue_comparison # If characters match, continue
    li a0, 0               # Not a palindrome (set return value to 0)
    j end_palindrome_check

continue_comparison:
    bnez t2, pop_stack     # Continue if not end of string

    # If loop completes, the string is a palindrome
    li a0, 1               # Palindrome found (set return value to 1)

end_palindrome_check:
    # Exit program
    nop
    li a7, 10              # Exit syscall
    ecall

# String to be checked (use .byte with ASCII values and null terminator)
    .data
string: .byte 0x72, 0x61, 0x63, 0x65, 0x63, 0x61, 0x72, 0x00  # "racecar" with null terminator
