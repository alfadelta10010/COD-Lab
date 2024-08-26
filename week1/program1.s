.data
a: .word 0x12340102,0x98765433

.text
la x10,a ##storindg a address in x10
lw x11,0(x10) ##word form in memory register as bytes(0 to 3rd position)
lw x12,4(x10) ##word form in memory register as bytes(4th to 7th position)
add x13,x11,x12 ##adding of x11 and x12
sw x13 8(x10) ##storing added number in memeory
