.data
a: .half 0x6641,0x0008

.text
la x10,a ##storindg a address in x10
lh x12,0(x10) ##word form in memory register as bytes(0 to 1st position)
lh x13,2(x10) ##word form in memory register as bytes(2nd to 3rd position)
add x14,x12,x13 ##adding of x11 and x12
sh x14 4(x10) ##storing inn adress 4(x10)