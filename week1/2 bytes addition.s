.data
a: .half 0xFA,0x08,0

.text
la x10,a
lb x4,0x00(x10)
lb x6,0x02(x10)
add x11,x4,x6
sw x11,0x04(x10)