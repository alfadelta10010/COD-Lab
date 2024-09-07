#i.Write an Assembly Program for addition of 2 words
.data
a: .word 5,6
.text
la x7,a
lw x5,0(x7)
lw x6,0x04(x7)
add x9,x5,x6
