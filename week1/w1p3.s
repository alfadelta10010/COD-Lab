# iii.Write an Assembly Program for addition of 2 bytes


.data
a: .byte 0xFE,0X01 #define variable a with byte values -2 and 1 

.text
la x10,a #pseudo instruction to load the starting address of variable a in reg x10
lb x11,0(x10) #load -2 in reg x11
lb x12,1(x10)#load 1 in reg x12 with offset 1 
add x13,x11,x12 #add -2+1 and store content in x13
sb x13,4(x10) #store the contents of x13 in data memory at 0x10000004
