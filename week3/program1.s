.data 
a: .byte 0x20
.text
    
la x10,a
lbu x11,0(x10)
andi x12,x11,0xE0
bne x12,x0,exit
addi x13,x0,5
addi x14,x0,0
addi x15,x15,2
back:
    andi x16,x11,0x01 
    beq x16,x0,next
    addi x17,x17,1    
    next:
        srli x16,x16,1
        addi x13,x13,-1
        bne x13,x0,back
    bne x17,x18,exit
addi x20,x20,0x01
beq x12,x0,exit2        
exit:addi x20,x0,2 
exit2:nop    


