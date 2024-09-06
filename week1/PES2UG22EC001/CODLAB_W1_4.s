#WAP and analyse the format of storing signed and unsigned words, half words and byte data types
.data
a: .word 0x0F,0x01,0    #storing values 15&1 in variable 'a' word sized in Hexadecimal
b: .half 0x05,0x05,0    #storing values 5&5 in variable 'b' half word sized in Hexadecimal
c: .byte 0x02,0x02,0    #storing values 2&2 in variable 'c'byte sized in Hexadecimal
.text
la x1,a        #loading data of variable 'a' to register 'x1'
lw x2,0(x1)    #loading value 0x0F from memory to register 'x2'. There is no lwu because it doesn't matter for word sized as it takes all 32bits value & loads at register
lw x3,4(x1)    #loading value 0x01 from memory to register 'x3'.
add x4,x3,x2   #adding values of register x3 & x2 
sw x4,8(x1)    #storing the added value from register to memory. There's no separate command for storing because it only stores the address in the memory and not signed/unsigned values


la x5,b         #loading data of variable 'b' to register 'x5'
lhu x6,0(x5)    #loading value 0x05 from memory to register 'x6'. for unsigned halfword load command is lhu so that the signed msb is also carried while loading
lhu x7,2(x5)    #loading value 0x05 from memory to register 'x7'.
add x8,x7,x6    #adding values of register x7&x6 and storing it in register x8
sh x8,2(x5)     #storing the added value from register to memory. There's no separate command for storing because it only stores the address in the memory and not signed/unsigned values


la x10,c        #loading data of variable 'c' to register 'x10'
lbu x12,0(x10)  #loading value 0x01 from memory to register 'x12'. for unsigned byte load command is lbu so that the signed msb is also carried while loading
lbu x13,1(x10)  #loading value 0x01 from memory to register 'x13'.
add x14,x13,x12 #adding values of register x12&x13 and storing it in register x14
sb x14,2(x10)   #storing the added value from register to memory. There's no separate command for storing because it only stores the address in the memory and not signed/unsigned values


