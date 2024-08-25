#Write an Assembly Program for addition of 2 64-bit numbers on RV32I
.data
a: .dword 0xFFFFFFFFFFFFFFFF
b: .dword 0xFFFFFFFFFFFFFFFF
.text
la x11,a
lw x12,0(x11)
lw x13,4(x11)
la x14,b
lw x15,0(x14)
lw x16,4(x14)
add x17,x12,x15
sltu x18,x17,x12

add x19,x12,x16
sltu x20,x19,x12

add x21,x18,x19




