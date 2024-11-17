# Program 1a
.data
a: .word 0x12345678,0x00001111
.text
la x18,a		//Loads base address
lw x19,0(x18)		//Loads word to register x19	
lw x20,4(x18)		//Loads word to register x20
add x21,x19,x20		//adds the values in x19,x20 and stores result in x21
sw x21,8(x18)		//stores result in memory


#Program 1b 
.data
a: .half 0x1234,0x1111
.text
la x18,a		//Loads base address
lh x19,0(x18)		//Loads half word to register x19	
lh x20,2(x18))		//Loads half word to register x20
add x21,x19,x20		//adds the values in x19,x20 and stores result in x21
sh x21,4(x18)		//stores result in memory


# Program 1c
.data
a: .byte 0x12 , 0x01
.text
la x18, a		//Loads base address
lb x19, 0(x18)		//Loads byte to register x19
lb x20, 1(x18)		//Loads byte to register x20
add x21,x19,x20		//adds the values in x19,x20 and stores result in x21
sb x21,2(x18)		//stores result in memory


