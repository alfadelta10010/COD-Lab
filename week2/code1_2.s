# i.Write an Assembly Program for the given C code
.data
a: .half 0x1234,0x5678,0x9abc,0xdef1,0x2345,0x1111,0x6666,0x7777,0x8888,0x9999,0
h: .half 0

.text
la x5,a
la x6,h

lhu x28,0(x6)
lhu x18,0(x5)
add x28,x28,x18
sh x28,0(x6)

lhu x19,2(x5)
add x28,x28,x19
sh x28,0(x6)

lhu x20,4(x5)
add x28,x28,x20
sh x28,0(x6)

lhu x21,6(x5)
add x28,x28,x21
sh x28,0(x6)

lhu x22,8(x5)
add x28,x28,x22
sh x28,0(x6)

lhu x23,10(x5)
add x28,x28,x23
sh x28,0(x6)

lhu x24,12(x5)
add x28,x28,x24
sh x28,0(x6)

lhu x25,14(x5)
add x28,x28,x25
sh x28,0(x6)

lhu x26,16(x5)
add x28,x28,x26
sh x28,0(x6)

lhu x27,18(x5)
add x28,x28,x27
sh x28,0(x6)

lhu x7,0(x6)
sh x7,20(x5) 


