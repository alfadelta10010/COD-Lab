.data
a: .byte 0x5
.text
la x10, a
lb x8, 0(x10)
addi x9, x0, 1
loop:
    beq x8, x0, exit 
    mul x9, x9, x8    #(x9 = x9*x8)
    addi x8, x8, -1   # Decrement x8 by 1
    beq x0, x0, loop
exit:
    nop
