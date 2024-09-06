.data
a:.word 0x12345678
.text
la x10,a # loading the address of a into x10
lw x11,0(x10) #value in x11 reg
slli x12,x11,24 # left shifting the value by 24 bits - 0x78000000
srli x13,x11,8  #right shifting the value by 8 bits -  0x00123456
andi x14,x13,0xff # andi operation to get 0x00000056
slli x14,x14,16  # left shifting the above value by 16 bits to get 0x00560000 
add x12,x12,x14 # x12=0x78000000 +0x00560000 = 0x78560000
srli x13,x11,16 # 0x00001234
andi x13,x13,0xff # 0x00000034
slli x13,x13,8 # 0x00003400
add x12,x12,x13 # 0x78560000 + 0x00003400 = 0x78563400
srli x14,x11,24 # 0x00000012
add x12,x12,x14 # 0x78563400 + 0x00000012 = 0x78563412


