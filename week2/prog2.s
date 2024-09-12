.data
n1:.dword 0xFFFFFFFFFFFFFFFF
n2:.dword 0xFFFFFFFFFFFFFFFF
.text 
la x8,n1 #putting the address of n1 in x8 
la x9,n2 #putting the address of n2 in x9
lw x11,0(x8) #loading lower 32 bits of n1
lw x12,4(x8) #loading upper 32 bits of n1
lw x13,0(x9) #loading lower 32 bits of n2
lw x14,4(x9) #loading upper 32 bits of n2
add x15,x11,x13 #adding lower n1 and n2
sltu x16,x15,x11 #check for carry(lower)
add x17,x12,x14 #adding upper n1 and n2
sltu x19,x14,x17 #check for carry(upper)
add x18,x16,x17 #add lower carry to upper addition
