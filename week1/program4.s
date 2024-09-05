.data
a: .half 0x7000 , 0x0001
.text
la x2, a
lh x18,0(x2)
lh x19,2(x2)
add x20,x18,x19
sh x20,4(x2)
lhu x21,0(x2)
lhu x22,2(x2)
add x23,x21,x22
sh x23,6(x2)

# BYTE 
.data
b: .byte 0x88 , 0x4F

.text
la x2, b
lb x24,0(x2)
lb x25,1(x2)
add x26,x24,x25
sb x26,2(x2)
lbu x27,0(x2)
lbu x28,1(x2)
add x29,x27,x28
sb x29,3(x2)

# words
.data
c: .word 0x00000087 , 0x0000003F
.text

la x10, b
lw x25,0(x10)
lw x26,4(x10)
add x27,x25,x26
sw x27,8(x10)