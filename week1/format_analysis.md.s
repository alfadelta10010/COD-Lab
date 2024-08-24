.data 
n:.word 0x12345678, 0x11111111, 0
.text
la x10,n
lw x5,0x00(x10)
lh x6,0x00(x10)
lb x7,0x00(x10)