.data
a:.word 0xFFFFFFFE
b:.half 0xFFF9
c:.byte 0XFd
.text
la x2,a
la x3,b
la x4,c


lw x11,0(x2) 
lh x12,0(x3) #loading signed half word
lhu x13,0(x3) #loading unsigned half word
lb x14,0(x4)  #loading signed byte
lbu x15,0(x4)  #loading unsigned byte
