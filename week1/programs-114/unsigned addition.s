.data 
a: .half 0x80f2,0x803e,0

.text
la x10,a
lhu x6,0x00(x10)
lhu x7,0x02(x10)
add x9,x6,x7
sh x9,0x04(x10)