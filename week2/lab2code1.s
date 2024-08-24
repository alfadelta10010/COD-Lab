.data
num1:.dword 0x8000000081234567
num2:.dword 0x1234567800000008
num3:.dword 0
.text
la x20,num3
la x9,num1
lw x10,0(x9)
lw x11,4(x9)

la x12,num2
lw x13,0(x12)
lw x14,4(x12)

add x16,x10,x13 #lsb
sltu x15,x16,x10 #carry lsb

add x17,x11,x14 #msb
add x18,x17,x15
sltu x19,x17,x11 #carry msb

sw x16,0(x20)#lsb store
sw x18,4(x20)#msb store
sw x19,8(x20)#carry store

