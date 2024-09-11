
.data
a: .word 5,32,21,18,20
n: .word 5
.text
la x10,a
la x11,n
lw x12,0(x11)
addi x13,x0,0
outer_loop:
    sub x14,x12,x13
    addi x14,x14,-1
    addi x15,x0,0
    inner_loop:
        beq x15,x14,outer_loop_end
        lw x16,0(x10)
        lw x17,4(x10)
        blt x16,x17,no_swap
        sw x17,0(x10)
        sw x16,4(x10)
        no_swap:
            addi x10,x10,4
            addi x15,x15,1
            beq x0,x0,inner_loop
            outer_loop_end:
                addi x14,x13,1
                beq x13,x2,outer_loop
                exit:addi x20,x0,1