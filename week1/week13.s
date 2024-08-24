.data
a: .byte 0x30,0x50
.text
la x10,a
lb s0,0(x10)
lb s1,1(x10)
add s2,s0,s1
