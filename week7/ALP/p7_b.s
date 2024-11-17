.text
    # Initialize registers
    addi x11, x0, 6      # x11 = Input number (factorial of 6)
    addi x20, x0, 1      # x20 = Running product (factorial result)

factorial_loop:          # Loop to calculate factorial
    mul x20, x20, x11    # x20 = x20 * x11 (accumulate product)
    addi x11, x11, -1    # Decrement x11
    bnez x11, factorial_loop # Repeat until x11 == 0

    # Program ends here, result is in x20