.data
a: .word 0xffe3345e,0xfff677ff,0xfffffffe,0xffffffff
.text
la x10,a
lw x1,0(x10)
lw x2,4(x10)
lw x3,8(x10)
lw x4,12(x10)
add x5,x2,x4 #lsb
sltu x6,x5,x4  #lsb carry  
add x7,x1,x3  #msb
sltu x9,x7,x3  #msb carry
add x8,x6,x7 #adding lsb carry to msb 
sw x8,20(x10) #storing msb of added bit
sw x5,24(x10)#storing lsb of added bit
sw x9,16(x10)#storing caryy of added msb