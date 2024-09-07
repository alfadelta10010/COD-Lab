.data
a: .half 0x6641,0x0008

.text
la x10,a ##storindg a address in x10
lh x11,0(x10) ##word form in memory register as bytes(0 to 1st position)
lh x12,2(x10) ##word form in memory register as bytes(2nd to 3rd position)
add x13,x11,x12 ##adding of x11 and x12
sh x13 4(x10) ##storing added number in memory
