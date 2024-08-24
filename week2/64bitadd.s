.data 
a: .dword 0xffffffffffffffff,0xffffffffffffffff
.text
la x10,a
lw x11,0(x10) #lsb1
lw x12,4(x10) #msb1
lw x13,8(x10) #lsb2
lw x14,12(x10) #msb2
add x15,x11,x13 # adding lsb1 2
sltu x7,x15,x11 #storing lsb carry
add x16,x12,x14 # adding msb1 2
sltu x6,x16,x12 #storing lsb carry
add x8,x16,x7 # adding lsb carry with msb sum
sltu x9,x8,x16
sw x15,16(x10)
sw x8,20(x10)
sw x6,24(x10)