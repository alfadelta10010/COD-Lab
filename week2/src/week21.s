#PROGRAM TO ADD N words,half word,byte
.data 
N: .word 3
a: .word 0x90006748,0x00012AB6,0       #defining array 'a' with three 32 bit words
h: .half 0x9000,0x0001,0        #defining 3 half words (16bit)
b: .byte 0x19,0xA1,0x23          #defining 3 bytes of size 8 bits each


.text
#addig N words
la x5,N
lw x6,0(x5)
la x10,a 
la x12,h
la x15,b
loop1:  
#adding N words                
lw x11,0(x10) 
add x28,x28,x11 
addi x10,x10,4  

#adding N half words
lh x13,0(x12) 
add x29,x29,x13
addi x12,x12,2  

#adding N bytes
lb x16,0(x15) 
add x30,x30,x16
addi x15,x15,1 

addi x6,x6,-1
bne x6,x0,loop1        

