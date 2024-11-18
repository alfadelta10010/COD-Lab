.data # addition of bytes
a: .byte 0x11, 0x22, 0x33, 0x44

.text
la x10, a
addi x12, x0, 0
addi x13, x0, 4
loop:
    lb x11, 0(x10)
    add x12, x12, x11
    addi x10, x10, 1
    addi x13, x13, -1
    bnez x13, loop