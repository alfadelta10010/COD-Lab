.data
    sword: .word -2349875           
    usword: .word  2349875
    shalf: .half -1234           
    ushalf: .half  1234             
    sbyte: .byte -12               
    usbyte: .byte  12               

.text
la x10,sword
la x11,usword
la x12,shalf
la x13,ushalf
la x14,sbyte
la x15,usbyte

lw x16,0(x10)
lw x17,0(x11)
lh x18,0(x12)
lhu x19,0(x13)
lb x20,0(x14)
lbu x21,0(x15)

sw x16,4(x16)
sw x17,4(x17)
sh x18,2(x18)
sh x19,2(x19)
sb x20,1(x20)
sb x21,1(x21)



