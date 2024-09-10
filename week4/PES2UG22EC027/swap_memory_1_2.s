#WAP to swap the content of 2 memory locations if and only if a[0]<a[1]
.data
a:.byte 0x01,0x02
.text
la x1,a
lb x6,0x00(x1)  #a[0]
lb x7,0x01(x1)  #a[1]
bge x6,x7,exit
sb x6,0x01(x1)
     sb x7,0x00(x1)

exit:
    nop