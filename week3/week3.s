# converting 32 bit little end to big end
.data
a: .word 0x12345678
.text
la x10,a  
lw x11,0(x10)
andi x12,x11,0xff #making 0x00000078
slli x12,x12,24  #0x78000000 stored in x12

srli x13,x11,8 #shifting 0x12345678 to 0x00123456
andi x13,x13,0xff #generating 0x00000056
slli x13,x13,16 # 0x00560000
add x14,x13,x12 #0x78560000

srli x12,x11,16 #0x00001234
andi x12,x12,0xff #0x00000034
slli x12,x12,8 #0x00003400
add x14,x14,x12 #0x78563400

srli x12,x11,24 #0x00000012
add x14,x14,x12 #0x78563412

