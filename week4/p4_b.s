.data # search number
a: .byte 0x11, 0x22, 0x33, 0x44, 0x11

.text
la x10, a # starting index
addi x11, x10, 5 # ending index
addi x15, x0, 0x33 # item to search
loop:
    lb x12, 0(x10)
    addi x10, x10, 1
    beq x10, x11, exit
    bne x15, x12, loop
exit:
    addi x0, x0, 0
