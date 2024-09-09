#write a pragram c[i]=a[i]+b[i] assume length of array 5

.data
a: .word 0x00120001,0x12020304,0x33412000,0x11323321,0x33242231      #
b: .word 0x00000001,0x00000002,0x00000003,0x01010101,0x11111111
c: .word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

.text
la x10,a           #loading base address of a to x10
la x11,b           #loading base address of b to x11
la x12,c           #loading base address of c to x12 

lw x13,0(x10)      #loading the first element of a
lw x14,0(x11)      #loading the first element of b
add x15,x13,x14    #addition of the tewo values
sw x15,0(x12)      #storing the added value in memory

lw x13,4(x10)     #loading the second element of a whose offset is 4 
lw x14,4(x11)     #loading the second element of b whose offset is 4 
add x16,x13,x14   #adding the second elements of a and b 
sw x16,4(x12)     #storing the added value in memory with offset of 4

lw x13,8(x10)    #loading the third element of a whose offset is 8
lw x14,8(x11)    #loading the third element of b whose offset is 8
add x17,x13,x14  #addition of thord elements of a and b
sw x17,8(x12)    #storing thre added value in memory eith offset is 8


lw x13,12(x10)    #loading the fourth element of a whose offset is 12
lw x14,12(x11)    #loading the fourth element of b whose offset is 12
add x18,x13,x14   #adding fourth elements of a and b
sw x18,12(x12)    #storing back the value in memory with 12 as offset


lw x13,16(x10)    #loading the fifth element of a whose offset is 16
lw x14,16(x11)    #loading the fifith element of b whose offset is 16
add x19,x13,x14   #adding the lasst elements of a and b
sw x19,16(x12)    #storing the final value in memory with offset 16 

