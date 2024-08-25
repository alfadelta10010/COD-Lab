.data
no1: .dword 0xffffffffffffffff
no2: .dword 0xffffffffffffffff
.text
la x10,no1
la x11,no2
lw x5,0(x10) 
lw x6,4(x10)
lw x7,0(x11)
lw x8,4(x11)
add x9,x7,x5 #lsb
sltu x12,x9,x7
add x13,x8,x6 #msb
sltu x14,x13,x8
add x15,x13,x12 #adding