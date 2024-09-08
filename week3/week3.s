.data 
a: .word 0x12345678
.text
la x10,a
lw x11,0(x10)
addi x13,x13,24
addi x20,x20,4

loop:

andi x14,x11,0xff
sll x16,x14,x13
add x17,x17,x16 
srli x11,x11,8
addi x13,x13,-8
addi x20,x20,-1
bne x0,x20,loop

sw x17,4(x10)