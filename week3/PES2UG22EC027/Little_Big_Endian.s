.data
a:.word 0x12345678
.text
la x1,a
lw x2,0x00(x1)

addi x5,x0,0xff  # 0x0000 00ff
and x7,x5,x2 
slli x7,x7,24    # 0x0000 0078 # 0x7800 0000

slli x5,x5,8     # 0x0000 ff00
and x8,x5,x2
slli x8,x8,8
add x7,x7,x8     # 0x0000 5600 # 0x0056 0000

slli x5,x5,8
and x8,x5,x2
srli x8,x8,8
add x7,x7,x8     # 0x0000 5600 # 0x0000 3400

slli x5,x5,8
and x8,x5,x2
srli x8,x8,24
add x7,x7,x8    # 0x0000 5600 # 0x0000 0012

sw x7,0x04(x1)