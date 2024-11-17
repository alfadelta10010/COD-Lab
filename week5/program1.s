#Write an assembly program to check whether a given number in an array of elements is divisible by 9
.data
a: .byte 0x9,0x12,0x15,0x51,0xBD
r: .byte 0,0,0,0,0

.text

la x5,a
la x6,r

addi x8,x0,0x9
addi x9,x0,5   #size of array
addi x31,x0,1
addi x30,x0,2


loop:
    lbu x20,0(x5)
    beq x9,x0,exit
    addi x9,x9,-1    
    rem x11,x20,x8
    beq x11,x0,divisible
    bne x11,x0,notdiv
    
notdiv:
    sb x30,0(x6)
    addi x6,x6,1
    addi x5,x5,1
    beq x0,x0,loop
    
divisible:
    sb x31,0(x6)
    addi x5,x5,1
    addi x6,x6,1
    beq x0,x0,loop

exit:
    nop
    