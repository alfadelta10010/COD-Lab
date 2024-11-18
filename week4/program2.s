.data
a: .byte 0x12, 0x13, 0x14, 0x15, 0x16

.text
la x10, a 
addi x11, x10, 5
addi x15, x0, 0x33 
loop:
    lb x12, 0(x10)
    addi x10, x10, 1
    beq x10, x11, exit
    bne x15, x12, loop
exit:
    addi x0, x0, 0
