#Write an Assembly Program for addition of 2 words
.data 
a: .word 0xf23affff,0x87253676
.text
la x10,a
lw x11,0(x10) #lsb1
lw x12,4(x10) 
add x6,x11,x12
sltu x7,x6,x11 #storing lsb carry
sw x6,8(x10)
sw x7,12(x10)
