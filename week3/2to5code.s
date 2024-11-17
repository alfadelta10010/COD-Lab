.data
a:.byte,0x12
.text
la x10,a
lbu x11,0(x10)
srli x12,x11,5
bne x12,x0,else
addi x13,x0,5 
back:
    andi x12,x11,1
    beq x12,x0,next
    addi x25,x25,1
next:
   srli x11,x11,1
   addi x13,x13,-1
   bne x13,x0,back
   addi x26,x0,2
   bne x25,x26,else
   addi x20 x0,1
   beq x0,x0,exit
else:
    addi x20,x0,2
exit:
    nop