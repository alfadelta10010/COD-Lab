.data
str:    .asciiz "madam"     # Input string to check
result: .asciiz "Palindrome\n"
        .asciiz "Not Palindrome\n"

.text
    # Start of the main code
main:
    # Load address of string
    la t0, str                # t0 points to the beginning of the string
    addi t1, zero, 0          # t1 will hold the length of the string (initialize to 0)
    
find_length:
    lb t2, 0(t0)              # Load byte from string
    beqz t2, length_found     # If byte is 0 (end of string), we've found the length
    addi t0, t0, 1            # Move to the next byte
    addi t1, t1, 1            # Increment length
    j find_length
    
length_found:
    addi t2, t1, 0            # t2 holds the length of the string
    
    # Initialize stack pointer (assuming it is set up in the system)
    la t0, str                # Reload string address
    addi sp, sp, -32          # Make room on the stack (adjust size as needed)
    
    # Push the first half of the string onto the stack
    addi t3, zero, 0          # t3 is an index (start from 0)
    addi t4, zero, 0          # t4 is the mid-point index
    
push_half:
    bge t3, t1, compare_half  # If t3 >= t1/2, go to compare
    lb t5, 0(t0)              # Load byte from string
    addi t0, t0, 1            # Move to next character
    sw t5, 0(sp)              # Push the byte to stack
    addi sp, sp, -4           # Move stack pointer
    addi t3, t3, 1            # Increment index
    j push_half
    
compare_half:
    # Reset stack pointer to the top of the stack for popping
    addi sp, sp, t1           # Reset stack pointer to the start of pushed part
    addi t6, zero, 0          # Reset index for comparison
    la t0, str                # Reload string address for comparison
    
check_palindrome:
    bge t6, t4, palindrome_done  # If the index exceeds the midpoint, done
    lb t5, 0(t0)              # Load byte from string (from the start)
    lw t7, 0(sp)              # Pop byte from stack (last pushed char)
    addi t0, t0, 1            # Move to the next byte in string
    addi sp, sp, 4            # Increment stack pointer (pop byte)
    bne t5, t7, not_palindrome  # If bytes don't match, not a palindrome
    addi t6, t6, 1            # Increment index
    j check_palindrome

not_palindrome:
    # Set a register to indicate it's not a palindrome (e.g., t0 = 0)
    addi t0, zero, 0         # Non-palindrome flag
    j end

palindrome_done:
    # Set a register to indicate it's a palindrome (e.g., t0 = 1)
    addi t0, zero, 1         # Palindrome flag

end:
    # End of program; loop indefinitely to simulate end
    j end
