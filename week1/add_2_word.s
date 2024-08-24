.data
a:.half -5,3
b:.byte -4,1
.text
la x8,a
la x9,b
lh x10,0(x8)
lh x11,2(x8)
add x12,x11,x10

lb x13,0(x9)
lb x14,1(x9)
add x15,x13,x14

lhu x16,0(x8)
lhu x17,2(x8)
add x18,x17,x16

lbu x19,0(x9)
lbu x20,1(x9)
add x21,x19,x20

sh x22,4(x8)
sh x23,6(x8)
sb x24,3(x15)
