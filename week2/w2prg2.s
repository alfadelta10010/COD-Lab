# Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

.data
a: .dword 0x1234fffffff1234a
b: .dword 0xffffff5234ffffff
.text
la x10,a
la x11,b
lw x12,0(x10) #loading into 2 seperate variables
lw x13,4(x10)
lw x14,0(x11)
lw x15,4(x11)
add x16,x14,x12 #lsb
sltu x18,x16,x14
add x17,x15,x13 #msb
sltu x19,x17,x15
add x20,x17,x18 #adding lsb and msb
