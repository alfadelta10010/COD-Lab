# Write an Assembly Program for addition of 2 bytes
.data
n: .byte 0x04,0x05
.text
la x5,n
lb x6,0(x5)
lb x7,1(x5)
add x9,x6,x7

