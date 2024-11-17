#Program2a

.data
number: .word 5          # Number to calculate factorial
.text

    la x12, number        # Load the base address 
    lw x10, 0(x12)        # Load the value of number into x10 
    li x11, 1             # Initialize x11 to 1 (x11 = result)
    
    beq x10, x0, end      # If n == 0, skip the loop and go to end
    
loop:
    mul x11, x11, x10     # result = result * n (x11 = x11 * x10)
    addi x10, x10, -1     # n = n - 1 (x10 = x10 - 1)
    bnez x10, loop        # If n != 0, continue the loop

end:
    # Store the result in memory
   
    sw x11, 4(x12)        # Store the factorial result into `result`
    addi x10,x0,10                   # Return from the program
 

#Program2b

.text

    # Set up the initial value of n (e.g., 5) in x10
    addi x10, x0, 5       # x10 = n (number to calculate factorial for)
    jal x1, fact          # Call the factorial function
    addi x21, x10, 0      # Store the result in x21 for later use
same:
    j same                # Endless loop (halt the program)

fact:
    # Adjust stack for 2 items: return address and argument
    addi sp, sp, -8       # Decrease stack pointer to save 2 items
    sw x1, 4(sp)          # Save the return address on the stack
    sw x10, 0(sp)         # Save the argument n on the stack

    # Base case: if n <= 1, return 1
    addi x5, x10, -1      # x5 = n - 1
    bge x5, x0, L1        # If (n - 1) >= 0, go to L1 (recursive case)
    addi x10, x0, 1       # Return 1 for n = 0 or n = 1
    addi sp, sp, 8        # Restore stack pointer
    jalr x0, (x1)0        # Return to caller

L1:
    # Recursive case: calculate fact(n - 1)
    addi x10, x10, -1     # n >= 1: argument gets (n − 1)
    jal x1, fact          # Call fact with (n − 1)
    addi x6, x10, 0       # Move result of fact(n - 1) to x6

    # Restore argument n and return address
    lw x10, 0(sp)         # Restore argument n
    lw x1, 4(sp)          # Restore return address
    addi sp, sp, 8        # Adjust stack pointer

    # Multiply n * fact(n - 1)
    mul x10, x10, x6      # x10 = n * fact(n − 1)
    jalr x0, (x1)0        # Return to caller

