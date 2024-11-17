 .data
 arr: .word 25,56,0,10,20
 .text
    la x5,arr
    addi x6,x0,0 
    addi x7,x0,5 
    addi x28,x0,0 
loop:bge x6,x7,exit 
    sub x22,x7,x6
    addi x15,x22,-1 
    add x29,x0,x28 
inloop:bge x29,x15,eq
    addi x30,x29,1 
    addi x31,x29,0
    slli x31,x31,2
    add x3,x31,x5
    lw x4,0x0(x3) 
    slli x30,x30,2
    add x10,x30,x5
    lw x11,0x0(x10) 
    bge x11,x4,in
    add x16,x0,x11 
    sw x4,0x0(x10)
    sw x16,0x0(x3)
    addi x29,x29,1
    beq x0,x0,inloop
 in: addi x29,x29,1
    beq x0,x0,inloop
 eq:addi x6,x6,1
    beq x0,x0,loop
 exit: nop