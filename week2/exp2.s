.data
a: .dword 0xffffffffffffffff
b: .dword 0xffffffffffffffff
.text
la x15, a
la x16, b
lw x17,0(x15)
lw x18,4(x15)
lw x19,0(x16)
lw x20,4(x16)
add x21,x17,x19
sltu x22,x21,x19
add x23,x18,x20
sltu x24,x23,x20
add x24,x22,x23