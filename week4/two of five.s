#first three bits should be zero last two bits should have two 1s
.data
a: .byte 0x12
b: .byte 0x00
c: .byte 0x6
d: .byte 0x2
.text
la x10,a
la x11,b
la x19,c
la x22,d
lb x21,0(x22)
lb x18,0(x19)
lb x12,0(x10)
lb x13,0(x11)
lb x17,0(x11)
srli x14,x12,5
bne x14,x13,exit
slli x15,x12,3
beq x14,x13,loop
loop:
    srli x15,x15,3
zero:   
    beq x17,x21,end
    addi x13,x13,1
    beq x13,x18,end  
    andi x16,x15,0x01
    bne x16,x0,count
    srli x15,x15,1
    beq x16,x0,zero
count:
    addi x17,x17,1  
    beq x0,x0,loop     
exit:
    addi x20,x0,2
end:
    add x13,x13,x0    