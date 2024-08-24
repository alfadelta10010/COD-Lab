#program to write assembly code for the given C program
.data
a: .half 0x1234,0x5678,0x9012,0x3456,0x9abc,0xdef1,0x4356,0x2221,0x1908,0x2231
h: .half 0

.text
la x10,a
la x11,h

lhu x12,0(x10)
lhu x28,0(x11)
add x28,x28,x12
sh x28,0(x11)

lhu x13,2(x10)
add x28,x28,x13
sh x28,0(x11)

lhu x14,4(x10)
add x28,x28,x14
sh x28,0(x11)

lhu x15,6(x10)
add x28,x28,x15
sh x28,0(x11)

lhu x16,8(x10)
add x28,x28,x16
sh x28,0(x11)

lhu x17,10(x10)
add x28,x28,x17
sh x28,0(x11)

lhu x18,12(x10)
add x28,x28,x18
sh x28,0(x11)

lhu x19,14(x10)
add x28,x28,x19
sh x28,0(x11)

lhu x20,16(x10)
add x28,x28,x20
sh x28,0(x11)

lhu x21,18(x10)
add x28,x28,x21
sh x28,0(x11)

lhu x22,0(x11)
sw x22,20(x10)
