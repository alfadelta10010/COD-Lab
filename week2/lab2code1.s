.data
num1:.dword 0x8000000081234567
num2:.dword 0x1234567800000008
num3:.dword 0
.text
la x22,num3
la x9,num1
lw x10,0(x9)
lw x11,4(x9)

la x12,num2
lw x13,0(x12)
lw x14,4(x12)

add x17,x10,x13 #lsb
sltu x15,x17,x10 #carry lsb

add x18,x11,x14 #msb
add x19,x18,x15
sltu x20,x18,x11 #carry msb

sw x17,0(x22)#lsb store
sw x19,4(x22)#msb store
sw x20,8(x22)#carry store

