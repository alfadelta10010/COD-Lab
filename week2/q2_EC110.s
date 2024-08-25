data
n1: .dword 0xffffffffffffffff
n2: .dword 0xffffffffffffffff
.text
la x10,n1
la x11,n2
lw x12,0(x10) #loading
lw x13,4(x10)
lw x14,0(x11)
lw x15,4(x11)
add x16,x14,x12 #lsb
sltu x18,x16,x14
add x17,x15,x13 #msb
sltu x19,x17,x15
add x20,x17,x18 #adding
