.data
a: .word 0x80001111,0x10000000

.text
la x10,a #loading the base address
lw s0,0(x10) #loading the content of data memory into register
lw s1,4(x10) #same for next data
add s3,s0,s1 #adding the two data