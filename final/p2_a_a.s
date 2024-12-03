.data # addition of word
a: .word 0x11111111, 0x22222222, 0x33333333, 0x44444444

.text
la x10, a
addi x12, x0 ,0
addi x15, x0, 4
loop:
    lw x11, 0(x10)
    add x12, x12, x11
    addi x10, x10, 4
    addi x15, x15, -1
    bnez x15, loop
