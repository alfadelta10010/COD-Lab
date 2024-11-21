.data 
    n:    .word 5               # Number for which factorial is to be calculated 
    r: .word 1               # Result initialized to 1 
.text 
    la x10, n                    # Load address of 'n' into x10 
    lw x11, 0(x10)                  # Load n into x11 
    la x12, r                 # Load address of 'r' into x12 
    lw x13, 0(x12)                  # Load r (initially 1) into x13 
    addi x14, x11, -1               # Calculate n - 1 and store in x14 
    addi x15, x0, 1                # Initialize counter i = 1 
 iterative_loop: 
    bge x15, x11, exit              # If i >= n, exit loop 
    mul x13, x13, x15                # r = r * i 
    addi x15, x15, 1                # Increment i 
    jal x0, iterative_loop               # Repeat loop  
exit: 
    sw x13, 0(x12)                  # Store the r back to 'r' 
    jal x0, done                         # Infinite loop to halt the program