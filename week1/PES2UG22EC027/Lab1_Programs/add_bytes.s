#Program 3
#Write an Assembly Program for addition of 2 bytes
.data 
a:.byte 0x05,0x01,0x00
.text
la x1,a
lb x2,0x00(x1)
lb x3,0x01(x1)
add x5,x2,x3
sb x5,0x02(x1)