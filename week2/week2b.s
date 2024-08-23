.data
a:.word 0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF
.text
la x10,a
lw x9,0(x10)#msb1
lw x8,4(x10)#lab1
lw x7,8(x10)#msb2
lw x6,12(x10)#lsb2
add x5,x8,x6  #lsb addition
sltu x11,x5,x8  #carry lsb
add x2,x9,x7   #msb addition
sltu x12,x2,x7  #carry msb
add x3,x2,x11
#storing in data memory
sw x5,16(x10)
sw x3,20(x10)
sw x12,24(x10)