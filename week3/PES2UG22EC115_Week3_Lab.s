# Program 1
.data
a: .byte 0x5,0x2
.text
la x10,a
lb x11,0(x10)
lb x4,1(x10)
srli x12,x11,5
addi x13,x0,0 #x13 is count
addi x2,x0,1 #x2 is to and it with x11
bne x12,x0,exit
loop1:and x14,x11,x2
    bne x14,x0,next
    addi x2,x2,1
    beq x0,x0,loop1
next:addi x13,x13,1
    beq x13,x4,exit
    addi x2,x2,1
    beq x0,x0,loop1
exit:addi x15 x0,0x03


# Program 2
.data         
code1: .byte 0x01,0x00,0x01,0x01     # P1= 1 P2 = 0 P3 = 0 output 1010101 
code2: .byte 0x01,0x01,0x00,0x00     # P1= 1 P2 = 0 P3 = 0 output 1100001
.text
la x1,code2

Hamming:
    lb x3,0x03(x1)   #d0
    lb x4,0x02(x1)   #d1
    lb x5,0x01(x1)   #d2
    lb x6,0x00(x1)   #d3

    xor x11,x3,x4    # P1 = x11
    xor x11,x11,x6

    xor x12,x3,x5    # P2 = x12
    xor x12,x12,x6

    xor x13,x4,x5    # P3 = x13
    xor x13,x13,x6

    slli x12,x12,0x01
    slli x13,x13,0x03    
    add x15,x12,x13
    add x15,x15,x11

    slli x3,x3,0x02
    slli x4,x4,0x04
    slli x5,x5,0x05
    slli x6,x6,0x06
    add x15,x15,x3
    add x15,x15,x4
    add x15,x15,x5
    add x15,x15,x6
    sb x15,0x04(x1)