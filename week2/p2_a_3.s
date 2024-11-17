.data # addition of bytes
a: .byte 0x11, 0x22, 0x33, 0x44

.text
la x10, a
addi x12, x0, 0
addi x15, x0, 4
loop:
    lb x11, 0(x10)
    add x12, x12, x11
    addi x10, x10, 1
    addi x15, x15, -1
    bnez x15, loop
