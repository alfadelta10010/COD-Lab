##Program 1
.data
a: .half 0x1234,0x5678,0x9abc,0xdef1,0x2345,0x1111,0x6666,0x7777,0x8888,0x9999,0
h: .half 0

.text
la x2,a
lh x8,0(x2)
add x3,x0,x8

lh x9,2(x2)
add x3,x3,x9

lh x10,4(x2)
add x3,x3,x10

lh x11,6(x2)
add x3,x3,x11

lh x12,8(x2)
add x3,x3,x12

lh x13,10(x2)
add x3,x3,x13

lh x14,12(x2)
add x3,x3,x14

lh x15,14(x2)
add x3,x3,x15

lh x16,16(x2)
add x3,x3,x16

lh x17,18(x2)
add x3,x3,x16

lh x18,20(x2)
add x3,x3,x16
sh x3,22(x2)

##Program 2
.data
n1: .word 0x12345678, 0x9ABCDEF0  
n2: .word 0x11111111, 0x22222222  
result: .word 0, 0                  

.text
la x10, n1
la x11, n2
la x12, result
lw x18, 0(x10)
lw x19, 0(x11)
add x20, x18, x19
sw x20, 0(x12)
lw x18, 4(x10)
lw x19, 4(x11)
sltu x21, x20, x19  
add x20, x18, x19
add x20, x20, x21
sw x20, 4(x12)
li x10, 0
li x11, 93 