.data
a: .byte 0x11, 0x22, 0x33, 0x44, 0x11
b: .byte 0x11, 0x22, 0x33, 0x44, 0x11
c: .byte 0x11, 0x22, 0x33, 0x44, 0x11
.text
la x10, a
la x11, b
la x12, c
addi x13, x10, 10
loop:
    lb x15, 0(x10)
    lb x16, 0(x11)
    lb x17, -1(x12)
    mul x23, x15, x12
    add x24, x23, x17
    sw x17, 0(x17)  
    addi x10, x10, 1
    addi x11, x11, 1
    bne x10, x13, loop