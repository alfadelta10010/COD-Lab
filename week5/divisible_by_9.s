.data
a: .byte 0x11,0x26,0x45,0x1C,0x2D
b: .byte 0x09
c: .byte 0x0
.text
la x10,a
la x11,b
la x12,c
lb x9,0(x11)
addi x18,x0,5    #counter of array size
addi x20,x0,0    #x20=0 if no number divisible by 9
loop:
    lb x8,0(x10)
    rem x19,x8,x9    #divide number by 9 and check remainder
    bne x19,x0,next
    addi x20,x0,1    #x20=1 if number divisible by 9
    beq x0,x0,exit
next:
    addi x10,x10,1    #check next number in array
    addi x18,x18,-1    #decrement counter
    bne x18,x0,loop
exit:
    nop       