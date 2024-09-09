.data
a: .word 0x12345678


.text
la x5,a
lw x6,0(x5)
addi x7,x0,0xFF

and x8,x6,x7
sb x8,3(x5)
srli x6,x6,8


and x8,x6,x7
sb x8,2(x5)
srli x6,x6,8


and x8,x6,x7
sb x8,1(x5)
srli x6,x6,8


and x8,x6,x7
sb x8,0(x5)
srli x6,x6,8
