.data 
    n: .word 5               # Number for which factorial is to be calculated 
    r: .word 1               # Result initialized to 1 

.text 
    la x10, n                    # Load address of 'n' into x10 
    lw x11, 0(x10)                  # Load n into x11 
    la x12, r                 # Load address of 'r' into x12 
    j factorial                 # Jump and link to factorial function 
    sw x13, 0(x12)                  # Store the r back to 'r' 
    jal x0,exit                         # Infinite loop to halt the program 
factorial: 
    addi sp, sp, -8               # Make space on the stack for ra and n 
    sw ra, 4(sp)                  # Save return address 
    sw x11, 0(sp)                  # Save 'n' to the stack 
    beqz x11, base_case            # If n == 0, jump to base_case 
    addi x14, x11, -1               # x14 = n - 1 
    beq x14, x0, base_case         # If n == 1, jump to base_case 
    addi x11, x11, -1               # n = n - 1 
    jal factorial                  # Recursive call 
    lw x14, 0(sp)                  # Load 'n' from the stack 
    mul x13, x13, x14                # r = r * n 
base_case: 
    lw ra, 4(sp)                  # Restore return address 
    addi sp, sp, 8                # Restore the stack (pop ra and n) 
    jr ra                         # Return to the caller 
exit: 
    jal x0,exit                         # Infinite loop to halt the program