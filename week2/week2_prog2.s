.data
x: .word 0x0
y: .word 0x12
m: .word 0x33
L: .word 0x45
D: .word 0x23
Z: .word 0x56
C: .word 0x44
.text
la x8,x
la x9,y
la x18,m
la x19,L
la x20,D
la x21,Z
la x22,C
lw x10,0(x8)
lw x11,0(x9)
lw x12,0(x18)
lw x13,0(x19)
lw x14,0(x20)
lw x15,0(x21)
lw x16,0(x22)
add x6,x11,x12    #y+m
sub x7,x13,x14    #L-D
add x28,x15,x16    #Z+C
sub x29,x6,x7
sub x30,x28,x14
add x10,x29,x30
sw x10,0(x10)