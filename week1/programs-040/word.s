#writes in dat memory 
.data
a: .word 0x12345678,0xA2345678
.text
la x10,a  #load address
lw x9,0(x10) #storing 0x12345678
lw x8,4(x10) #storing 0xA2345678
add x6,x9,x8 # perform addition
sltu x7,x6,x8 #carry
#stores in data memory
sw x6,8(x10)
sw x7,12(x10)