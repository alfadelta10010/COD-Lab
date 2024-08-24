.data
a: .byte 0x1e
b: .half 0x123f
c: .word 0xe345f567
.text
# loading address of pointers into registers
la x10,a
la x11,b
la x12,c

#loading the content into registers as byte,half word ,word in signed format
lb x14,0(x10)
lh x15,0(x11)
lw x16,0(x12) 

#loading the content into registers as byte,halfword,word in signed format
lbu x14,0(x10)
lhu x15,0(x11)
lw x16,0(x12)#in 32 bit RISC5 the msb holds the sign of the word and lwu is a command used in 64bit RISC5 


#storing the values into the memory
sb x14,1(x10)
sh x15,2(x11)
sw x16,4(x12)




