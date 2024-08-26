.data
n:.dword 0x1688543287654277, 0x7835967812318924
result:.dword 0, 0 
.text
la x10,n
lw x11,0(x10)
lw x12,4(x10)
lw x13,8(x10)
lw x14,12(x10)
add x15,x11,x13
sltu x16,x15,x11
add x17,x12,x14
sltu x18,x17,x12
add x17,x17,x16
la x20,result
sw x15,0(x20)
sw x17,4(x20)
sw x18,8(x20)