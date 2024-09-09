.data
a: .word 0x11187902,0x12345678,0
.text
la x10,a
lw x11,0(x10) #bringing data into register file
lw x12,4(x10)
add x13,x11,x12 #result in x13 
sw x13,12(x10) #needs to be stored in data mem#