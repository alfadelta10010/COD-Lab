.data
n: .word 5   # Number for which we calculate the factorial 

.text
    la x5, n          
    lw x6, 0(x5)      

    # Initialize result to 1
    li x7, 1           # this will hold the factorial result

    # Loop to calculate factorial (x7 = x7 * i for i = 1 to n)
    li x8, 1           # Set x8 to 1 (loop index i)
loop:
    mul x7, x7, x8     # Multiply result by i
    addi x8, x8, 1     # Increment i
    bge x8, x6, end    # If i >= n, exit the loop
    j loop             # Otherwise, repeat the loop

end:
    # Store the result (in x7) into memory (you can check it later)
    li x5, 0x1000      # Example address to store the result
    sw x7, 0(x5)       # Store the result at the address in x5
    exit : nop
