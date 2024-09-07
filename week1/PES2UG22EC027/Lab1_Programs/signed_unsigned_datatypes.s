#Program-4
#Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
.data
w:.word 0xFFFF,0x00,0x00
h:.half 0xFFFF,0x00,0x00
b:.byte 0xFF,0x00,0x00
.text
la x1,w
la x2,h
la x3,b
lw x5,0x00(x1)
lhu x6,0x00(x2)
lh x7,0x00(x2)
lbu x8,0x00(x2)
lb x9,0x00(x2) 

sw x5,0x04(x1)
sh x6,0x02(x2)
sh x7,0x04(x2)
sb x8,0x01(x3)
sb x9,0x02(x3)