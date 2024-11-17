.data
x: .byte 0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x08
y: .byte 0x00
result: .byte 0x00
.text
la x2,x
la x3,y
la x1,result
lb x5,0x00(x3)
addi x4,x0,0x08
addi x12,x0,0x00
loop:
    lb x6,0x00(x2)
    beq x5,x6,True
    addi x2,x2,0x01
    addi x12,x12,0x01
    bne x4,x12,loop
    beq x4,x12,exit
True:
    addi x10,x0,0x01
    sb x10,0x00(x1)
    addi x2,x2,0x01
    addi x12,x12,0x01
    bne x4,x12,loop
exit:
    nop