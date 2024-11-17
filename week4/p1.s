.data
str:    .asciz "racecar"   

.text
    la x5, str              

    # Step 1: Push the characters onto the stack
    li x6, 0                # Initialize a counter (x6 will be used to count characters)
push_loop:
    lb x7, 0(x5)            # Load byte from string (x7 = str[i])
    beq x7, x0, done_push    # If byte is zero (end of string), exit loop
    addi x5, x5, 1           # Move to next byte (next character)
    addi x6, x6, 1           # Increment counter (keep track of string length)
    sub x8, x6, 1            # x8 = string length - 1 (index of last character)
    addi sp, sp, -4          # Decrease stack pointer to push character onto the stack
    sb x7, 0(sp)             # Store byte in stack at sp (push onto stack)
    j push_loop              # Repeat the loop

done_push:
    # Step 2: Compare the string with the stack
    la x5, str              # Reload string address (start from the beginning of the string)
    li x6, 0                # Reset counter (used to index the string)
    li x9, 1                # Assume it's a palindrome (set flag to true)

compare_loop:
    lb x7, 0(x5)            # Load byte from string (x7 = str[i])
    beq x7, x0, done_compare # If byte is zero (end of string), exit loop
    addi x5, x5, 1           # Move to next byte (next character)

    lbu x10, 0(sp)           # Pop a character from the stack (x10 = stack value)
    addi sp, sp, 4           # Increment stack pointer (pop character from stack)

    bne x7, x10, not_palindrome # If characters don't match, it's not a palindrome
    addi x6, x6, 1           # Increment counter
    j compare_loop           # Repeat the loop

done_compare:
    li x11, 1                # Set x11 to 1 to indicate palindrome
    
exit: nop

not_palindrome:
    li x11, 0                # Set x11 to 0 to indicate not a palindrome

exit:nop
