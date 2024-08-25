.data
a: .byte 0x52,0x33

.text
la x10,a ##storindg a address in x10
lb x11,0(x10) ##word form in memory register as bytes(0th position)
lb x12,1(x10) ##word form in memory register as bytes(1st position)
add x13,x11,x12 ##adding of x11 and x12
sb x13 2(x10) ##storing the added number in memory1