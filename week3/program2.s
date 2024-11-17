.data 
a: .byte 0xab
.text
la x9,a
lbu x9 0(x9)

srli x10,x9,0        #d0
andi x10 x10 0x01

srli x11,x9,1        #d1        
andi x11 x11 0x01

srli x12,x9,2        #d2
andi x12 x12 0x01

srli x13,x9,3        #d3
andi x13 x13 0x01

srli x14,x9,4        #d4
andi x14 x14 0x01

srli x15,x9,5        #d5
andi x15 x15 0x01

srli x16,x9,6        #d6
andi x16 x16 0x01

srli x17,x9,7        #d7
andi x17 x17 0x01

xor x20 x10 x11
xor x21 x14 x13
xor x21 x21 x16
xor x20 x20 x21        #c0

xor x21 x10 x12
xor x22 x13 x15
xor x22 x22 x16
xor x21 x22 x21        #c1

xor x22 x11 x12
xor x23 x13 x17
xor x22 x22 x23        #c2

xor x23 x14 x15
xor x24 x16 x17
xor x23 x23 x24        #c3

andi x24 x9 0x00f0
slli x24 x24 4
slli x23 x23 7
add x24 x24 x23

andi x25 x9 0x0e
slli x25 x25 3
add x24 x24 x25

slli x22 x22 3
add x24 x24 x22
slli x10 x10 2
add x24 x24 x10
slli x21 x21 1
add x24 x24 x21
add x24 x24 x20

