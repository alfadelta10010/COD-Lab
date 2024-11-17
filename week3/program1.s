.data 
a: .byte 0x11,0x12,0x13,0x14,0x15
b: .byte 0x0
.text

la x10,a
la x11,b
addi x30,x0,1
addi x31,x0,5

loop:
lbu x5,0(x10)
jal x1,twooutfive
sb x20,0(x11)
addi x10,x10,1
addi x11,x11,1
addi x30,x30,1
bltu x30,x31,loop
beq x0,x0,exit3

twooutfive:
    andi x6,x5,0xe0
    bne x6,x0,exit
    addi x13,x0,5
    addi x26,x0,2
    back:
    andi x6,x5,0x01
    beq x6,x0,next
    addi x25,x25,1
    next:
     srli x5,x5,1
     addi x13,x13,-1
     bne x13,x0,back
  
     bne x25,x26,exit
     addi x20,x0,0x01
     beq x0,x0,exit2

    exit:addi x20,x0,0
    exit2:nop
    jalr x0,x1,0
    
exit3: nop
    
    
