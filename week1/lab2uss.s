.data
a:.word 0xfffffffe
.text
la x10,a #to load base address into register
lw x11,0(x10)#to load a word into register
#word is always signed since it is RV32I
lh x12,0(x10)#to load a signed halfword into register
lhu x13,0(x10)#to load a unsigned halfword into register
lb x14,0(x10)#to load a signed byte into register
lbu x15,0(x10)#to load a unsigned byte into register
sw x11,4(x10)#to store a word
sh x12,8(x10)#to store a signed halfword into register
sh x13,12(x10)#to store a unsigned halfword into register
sb x14,16(x10)#to store a signed byte into register
sb x15,20(x10)#to store a unsigned byte into register