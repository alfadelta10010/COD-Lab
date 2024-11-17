#if found and divisible x20=1  els x20=1

.data
a: .word 11,2,13,18,15
len: .word 5
N: .word 18

.text
la x10,a
lw x11,len
lw x12,N
add x20,x20,x0
addi x15,x0,9

search:
    lw x13,0(x10)
    beq x13,x12,divisibility
    addi x10,x10,4
    addi x11,x11,-1
    bne x11,x0,search
    jal x1,exit


divisibility:
    rem x21,x13,x15
    bne x21,x0,exit
    addi x20,x20,1 
    
exit: nop 