.data
a: .byte 0x12,0x22
.text
#load address
la x10,a
#load num in x9,x8
lb x9,0(x10) 
lb x8,1(x10) 
#add nums
add x6,x9,x8 
sltu x7,x6,x8  #carry
#store in data memory
sb x6,2(x10)
sb x7,3(x10)