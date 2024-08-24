.data 
n1:.dword 0xffffffffffffffff
n2:.dword 0xffffffffffffffff
n3:.dword 0x0000000000000000
.text
la x20,n1

lw x8,0(x20)
lw x9,4(x20)
la x20,n2
lw x10,0(x20)
lw x11,4(x20)
add x12,x8,x10
sltu x13,x12,x8
add x14,x9,x11
sltu x15,x14,x9
add x16,x14,x13