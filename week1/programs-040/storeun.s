#writes in dat memory 
.data
a: .word 0x12345678
b: .half 0xF234
c: .byte 0x92
.text
#load address
la x10,a  
la x20,b
la x30,c


#load signed and unsigned values in reg
lw x3,0(x10) 
#stores in data memory
sw x3,8(x10)


#load and store signed half word
lh x4,0(x20)
sh x4,12(x20)
#load and store unsigned half word
lhu x5,0(x20)
sh x5,14(x20)

#load and store signed byte word
lb x6,0(x30)
sb x6,16(x20)
#load and store unsigned byte word
lbu x7,0(x30)
sb x7,17(x20)
