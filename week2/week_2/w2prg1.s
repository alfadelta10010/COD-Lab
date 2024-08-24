.data 
a: .half 0xaaaa,0xbbbb,0xcccc,0xdddd,0xeeee,0xffff,0xabab,0xfefe,0xefef,0xcdcd,0x1111   #array of 11 16 bits data
.text
la x10,a 
lh x11,0(x10)  
lh x14,6(x10)
lh x15,8(x10)
lh x16,10(x10)
lh x17,12(x10)
lh x18,14(x10)
lh x19,16(x10)
lh x20,18(x10)
lh x21,20(x10)
add x22,x0,x11 #adding consecutive elements in reg x22
add x22,x22,x12
add x22,x22,x13
add x22,x22,x14
add x22,x22,x15
add x22,x22,x16
add x22,x22,x17
add x22,x22,x18
add x22,x22,x19
add x22,x22,x20
add x22,x22,x21
add x21,x22,x0  #storing the sum in reg x21