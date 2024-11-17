.data
n:.byte 0x12
.text
la x11,n
lbu x12,0(x11)
andi x13,x12,0xE0
bne x13,x0,exit

addi x14,x0,5
back:
andi x13,x12,0x01
beq x13,x0,next
addi x20,x20,01

next:srli x12,x12,1
     addi x14,x14,-1
     bne x14,x0,back
     addi x21,x0,2
     bne x20,x21,exit
     addi x22,x0,0x01
     beq x0,x0,exit2

exit:addi x22,x0,2

exit2:nop