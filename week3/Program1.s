.data
a: .byte 0x21
.text
la x10, a 
lbu x5, 0(x10)
andi x6, x5, 0xE0
bne x6, x0, exit
addi x13,x0,5
back:andi x6,x5,0x01
     beq x6,x0,next
     addi x25,x25,01
next:slli x5,x5,1
     addi x13,x13,-1
     bne x13,x0,back
     addi x26,x0,2
     bne x25,x26,exit
     addi x20,x0,0x01
     beq x0,x0,exit2
exit: addi x20,x0,2
exit2:nop
