.data
x: .word 0
y: .word 123
m: .word 123
L: .word 65
D: .word 65
Z: .word 189
C: .word 45

.text

la x10,x
la x11,y
la x12,m
la x14,L
la x15,D
la x16,Z
la x17,C

lw x31,0(x11)#y
lw x30,0(x12)#m
lw x24,0(x14)#l
lw x25,0(x15)#d
lw x28,0(x16)#z
lw x29,0(x17)#c

add x20,x31,x30 #y+m
sub x21,x24,x25 #L-D
add x22,x28,x29 #z+c
sub x27,x20,x21  #(y+m)-(L-d)
add x27,x27,x22
sub x27,x27,x25

sw x20,0(x10)