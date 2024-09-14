.data
n1: .dword 0xffffffffffffffff
n2: .dword 0xffffffffffffffff
.text
la x1, n1
lw x2, 0x00(x1)               
lw x3, 0x04(x1)

la x4,n2
lw x5,0x00(x4)
lw x6,0x04(x4)
add x7,x3,x6 #upper bit
 
sltu x9,x8,x5

add x8,x2,x5 #lower bit
sltu x10,x8,x5
add x11,x7,x10
sw x8,0x08(x4)
sw x11,0x0c(x4)