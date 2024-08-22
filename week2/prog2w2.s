.data 
a: .dword 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0
.text
la x10,a          #putting the address of a in x10    
lw x11,0(x10)     #loading the lower 32 bits of dword1
lw x12,4(x10)     #loading the upper 32 bits of dword1
lw x13,8(x10)     #loading the lower 32 bits of dword2
lw x14,12(x10)    #loading the upper 32 bits of dword2
add x15,x11,x13   #adding lower dw1 and dw2
sltu x16,x15,x11  #checking for carry in the addition of lower dw1,dw2
add x17,x14,x12   #adding upper dw1 and dw2
sltu x19,x17,x14  #checking for carry in the addition of upper dw1,dw2
add x18,x17,x16   #adding the lower carry to the upper result of dw1,dw2
sw x15,16(x10)    #storing the lower result
sw x18,20(x10)    #storing the upper result
sw x19,24(x10)    #storing the carry of the upper result

