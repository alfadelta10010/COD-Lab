.data
a: .half 0x3564,0xF213,0x324A,0x546F,0x341A
b: .half 0x2325,0x7684,0xA25E,0x8732,0x72AF
c: .word 0,0,0,0,0
.text
la x10,a
la x11,b
la x12,c
lhu x13,0(x10)
lhu x14,0(x11)
add x15,x14,x13
sw x15,0(x12)

lhu x13,4(x10)
lhu x14,4(x11)
add x15,x14,x13
sw x15,4(x12)

lhu x13,8(x10)
lhu x14,8(x11)
add x15,x14,x13
sw x15,8(x12)

lhu x13,12(x10)
lhu x14,12(x11)
add x15,x14,x13
sw x15,12(x12)

lhu x13,16(x10)
lhu x14,16(x11)
add x15,x14,x13
sw x15,16(x12)