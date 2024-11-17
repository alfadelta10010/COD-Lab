#write a function to find if the given 8 bit number are 2 out of 5 code.#if true x20 = 0x01 or x2 = 0x02
.data
a:.byte 0b00010010
.text
la x1,a
lbu x2,0x00(x1)
addi x4,x0,0x020
bltu x2,x4,loop
beq x0,x0,false

loop:
andi x5,x2,0x01
srli x2,x2,0x01
add x6,x6,x5
bne x2,x0,loop
addi x4,x0,0x02
bgtu x6,x4,false
addi x20,x0,0x01
beq x0,x0,exit

false:
addi x20,x0,0x02

exit:
addi x0,x0,0