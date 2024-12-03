.text
    # Initialize registers
    addi x11, x0, 6      # x11 = Input number (factorial of 6)
    addi x4, x2, 0       # x4 = Backup of the initial stack pointer
    addi x20, x0, 1      # x20 = Running product (factorial result)

factn:                   # Recursive push onto stack
    sw x11, 0(x2)        # Store current value of x11 onto stack
    addi x2, x2, -4      # Move stack pointer down (push)
    addi x11, x11, -1    # Decrement x11
    bnez x11, factn      # Continue until x11 == 0

main:                    # Multiplication phase
    addi x2, x2, 4       # Move stack pointer up (pop)
    lw x10, -4(x2)       # Load top value of stack into x10
    mul x20, x20, x10    # x20 = x20 * x10 (accumulate factorial)
    bne x2, x4, main     # Repeat until x2 matches x4 (stack is empty)

    # Halt program (result is in x20)
