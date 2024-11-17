# Write an assembly program to calculate the factorial of a number without recursion

addi x10, x0, 5 # number for which factorial is being calculated
addi x11, x10, 0
addi x12, x0, 1

loop:
    addi x11, x11, -1
    mul x10, x10, x11
    blt x12, x11, loop # loop until multiplied number is 1 
    