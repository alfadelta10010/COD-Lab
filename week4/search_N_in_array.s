.data
a: .word 11,2,13,4,15
len: .word 5
N: .word 13

.text
la x10,a
lw x11,len
lw x12,N
add x20,x20,x0

search:
    lw x13,0(x10)
    beq x13,x12,found
    addi x10,x10,4
    addi x11,x11,-1
    bne x11,x0,search
    jal x1,exit


found:
    addi x20,x0,1   
    
exit: nop 