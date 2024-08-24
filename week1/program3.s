.data 
a: .byte 0x01,0x08  #a is the reference for the base address, 8bit number
.text                                              
la x10,a                       #load adrdress to base address of variable a into x10
lw x11,0(x10)                  #load word ,x11 is the destination with offset 0
lw x12,1(x10)                  #lload word ,x12 is the destnination with offset 4
add x13,x11,x12                #adding word in x11 and x12 and storingit in x13
sw x13,2(x10)                  #storing byte in x13