#palindrome
.data
string:  .byte "hello", 0x00  # The string "hello"
.text
_start:
    # Load address of the string into register x10
    la   x10, string    # Load address of the string into x10

    # Push the string onto the stack (just characters)
push_loop:
    lb   x11, 0(x10)    # Load the current character from the string
    beq  x11, x0, compare_palindrome  # If null terminator (0), stop pushing
    sub  sp, sp, 4       # Move stack pointer down by 4 bytes
    sw   x11, 0(sp)      # Push character onto the stack
    addi x10, x10, 1     # Move to the next character
    j    push_loop       # Repeat loop

compare_palindrome:
    # Load address of string again to start comparison
    la   x12, string    # Load address of the string into x12
    addi x10, x12, -1   # Move to the last character (just before null)

compare_loop:
    lb   x11, 0(x12)    # Load character from front of the string
    lb   x13, 0(sp)     # Load character from top of the stack
    bne  x11, x13, not_palindrome  # If characters don't match, not a palindrome
    addi x12, x12, 1    # Move to the next character
    addi sp, sp, 4      # Pop character from the stack
    lb   x11, 0(x12)    # Check if we've reached the middle (null terminator)
    beq  x11, x0, done  # If we've reached null, we are done
    j    compare_loop   # Continue comparing

not_palindrome:
    li   x14, 0         # Set result to 0 (not palindrome)
    j    done           # Exit the program

done:
    # Program done, x14 contains the result (0 if not palindrome)
    nop                  # No operation, program ends here

