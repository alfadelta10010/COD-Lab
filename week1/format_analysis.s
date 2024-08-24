.data
a:.word 0xFFFFFFFF
b:.half -45
c:.byte -3
.text
la x2,a
la x3,b
la x4,c


lw x5,0(x2)
lh x6,0(x3)
lhu x7,0(x3)
lb x8,0(x4)
lbu x9,0(x4)
