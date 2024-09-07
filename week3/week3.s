.data
a: .word 0x12345678
.text
la x10,a
lw x11,0(x10)
andi x12,x11,0xFF  # This part is to filter out only the LSB Byte
slli x12,x12,24 # Now shift the to the last , till the msb. 24 comes because we need to move 6 bytes and each byte is 4 bits
srli x13,x11,8 # move 56 to the lsb side
andi x13,x13,0xFF # again filter out the lsb
slli x13,x13,16 # again shift it till its side by side with 78 ,thats why offset is 16
add x12,x12,x13
srli x14,x11,16
andi x14,x14,0xff
addi x0,x10,0x12
slli x14,x14,8
add x12,x12,x14
srli x15,x11,24
andi x15,x15,0xff
add x12,x12,x15
