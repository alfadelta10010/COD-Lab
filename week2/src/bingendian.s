.data
a:    .word 0x80830712, 0xFF000000

.text
la x10, a 

lw x11,0(x10) # target
lw x12,4(x10) # window

and x13, x11, x12

add x14, x14, x13
srli x14, x14, 8
slli x11, x11, 8
and x13, x11, x12

add x14, x14, x13
srli x14, x14, 8
slli x11, x11, 8
and x13, x11, x12

add x14, x14, x13
srli x14, x14, 8
slli x11, x11, 8
and x13, x11, x12juyvtcygvuhbknkmgytd5s

add x14, x14, x13