.data
n:.byte 0x12,0x34
.text
la x1,n  # loading n to x11
lb x11,0(x1)  # n[0]=x11
lb x12,1(x1)  # n[1]=x12


add x13,x11,x12 #adding x11 and x12 and store it in x13
sltu x16,x13,x11 #compare the content of 2 reg

sb x13,3(x1) 
sb x16,4(x1)