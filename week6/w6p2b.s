.text # Recursion factorial
addi x11, x0, 6 # input number
addi x4, sp, 0 # backup sp
addi x20, x0, 1
addi x21, x0, 1
factn: # store values in stack fact(n)
    sw x11, 0(sp)
    addi sp, sp, 4
    addi x11, x11, -1
    beq x11, x20, fact1 # fact(1)
    j factn
fact1:
    sw x11, 0(sp)
    addi sp, sp, 4
main: # start multiplying
    addi sp, sp, -4 # stack pop
    lw x11, 0(sp)
    mul x20, x20, x11
    mulhu x21, x20, x11
    addi x11, x11, -1
    bne sp, x4, main # until stack is empty