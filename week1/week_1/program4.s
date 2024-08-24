#halfword
.data
a: .half 0x0005 , 0x0004
.text
la x10,a
lh x18,0(x10)
lh x19,2(x10)
add x20,x18,x19
sh x20,4(x10)
lhu x21,0(x10)
lhu x22,2(x10)
add x23,x21,x22
sh x23,6(x10)

#byte 
.data
b:.byte 0x44, 0x7F

.text
la x10, b
lb x24,0(x10)
lb x25,1(x10)
add x26,x24,x25
sb x26,2(x10)
lbu x27,0(x10)
lbu x28,1(x10)
add x29,x27,x28
sb x29,3(x10)

# words
.data
c: .word 0x0000004f , 0x0000003f
.text

la x10, b
lw x25,0(x10)
lw x26,4(x10)
add x27,x25,x26
sw x27,8(x10)