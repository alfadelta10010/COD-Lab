# Write a program to find the factorial of a number with recursion

addi x10, x0, 5
addi x11, sp, 0
addi x12, x0, 1
#addi x13, x0, 1

push: # push all required values into stack
    sw x10, 0(sp)
    addi sp, sp, 4
    addi x10, x10, -1
    bne x10, x12, push
    
    sw x10, 0(sp)

pop: # pop elements and multiply
    addi sp, sp, -4
    lw x10, 0(sp)
    mul x12, x12, x10
    bne sp, x11, pop