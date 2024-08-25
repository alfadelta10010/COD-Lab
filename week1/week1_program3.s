.data
a: .byte 0x34, 0x12

.text
la x6,a #Loading the base address
lb x7,0(x6) #Loading the first byte from memory into register x7
lb x8,1(x6) #Loading the second byte from memory into register x8
add x9,x7,x8 #Adding the values in x7 and x8, storing the result in x9
sb x9,2(x6) #Storing the value in memory



