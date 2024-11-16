.data
a: .byte 0x11, 0x22, 0x33, 0x44, 0x11
b: .byte 0x11, 0x22, 0x33, 0x44, 0x11
c: .byte 0x11, 0x22, 0x33, 0x44, 0x11

.text
la x10, a # starting index
la x11, b # starting index
la x12, c # starting index
addi x15, x10, 10 # ending index

loop:
    lb x20, 0(x10)
    lb x21, 0(x11)
    lb x22, -1(x12)
    
    mul x23, x20, x12
    add x24, x23, x22
    sw x22, 0(x22)
    
    addi x10, x10, 1
    addi x11, x11, 1
    bne x10, x15, loop
