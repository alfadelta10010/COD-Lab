#Write an Assembly Program for addition of 2 words
.data 
a: .word 0xf23affff,0x87253676 
.text
la x10,a #loading base address
lw x11,0(x10) #storing values in register
lw x12,4(x10) 
add x6,x11,x12 #adding x11 and x12 and storing in x6
sltu x7,x6,x11 #storing the carry if any
sw x6,8(x10) #storing in data memory
sw x7,12(x10)
