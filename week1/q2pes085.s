#Write an Assembly Program for addition of 2 half words
.data
d: .half 0x6753,0x1234
.text
la x10,d
lh x11,0(x10) 
lh x12,2(x10)
add x13,x11,x12 #result in x13 
sh x13,4(x10) 
