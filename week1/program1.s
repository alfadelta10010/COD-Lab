#convert 32 bit value from Little Endian to Big endian format using RISC V assembly language 

.data
a: .word 0x12345678
b: .word 0x00000000

.text
la x5,a
la x6,b

lw x7,0(x5)
addi x28,x0,0x0ff

and x18,x28,x7
sb x18,3(x6)
srai x29,x7,8

and x19,x28,x29
sb x19,2(x6)
srai x30,x29,8

and x20,x28,x30
sb x20,1(x6)
srai x31,x30,8

and x21,x28,x31
sb x21,0(x6)