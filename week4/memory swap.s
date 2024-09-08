#swap the content of two memory locations if a(0)<a(1)
.data
a: .byte 0x3D,0x4D
.text
la x10,a
lbu x12,0(x10)
lbu x13,1(x10)
bgeu x12,x13,noswap
sb x12,1(x10)
sb x13,0(x10)
beq x0,x0,end
noswap:
    addi x14,x0,1
end:
    addi x15,x0,1    