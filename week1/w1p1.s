# i.Write an Assembly Program for addition of 2 words

.data
a: .word 0x00000005,0X00000003 #define variable a with two word values 5 and 3 

.text 
la x10,a #pseudo instruction to load the starting address of variable a in x10
lw x11,0(x10)#load 5 in x11 
lw x12,4(x10)#load 3 in x12 with offset 4 as word takes four byte locations in data memory
add x13,x11,x12 # add 5 and 3 and store in x13
sw x13,8(x10) #store content of x13 in data memory at 0x100000008
