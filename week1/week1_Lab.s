1. Write an Assembly Program for addition of 2 words

.data
    a: .word 0x00001234, 0x00000123  # Two 32-bit words

.text 
    la x10, a        # Loading the address of a into register x10
    lw x5, 0(x10)    # Loading the word (0x80001234) into register x5
    lw x6, 4(x10)    # Loading the word (0x90000123) into register x6
    add x13, x5, x6  # Adding the two words in x5 and x6 and then storing the result in x13
    sw x13, 8(x10)   # Storing the result





2. Write an Assembly Program for addition of 2 half words

.data
a: .half 0x1234,0x1111      # Two half words

.text
la x11,a		# Loading the address of a into register x11
lh x9,0(x11)	# Loading the word into register x9
lh x10,2(x11)   # Loading the word into register x10
add x12,x9,x10	# Adding the two words in x9 and x10 and then storing the result in x12
sh x12,4(x10)   # Storing the result



3.     Write an Assembly Program for addition of 2 bytes
.data
    a: .byte 0x34, 0x03  # Two bytes

.text 
    la x10, a        # Loading the address of a into register x10
    lb x5, 0(x10)    # Loading the word into register x5
    lb x6, 1(x10)    # Loading the word into register x6
    add x13, x5, x6  # Adding the two words in x5 and x6 and then storing the result in x13
    sb x13, 2(x10)   # Storing the result





4.     Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

#Program 4
//word addition
.data
a: .word 0x7FFFFFFF , 0x00000001
.text
la x10, a		#Loads base address
lw x18,0(x10)		#Loads (signed)word to register x18
lw x19,4(x10)		#Loads (signed)word to register x19
add x20,x18,x19		#adds the values in x19,x20 and stores result in x21
sw x20,8(x10)		#stores result in memory
lw x21,0(x10)		#Loads (unsigned)word to register x21
lw x22,4(x10)		#Loads (unsigned)word to register x22
add x23,x21,x22		#adds the values in x21,x22 and stores result in x23
sw x23,8(x10)		#stores result in memory

//half word addition
.data
a: .half 0x8000 , 0x1111
#.text
la x10, a		#Loads base address
lh x18,0(x10)		#Loads (signed)half word to register x18
lh x19,2(x10)		#Loads (signed)half word to register x19
add x20,x18,x19		#adds the values in x19,x20 and stores result in x21
sh x20,4(x10)		#stores result in memory
lhu x21,0(x10)		#Loads (unsigned)half word to register x21
lhu x22,2(x10)		#Loads (unsigned)half word to register x212add x23,x21,x22		//adds the values in x21,x22 and stores result in x23
sh x23,6(x10)		#stores result in memory

//byte addition
.data
a: .byte 0x01 , 0x80
.text
la x2, a		#Loads base address
lb x18,0(x2)		#Loads (signed)byte to register x18
lb x19,1(x2)		#Loads (signed)byte to register x19
add x20,x18,x19		#adds the values in x19,x20 and stores result in x21
sb x20,2(x2)		#stores result in memory
lbu x21,0(x2)		#Loads (unsigned)byte to register x21
lbu x22,1(x2)		#Loads (unsigned)byte to register x22
add x23,x21,x22		#adds the values in x21,x22 and stores result in x23
sb x23,3(x2)		#stores result in memory

