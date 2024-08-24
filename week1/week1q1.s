.data
n:.word 0xFFFFFFFF,0xFFFFFFFF
.text
la x1,n #loading n to x1
lw x11,0(x1) #loading n[1] to x11
lw x12,4(x1) ##loading n[2] to x12


add x13,x11,x12 #x13=x11+x12
sltu x16,x13,x11 #x16=x13+x11

sw x16,12(x1)
sw x13,8(x1)