.data 
b: .byte 0x12

.text
la x10,b
lb x11,0(x10)
addi x20,x0,1 #i=1
addi x21,x0,5 # h=5
addi x22,x0,0 #count=0
addi x23,x0,2 # 2
addi x12,x11,0 #x12=x11
andi x13,x11,0xe0
bne x13,x0,zxc


zxc:
    and x15,x12,x20
    bne x15,x0,inc
    addi x22,x22,1
    beq x21,x0,exit
    
inc:
    addi x21,x21,-1 #h--
    srli x12,x12,0
    bne x22,x23,zxc
    
    
exit:nop