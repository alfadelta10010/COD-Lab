.data
a: .word 0x12345678
.text
la x10,a
lw x11,0(x10)

#taking the last two bits and placing it in a msb of a new reg
addi x13,x0,0
andi x12,x11,0xFF
slli x12,x12,24
add x13,x13,x12

#right shifting and removing the lsb of stored data and collecting the new lsb to add to the reg x13
srli x11,x11,8
andi x12,x11,0xFF
slli x12,x12,16
add x13,x13,x12

#right shifting and removing the lsb of stored data and collecting the new lsb to add to the reg x13

srli x11,x11,8
andi x12,x11,0xFF
slli x12,x12,8
add x13,x13,x12

#right shifting and removing the lsb of stored data and collecting the new lsb to add to the reg x13

srli x11,x11,8
#andi x12,x11,0xFF
add x13,x13,x11

sw x13,4(x10)
