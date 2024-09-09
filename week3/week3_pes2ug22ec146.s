.data
a: .word 0x12345678
b: .word 0x000000FF
c: .word 0x0000FF00
d: .word 0x00FF0000
e: .word 0xFF000000
.text
lw x12,a
lw x13,b
lw x18,c
lw x20,d
lw x24,e
and x14,x12,x13  #anding 0x12345678 and 0x000000FF=0x00000078
slli x16,x14,24  #7800000000
and x17,x12,x18  #anding 0x12345678 and 0x0000FF00=0x00005600
slli x19,x17,8   #005600000
and x21,x12,x20  #anding 0x12345678 and 0x00FF0000=0x00340000
srli x22,x21,8   #00003400
and x23,x12,x24  #anding 0x12345678 and 0xFF000000=0x12000000
srli x24,x23,24  #00000012
add x25,x16,x19  #adding 0x78000000+0x00560000
add x26,x22,x24  #adding 0x00003400+0x00000012
add x27,x25,x26  #adding  0x78560000+0x78560000
sw x27,4(x12)