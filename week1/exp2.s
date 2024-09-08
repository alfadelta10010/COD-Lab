.data
a: .half 0x8002,0x9126
.text
la x10,a
lh x11,0(x10) #half load of number 1
lh x12,2(x10) #half load iof number 2
add x13,x11,x12 #add the 2 numbers
sh x13,4(x10) #store the half words addition