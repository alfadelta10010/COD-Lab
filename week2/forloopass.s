#write a program to perform c[i]=a[i]+b[i]
.data 

a: .word 0x12345678,0x020202020,0x32165498,0x98766789,0x12344321
b: .word 0x87654321,02020202020,0x81927462,0x54729108,0x73647810
c: .word 0,0,0,0,0

.text
#storing the pointer address
la x10,(a)
la x11,(b)
la x12,(c)
#loading the values of a[i] into registers
lw x13,0(x10)
lw x14,4(x10)
lw x15,8(x10)
lw x16,12(x10)
lw x17,16(x10)
#storing the values of b[i] into registers
lw x18,0(x11)
lw x19,4(x11)
lw x20, 8(x11)
lw x21,12(x11)
lw x22,16(x11)
#adding the values of a[i] and b[i] and storing in registers
add x13,x13,x18
add x14,x14,x19
add x15,x15,x20
add x16,x16,x21
add x17,x17,x22
#storing the added values into memory as c[i] 
sw x13,0(x12)
sw x14,4(x12)
sw x15,8(x12)
sw x16,12(x12)
sw x17,16(x12)