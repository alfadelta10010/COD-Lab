#Program 2
#Write an Assembly Program for addition of 2 halfwords
.data 
n:.half 0xFFFE,0x01,0x00
.text
la x1,n
lh x2,0x00(x1)
lh x3,0x02(x1)
add x5,x2,x3
sh x5,0x04(x1)
