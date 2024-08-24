#PROGRAM TO VIEW FORMAT OF SIGNED AND UNSIGNED

.data 
a:.word 0x0000ff23
b:.half 0x00f3
c:.byte 0xf4

.text
la x10,a
la x9,b 
la x8,c

lh x11,0(x9)  #signed half word
lhu x12,0(x9) #unsigned half word

lb x13,0(x8)    #signed half byte
lbu x14,0(x8)   #unsigned half byte

lw x15,0(x10)   # word
