.data
a:.word 0xFFFFFFFE
b:.half 0xfff4
c:.byte 0xfd

.text
la x2,a
la x3,b
la x4,c


lw x15,0(x2)
lh x16,0(x3)
lhu x17,0(x3)
lb x18,0(x4)
lbu x19,0(x4)


