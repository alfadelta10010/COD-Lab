.data
a:.word 0x00001234,0x00005678
b:.half 0xabcd,0xffff
c:.byte 0xfd,0x01
.text 
la x10,a
la x11,b
la x12,c
lw x13,0(x10)
lh x14,2(x11)
lb x15,0(x12)
lbu x16,1(x12)
lhu x17,0(x11)
add x13,x13,x13
addi x14,x14,0x1
add x15,x15,x16
sw x15,1(x12)
sw x13,0(x10)
sh x14,2(x11)






