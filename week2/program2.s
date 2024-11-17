.data
    # Define memory locations for variables and initialize them
y:   .word 10          # y = 10 (example value)
m:   .word 20          # m = 20 (example value)
L:   .word 30          # L = 30 (example value)
D:   .word 15          # D = 15 (example value)
Z:   .word 25          # Z = 25 (example value)
C:   .word 35          # C = 35 (example value)
x:   .word 0           # x will store the result
.text
    # Load values from memory into registers
    la x10,y
    la x11,m
    la x12,L
    la x13,D
    la x14,Z
    la x15,C
    la x16,x
    lw x1, 0(x10)      # Load y into t0
    lw x2, 0(x11)      # Load m into t1
    lw x3, 0(x12)      # Load L into t2
    lw x4, 0(x13)      # Load D into t3
    lw x5, 0(x14)      # Load Z into t4
    lw x6, 0(x15)      # Load C into t5

    # Step 1: Calculate y + m
    add x1 x2,x1      

    # Step 2: Calculate L - D
    sub x3,x3,x4      

    # Step 3: (y + m) - (L - D)
    sub x7, x1, x3  

    # Step 4: Calculate Z + C
    add x5, x6, x5     

    # Step 5: (y + m) - (L - D) + (Z + C)
    add x7,x7,x5    
    # Step 6: Subtract D from the result
    sub x7,x7, x4      

    # Store the result x back to memory
    sw x7,0(x16)      # Store x in memory
