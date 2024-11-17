# Write an Assembly program for calculating x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L, D, Z, C are elements of 32-bits wide


    .data
y:  .word 10          # y = 10
m:  .word 5           # m = 5
L:  .word 20          # L = 20
D:  .word 3           # D = 3
Z:  .word 7           # Z = 7
C:  .word 2           # C = 2

    .text
    .globl main
main:
    # Load values into temporary registers
    lw t0, y          # Load y into t0 (t0 = 10)
    lw t1, m          # Load m into t1 (t1 = 5)
    lw t2, L          # Load L into t2 (t2 = 20)
    lw t3, D          # Load D into t3 (t3 = 3)
    lw t4, Z          # Load Z into t4 (t4 = 7)
    lw t5, C          # Load C into t5 (t5 = 2)


    add t0, t0, t1  
    sub t2, t2, t3 
    add t4, t4, t5   
    sub t0, t0, t2   
    add t0, t0, t4 
    sub x10, t0, t3     # x10 = 4


# End of program