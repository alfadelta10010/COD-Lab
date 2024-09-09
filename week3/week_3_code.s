#write a program to convert a little endian number into big endian.
.data  
a: .word 0x12345678
.text		
la x10,a			#load base address.
lw x12, 0(x10)			#stores the value in x12.
andi x14,x12,0x000000ff		#extracting only left 8 bits into x14.
slli x14,x14,24			#converting lsb 8 bits into msb.
srli x15,x12,8			#shift right removes the lsb 8bits. 
andi x16,x15,0x000000ff		#again the above 5 steps are done 3 times.
slli x16,x16,16
srli x17,x12,16
andi x18,x17,0x000000ff
slli x18,x18,8
srli x19,x17,8
add x20,x16,x18			#moving the all the bits into one single register which strores in big endian 
add x21,x14,x19
add x22,x21,x20
