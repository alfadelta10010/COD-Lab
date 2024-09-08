.data
a: .word 0xeffffff, 0x1
result: .word 0x0
.text

la x11,a
lw x12,0(x11)
lw x13,4(x11)
add x14,x12,x13

la x10, result

sw x14,0(x10)
