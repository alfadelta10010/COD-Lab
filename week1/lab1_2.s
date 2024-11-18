.data
n:.dword 0x9379316688748371, 0x8660282002
result:.dword 0, 0 
.text
la x4,n
lw x10,0(x4)
lw x11,4(x4)
lw x12,8(x4)
lw x13,12(x4)
add x14,x10,x12
sltu x15,x14,x10
add x16,x11,x13
sltu x17,x16,x11
add x16,x16,x15
la x21,result
sw x14,0(x21)
sw x16,4(x21)
sw x17,8(x21)
