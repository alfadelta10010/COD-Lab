.data
#                x    y    m    l   d    z    c
elements: .word 0x00,0x01,0x02,0x03,0x04,0x05,0x06
#                0    4    8    c    10    14    18
.text
la x2,elements
lw x5,0x04(x2)    #y
lw x6,0x08(x2)    #m
add x7,x6,x5    #x7 = y + m
lw x5,0x0c(x2)    #l
lw x6,0x10(x2)    #d
sub x8,x5,x6      # L-D
sub x7,x7,x8    
sub x7,x7,x6      # -D in the end
lw x5,0x14(x2)    #z
lw x6,0x18(x2)    #C
add x8,x5,x6
add x7,x7,x8
sw x7,0x00(x2)
