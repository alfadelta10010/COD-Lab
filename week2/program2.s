## ADDING 2 64BIT VALUES USING RV32I
.data 
n1: .dword 0XFFFFFFFFFFFFFFFF    
n2: .dword 0XFFFFFFFFFFFFFFFF    
.text

la x5,n1
la x6,n2

lw x7,0(x5) #lower 32 bits of n1
lw x8,4(x5)#upper 32 bits of n1

lw x9,0(x6)#lower 32 bits of n2
lw x10,4(x6)#upper 32 bits of n2

add x11,x9,x7
sltu x13,x11,x7
add x12,x8,x10
sltu x14,x12,x10

add x15,x13,x14