# Write an Assembly Program for the following C code

.data
a: .half 0x1234,0xaaaa,0xbbbb,0x4321,0x2345,0x5432,0xabab,0x3456,0x6543,0xcccc,0xffff,0

.text

la x10,a
lh x1,0(x10)
lh x2,2(x10)
lh x3,4(x10)
lh x4,6(x10)
lh x5,8(x10)
lh x6,10(x10)
lh x7,12(x10)
lh x8,14(x10)
lh x9,16(x10)
lh x11,18(x10)
lh x12,20(x10)
add x13,x1,x2
add x13,x13,x3
add x13,x13,x4
add x13,x13,x5
add x13,x13,x6
add x13,x13,x7
add x13,x13,x8
add x13,x13,x9
add x13,x13,x11
add x13,x13,x12
sw x13,22(x10)


