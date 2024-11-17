# little endian to big endian
# 0x12345678 to 0x78563412
# 0x12345678 & with FF we get 78

.data
a:.word 0x12345678
.text
la x10,a
lw x5,0(x10)        
andi x6,x5,0xFF
slli x6,x6,24

srli x7,x5,8
andi x7,x7,0xFF
slli x7,x7,16
add x6,x6,x7
srli x8,x5,16

andi x8,x8,0xFF
slli x8,x8,8
add x6,x6,x8
srli x9,x5,24
add x6,x6,x9