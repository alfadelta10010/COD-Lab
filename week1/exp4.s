.data
a: .byte 0x02,0x26
.text
la x10,a #loading value
lbu x11,0(x10) #unsigned
lbu x12,1(x10) #unsigned
add x13,x11,x12 #adding
sb x13,2(x10)


#.data
#a: .half 0x0232,0x1126
#.text
#la x10,a #loading value
#lhu x11,0(x10) #unsigned 
#lhu x12,2(x10) #unsigned
#add x13,x11,x12 #adding
#sh x13,4(x10)