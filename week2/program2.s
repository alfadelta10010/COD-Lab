#Write an Assembly program for calculating x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L, D, Z, C are elements of 32-bits wide

.data
y: .word 0x12345678
m: .word 0x11111111
L: .word 0x23563952
D: .word 0x08562314
Z: .word 0x56132453
C: .word 0x00000001 
x: .word 0x0  #initially assigned x to 0

.text
la x5,y
la x6,m
la x7,L
la x28,D
la x29,Z
la x30,C
la x31,x

lw x18,0(x5)
lw x19,0(x6)
lw x20,0(x7)
lw x21,0(x28)
lw x22,0(x29)
lw x23,0(x30)

add x18,x18,x19
sub x20,x20,x21
add x22,x22,x23

sub x18,x18,x20
add x18,x18,x22
sub x18,x18,x21

sw x18,0(x31)