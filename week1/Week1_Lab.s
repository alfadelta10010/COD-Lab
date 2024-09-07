#PROGRAM TO ADD TWO WORDS
.data 
a: .word 0x90006748,0x00012AB6,0       #defining array 'a' with three 32 bit words

.text
la x10,a                        #loading address of 'a' into the register x10
lw x11,0(x10)                   #loading the first word a[0] into register x11
lw x12,4(x10) 
add x13,x11,x12                 #adds the values x11,x12 and stores the result in x13
sw x13,8(x10)                   #stores the value in x13, into memory at the address x10+8



#PROGRAM TO ADD TWO HALF WORDS
.data 
a: .half 0x9000,0x0001,0        #defining 3 half words (16bit)

.text
la x10,a 
lh x11,0(x10)                   #loading the first half word into x11
lh x12,2(x10) 
add x13,x11,x12                 
sh x13,4(x10) 



#PROGRAM TO ADD 2 BYTES
.data 
a: .byte 0x19,0xA1              #defining 2 bytes of size 8 bits each

.text
la x10,a 
lb x11,0(x10) 
lb x12,1(x10) 
add x13,x11,x12 
sb x13,2(x10) 



#PROGRAM TO VIEW FORMAT OF SIGNED AND UNSIGNED
.data 
a:.word 0xFA1823B7 
b:.half 0xC3B7 
c:.byte 0xF2 

.text
lw x8,a 
la x9,b 
lh x10,0(x9) 		        #signed half word 
lhu x11,0(x9)                  #unsigned half word 
la x12,c 
lb x13,0(x12)                  #signed byte
lbu x14,0(x12)                 #unsigned byte
