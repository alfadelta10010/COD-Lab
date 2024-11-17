.data
num: .byte 0xa2
.text
la x1,num
lb x2,0(x1)
mv x3,x2
srli x4,x3,1
srli x5,x3,3
srli x6,x3,4
srli x7,x3,6
xor x3,x3,x4
xor x3,x3,x5
xor x3,x3,x6
xor x3,x3,x7
andi x10,x3,1