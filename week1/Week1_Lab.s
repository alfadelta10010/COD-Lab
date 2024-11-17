# Program 1 
.data
a: .word 0x12345678,0x00001111
.text
la x18,a		//Loads base address
lw x19,0(x18)		//Loads word to register x19	
lw x20,4(x18)		//Loads word to register x20
add x21,x19,x20		//adds the values in x19,x20 and stores result in x21
sw x21,8(x18)		//stores result in memory


#Program 2 
.data
a: .half 0x1234,0x1111
.text
la x18,a		//Loads base address
lh x19,0(x18)		//Loads half word to register x19	
lh x20,2(x18))		//Loads half word to register x20
add x21,x19,x20		//adds the values in x19,x20 and stores result in x21
sh x21,4(x18)		//stores result in memory


# Program 3
.data
a: .byte 0x12 , 0x01
.text
la x18, a		//Loads base address
lb x19, 0(x18)		//Loads byte to register x19
lb x20, 1(x18)		//Loads byte to register x20
add x21,x19,x20		//adds the values in x19,x20 and stores result in x21
sb x21,2(x18)		//stores result in memory


#Program 4
//word addition
.data
a: .word 0x7FFFFFFF , 0x00000001
.text
la x10, a		//Loads base address
lw x18,0(x10)		//Loads (signed)word to register x18
lw x19,4(x10)		//Loads (signed)word to register x19
add x20,x18,x19		//adds the values in x19,x20 and stores result in x21
sw x20,8(x10)		//stores result in memory
lw x21,0(x10)		//Loads (unsigned)word to register x21
lw x22,4(x10)		//Loads (unsigned)word to register x22
add x23,x21,x22		//adds the values in x21,x22 and stores result in x23
sw x23,8(x10)		//stores result in memory

//half word addition
.data
a: .half 0x8000 , 0x1111
#.text
la x10, a		//Loads base address
lh x18,0(x10)		//Loads (signed)half word to register x18
lh x19,2(x10)		//Loads (signed)half word to register x19
add x20,x18,x19		//adds the values in x19,x20 and stores result in x21
sh x20,4(x10)		//stores result in memory
lhu x21,0(x10)		//Loads (unsigned)half word to register x21
lhu x22,2(x10)		//Loads (unsigned)half word to register x212add x23,x21,x22		//adds the values in x21,x22 and stores result in x23
sh x23,6(x10)		//stores result in memory

//byte addition
.data
a: .byte 0x01 , 0x80
.text
la x2, a		//Loads base address
lb x18,0(x2)		//Loads (signed)byte to register x18
lb x19,1(x2)		//Loads (signed)byte to register x19
add x20,x18,x19		//adds the values in x19,x20 and stores result in x21
sb x20,2(x2)		//stores result in memory
lbu x21,0(x2)		//Loads (unsigned)byte to register x21
lbu x22,1(x2)		//Loads (unsigned)byte to register x22
add x23,x21,x22		//adds the values in x21,x22 and stores result in x23
sb x23,3(x2)		//stores result in memory

