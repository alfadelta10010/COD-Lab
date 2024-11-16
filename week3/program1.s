.data
a: .byte 0x7,0xa,0x5,0x3,0x9
b: .byte 0,0,0,0,0

.text
la x10,a
la x11,b
addi x22,x10,0
addi x23,x11,0
addi x25,x0,5
addi x27,x0,1
loop:
     addi x24,x0,0
     lbu x24,0(x22)
     addi x22,x22,1
     addi x23,x23,1
     addi x25,x25,-1
     jal x1,subroutine
     bne x20,x27,skip
     sb x27,0(x23)
     skip:
     bne x25,x0,loop
     beq x0,x0,exit3

subroutine:    
addi x21,x23,0
andi x12,x21,0xE0
bne x12,x0,exit
addi x13,x0,5
addi x14,x0,0
addi x15,x0,2
addi x17,x0,0
back:
    andi x16,x21,0x01 
    beq x16,x0,next
    addi x17,x17,1    
    next:
        srli x16,x16,1
        addi x13,x13,-1
        bne x13,x0,back
    bne x17,x15,exit
addi x20,x0,0
addi x20,x20,1
beq x12,x0,exit2        
exit:
    addi x26,x0,2 
exit2:
    jalr x0,x1,0
exit3:
    nop