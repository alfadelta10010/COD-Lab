#Write an assembly program to check if a number is a 2 out of 5 number

.data 
n: .byte 0x11,0x13
a: .byte 0x0

.text
la x5,n
la x6,a

#the MSB 3 bits of the byte number stored in memory must be zero
addi x7,x0,0x0e0
addi x21,x0,0
addi x23,x0,5

lb x28,0(x5)
and x29,x28,x7

bne x29,x0,exit
andi x30,x28,0x01f        #x30 consists of the lower 5 bits
loop:
    andi x20,x30,0x1
    srli x30,x30,1
    addi x23,x23,-1
    beq x0,x20,loop
    addi x21,x21,1   #x21 counter of number of 1's
    bne x23,x0,loop
exit:
    sb x21,0(x6)
    nop
 
    