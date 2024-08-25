#assembly program for addition of 2 half-words

.data 
a: .half 0x00F3,0x0053,0

.text
la x10,a
lh x11,0(x10)
lh x12,2(x10)
add x13,x12,x11
sh x13,4(x10)
