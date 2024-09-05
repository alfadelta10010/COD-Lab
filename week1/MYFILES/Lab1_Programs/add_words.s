#Program 1
#Write an Assembly Program for addition of 2 words
.data 
a:.word 0xFFFFFFFE,0x01,0x00
.text
la x1,a
lw x2,0x00(x1)
lw x3,0x04(x1)
add x5,x2,x3
sw x5,0x08(x1)
