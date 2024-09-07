.data
a: .word 0x12345678
.text
la x10,a
lw x11,0(x10)
addi x12,x0,3       /3 is added to register x12
back:
    andi x13,x11,0xFF       
    add x14,x14,x13
    slli x14,x14,8
    srli x11,x11,8
    addi x12,x12,-1
bnez x12,back           /branch not equal 
andi x15,x11,0xFF       
add x15,x14,x15