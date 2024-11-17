.data 
a: .word 0x90006748,0x00012AB6,0 #defining array 'a' with three 32 bit words

.text
la x10,a #loading address of 'a' into the register x10
lw x11,0(x10) #loading the first word a[0] into register x11
lw x12,4(x10) #loading the second word a[1] into register x12(offset=4)
andi x13,x11,0xFF #adds the values x11,x12 and stores the result in x13
sw x13,8(x10) #stores the value in x13, into memory at the address x10+8