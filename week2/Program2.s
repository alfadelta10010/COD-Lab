.data
a: .dword 0xffffffffffffffff
b: .dword 0xffffffffffffffff
.text
la x10, a
la x11, b
lw x12,0(x10)
lw x13,4(x10)
lw x14,0(x11)
lw x15,4(x11)
add x16,x12,x14
sltu x17,x16,x14
add x18,x13,x15
sltu x19,x18,x13
add x20,x18,x17

