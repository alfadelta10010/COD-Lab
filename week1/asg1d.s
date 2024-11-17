#byte
#unsign
.data
a: .byte 0001
.text
la x1,a
lb x2,0(x1)
sb x2,1(x1)

#sign
.data
a: .byte 1001
.text
la x3,a
lb x4,0(x3)
sb x4,1(x3)

#half
#unsign
.data
a: .half 0001
.text
la x5,a
lh x6,0(x5)
sh x6,2(x5)

#sign
.data
a: .half 1001
.text
la x7,a
lh x8,0(x7)
sh x8,1(x7)

#word
#unsign
.data
a: .word 0001
.text
la x8,a
lw x9,0(x8)
sw x19,4(x8)

#sign
.data
a: .byte 1001
.text
la x10,a
lb x11,0(x10)
sb x11,4(x10)