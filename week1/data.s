#Write an Assembly Program for addition of 2 bytes
.data 
a: .byte 0x12,0xfe
.text
la x10,a #loading the base address
lb x11,0(x10) #storing 0x12 in x11
lb x12,1(x10) #storing 0xfe in x12
add x13,x11,x12 #adding x11 and x12 and storing x13
sltu x7,x13,x11  #storing carry in x7
sb x13,2(x10) #storing in datamemory
sb x7,3(x10) 