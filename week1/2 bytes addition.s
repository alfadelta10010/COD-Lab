.data
a: .half 0xFA,0x08,0

.text
la x10,a
lh x4,0x00(x10)
lh x6,0x02(x10)
add x11,x4,x6
sh x11,0x13(x10)