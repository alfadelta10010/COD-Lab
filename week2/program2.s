.data
x:.word 0
y:.word 0x10
m:.word 0x20
L:.word 0x50
D:.word 0x5
Z:.word 0x15
C:.word 0x25

.text
la x10,y
lw x11,0(x10)
la x12,m
lw x13,0(x12)
add x14,x11,x13
la x15,L
lw x16,0(x15)
la x17,D
lw x18,0(x17)
sub x19,x16,x18
sub x14,x14,x19
la x20,Z
lw x21,0(x20)
la x22,C
lw x23,0(x22)
add x24,x21,x23
add x14,x14,x24
sub x14,x14,x18
la x25,x
sw x14,0(x25)