.data
b:.half 0x0045,0x0021

.text
la x10,b
lh x11,0(x10)
lh x12,2(x10)
add x13,x11,x12
sh x13,4(x10)
