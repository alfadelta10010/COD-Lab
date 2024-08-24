addition of two 32 bit
.data
a: .word 0X12345678, 0X11117866,0 #defining the array ‘a’
.text
la x10,a #loading the value of a into respective register
lw x11,0(x10) #loading the value of 1st register in x11
lw x12,4(x10)
add x13,x11,x12 #addition of 2 registers
sw x13,8(x10)   # stores value in x13 which is address of x10+8



addition 0f 2 16 bit                         
.data                                                  
a: .word 0X1234, 0X1111,0 #defining the array ‘a’
.text
la x10,a #loading the value of a into respective register
lh x11,0(x10) #loading the value of 1st register in x11
lh x12,4(x10)
add x13,x11,x12 #addition of 2 registers
sh x13,8(x10) # stores value in x13 which is address of x10+8





addition of two 8bit
.data
a: .word 0X12, 0X11,0 #defining the array ‘a’
.text
la x10,a  #loading the value of a into respective register
lb x11,0(x10) #loading the value of 1st register in x11
lb x12,4(x10)
add x13,x11,x12 #addition of 2 registers
sb x13,8(x10) # stores value in x13 which is address of x10+8






4)
.data
a: .word 0XA8BD3457
b: .half 0X6745
c: .byte 0XB4
.text
lw x5,a
la x6,b
lh x7,0(x6)#signed lh
lhu x8,0(x6)#unsigned lh
la x9,c
lb x10,0(x9)#signed lb
lbu x11,0(x9)#unsigned lb
