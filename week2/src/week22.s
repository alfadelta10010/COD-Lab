#calculate x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L,
#D, Z, C are elements of 32-bits wide
.data
y: .word 0x12003456
m: .word 0x11111111
L: .word 0x10054321
D: .word 0x10010011
Z: .word 0x11223344
C: .word 0x66A52B33
x: .word 0

.text
la x5,y                 #loading address of y
lw x6,0(x5)             #loading y to x6
la x7,m
lw x8,0(x7)
add x10,x6,x8           #(y+m)
la x5,L
lw x6,0(x5)
la x7,D
lw x8,0(x7)
sub x11,x6,x8           #(L-D)
la x5,Z
lw x6,0(x5)
la x12,C
lw x13,0(x12)
add x14,x6,x13          #(Z+C)
sub x10,x10,x11         #(y+m)-(L-D)
add x10,x10,x14         #(y+m)-(L-D)+(Z+C)
sub x10,x10,x8          #(y+m)-(L-D)+(Z+C)-D
la x11,x
sw x10,0(x11)           #storing the value in x